//
//  ESClient.m
//  EService
//
//  Created by msi on 2023/8/1.
//

#import "ESClient.h"
#import <EndpointSecurity/EndpointSecurity.h>
#import "Convert.h"


@interface ESClient ()

@end

@implementation ESClient {
    es_client_t *client;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        __weak typeof(self)weakSelf = self;
        es_new_client_result_t res = es_new_client(&client, ^(es_client_t * _Nonnull clt, const es_message_t * _Nonnull msg) {
            [weakSelf handle:clt msg:msg];
        });
        if (res != ES_NEW_CLIENT_RESULT_SUCCESS) {
            @throw [NSException exceptionWithName:@"es_new_client failed" reason:[NSString stringWithFormat:@"code:%d", res] userInfo:@{
                @"file":[NSString stringWithCString:__FILE__ encoding:NSUTF8StringEncoding],
                @"func":[NSString stringWithCString:__FUNCTION__ encoding:NSUTF8StringEncoding],
                @"line":@(__LINE__)
            }];
        }
    }
    return self;
}

- (void)handle:(es_client_t *)clt msg:(const es_message_t *)msg {
    if (self.messageBlk) {
        self.messageBlk(self, msg);
    }
}

// functions
- (es_return_t)subscribe:(NSArray *)events {
    es_event_type_t * _events = NULL;
    uint32_t event_count = 0;
    [Convert events:events toPointer:&_events count:&event_count];
    return es_subscribe(client, _events, event_count);
}

- (es_return_t)unsubscribe:(NSArray *)events {
    es_event_type_t * _events = NULL;
    uint32_t event_count = 0;
    [Convert events:events toPointer:&_events count:&event_count];
    return es_unsubscribe(client, _events, event_count);
}

- (es_return_t)unsubscribeAll {
    return es_unsubscribe_all(client);
}

- (es_return_t)subscriptions:(NSArray **)subScriptions {
    size_t count = 0;
    es_event_type_t *_subScriptions = NULL;
    es_return_t rc = es_subscriptions(client, &count, &_subScriptions);
    [Convert events:_subScriptions count:(uint32_t)count toArray:subScriptions];
    return rc;
}

- (es_respond_result_t)respondSuthResult:(const es_message_t *)message result:(es_auth_result_t)result cache:(BOOL)cache {
    return es_respond_auth_result(client, message, result, cache);
}

- (es_respond_result_t)respondFlagsResult:(const es_message_t *)message authorizedFlags:(uint32_t)authorizedFlags cache:(BOOL)cache {
    return es_respond_flags_result(client, message, authorizedFlags, cache);
}

- (es_return_t)muteProcess:(const audit_token_t *)audit_token {
    return es_mute_process(client, audit_token);
}


- (es_return_t)mute_process_events:(NSValue *)audit_token events:(NSArray *)events API_AVAILABLE(macosx(10.12)) {
    audit_token_t _audit_token;
    [audit_token getValue:&_audit_token];
    es_event_type_t *_events = nil;
    size_t event_count = 0;
    [Convert events:events toPointer:&_events count:(uint32_t *)&event_count];
    return es_mute_process_events(client, &_audit_token, _events, event_count);
}

- (es_return_t)unmute_process:(const audit_token_t *)audit_token {
    return es_unmute_process(client, audit_token);
}

- (es_return_t)unmute_process_events:(const audit_token_t *)audit_token events:(NSArray *)events API_AVAILABLE(macosx(10.12)) {
    es_event_type_t *_events = nil;
    size_t event_count = 0;
    [Convert events:events toPointer:&_events count:(uint32_t *)&event_count];
    return es_unmute_process_events(client, audit_token, _events, event_count);
}

- (es_return_t)muted_process:(NSArray **)audit_tokens {
    size_t count = 0;
    audit_token_t *_audit_tokens = NULL;
    es_return_t rc = es_muted_processes(client, &count, &_audit_tokens);
    NSMutableArray *marray = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        [marray addObject:[NSValue valueWithBytes:_audit_tokens+i objCType:@encode(audit_token_t)]];
    }
    *audit_tokens = [NSArray arrayWithArray:marray];
    return rc;
}

- (es_return_t)mutedProcessesEvents:(NSArray **)mutedProcesses {
    es_muted_processes_t *_muted_processes = NULL;
    es_return_t rc = es_muted_processes_events(client, &_muted_processes);
    
}

OS_EXPORT
API_AVAILABLE(macos(12.0)) API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_muted_processes_events(es_client_t * _Nonnull client, es_muted_processes_t * _Nullable * _Nonnull muted_processes);

/**
 * @brief Delete a set of muted processes obtained from `es_muted_processes_events`, freeing resources.
 *
 * @param muted_processes A set of muted processes to delete.
 *
 * @see es_muted_processes_all_events
 */
OS_EXPORT
API_AVAILABLE(macos(12.0)) API_UNAVAILABLE(ios, tvos, watchos)
void
es_release_muted_processes(es_muted_processes_t * _Nonnull muted_processes);

/**
 * @brief Suppress all events matching a path.
 *
 * @param client The es_client_t for which the path will be muted.
 * @param path The path to mute.
 * @param type Describes the type of the `path` parameter.
 *
 * @return es_return_t A value indicating whether or not the path was successfully muted.
 *
 * @note Path-based muting applies to the real and potentially firmlinked path
 *       of a file as seen by VFS, and as available from fcntl(2) F_GETPATH.
 *       No special provisions are made for files with multiple ("hard") links,
 *       or for symbolic links.
 *       In particular, when using inverted target path muting to monitor a
 *       particular path for writing, you will need to check if the file(s) of
 *       interest are also reachable via additional hard links outside of the
 *       paths you are observing.
 *
 * @see es_mute_path_events
 * @discussion When using the path types ES_MUTE_PATH_TYPE_TARGET_PREFIX and ES_MUTE_PATH_TYPE_TARGET_LITERAL Not all events are supported.
 * Furthermore the interpretation of target path is contextual.
 * For events with more than one target path (such as exchangedata) the behavior depends on the mute inversion state
 *   Under normal muting the event is suppressed only if ALL paths are muted
 *   When target path muting is inverted the event is selected if ANY target path is muted
 * For example a rename will be suppressed if and only if both the source path and destination path are muted.
 * Supported events are listed below. For each event the target path is defined as:
 *
 * EXEC: The file being executed
 * OPEN: The file being opened
 * MMAP: The file being memory mapped
 * RENAME: Both the source and destination path.
 * SIGNAL: The path of the process being signalled
 * UNLINK: The file being unlinked
 * CLOSE: The file being closed
 * CREATE: The path to the file that will be created or replaced
 * GET_TASK: The path of the process for which the task port is being retrieved
 * LINK: Both the source and destination path
 * SETATTRLIST: The file for which the attributes are being set
 * SETEXTATTR: The file for which the extended attributes are being set
 * SETFLAGS: The file for which flags are being set
 * SETMODE: The file for which the mode is being set
 * SETOWNER: The file for which the owner is being set
 * WRITE: The file being written to
 * READLINK: The symbolic link being resolved
 * TRUNCATE: The file being truncated
 * CHDIR: The new working directory
 * GETATTRLIST: The file for which the attribute list is being retrieved
 * STAT: The file for which the stat is being retrieved
 * ACCESS: The file for which access is being tested
 * CHROOT: The file which will become the new root
 * UTIMES: The file for which times are being set
 * CLONE: Both the source file and target path
 * FCNTL: The file under file control
 * GETEXTATTR The file for which extended attributes are being retrieved
 * LISTEXTATTR The file for which extended attributes are being listed
 * READDIR The directory for whose contents will be read
 * DELETEEXTATTR The file for which extended attribues will be deleted
 * DUP: The file being duplicated
 * UIPC_BIND: The path to the unix socket that will be created
 * UIPC_CONNECT: The file that the unix socket being connected is bound to
 * EXCHANGEDATA: The path of both file1 and file2
 * SETACL: The file for which ACLs are being set
 * PROC_CHECK: The path of the process against which access is being checked
 * SEARCHFS: The path of the volume which will be searched
 * PROC_SUSPEND_RESUME: The path of the process being suspended or resumed
 * GET_TASK_NAME: The path of the process for which the task name port will be retrieved
 * TRACE: The path of the process that will be attached to
 * REMOTE_THREAD_CREATE: The path of the process in which the new thread is created
 * GET_TASK_READ: The path of the process for which the task read port will be retrieved
 * GET_TASK_INSPECT: The path of the process for which the task inspect port will be retrieved
 * COPYFILE: The path to the source file and the path to either the new file to be created or the existing file to be overwritten
 */
OS_EXPORT
API_AVAILABLE(macos(12.0)) API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_mute_path(es_client_t * _Nonnull client, const char * _Nonnull path, es_mute_path_type_t type);

/**
 * @brief Suppress a subset of events matching a path.
 *
 * @param client The es_client_t for which the path will be muted.
 * @param path The path to mute.
 * @param type Describes the type of the `path` parameter, either a prefix path or literal path.
 * @param events Array of event types for which the path should be muted.
 * @param event_count The number of items in the `events` array.
 *
 * @return es_return_t A value indicating whether or not the path was successfully muted.
 *
 * @see es_mute_path
 * @discussion when using ES_MUTE_PATH_TYPE_TARGET_PREFIX and ES_MUTE_PATH_TYPE_TARGET_LITERAL not all events are supported.
 * Target muting a path for an event type that does not support target muting is a no-op.
 * If at least one event type was muted for a target path then ES_RETURN_SUCCESS is returned.
 * If all specified event types do not support target muting ES_RETURN_ERROR is returned.
 * See es_mute_path for the list of events that support target path muting.
 */
OS_EXPORT
API_AVAILABLE(macos(12.0)) API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_mute_path_events(es_client_t * _Nonnull client, const char * _Nonnull path, es_mute_path_type_t type, const es_event_type_t * _Nonnull events, size_t event_count);

/**
 * Suppress events matching a path prefix
 *
 * @deprecated Please use `es_mute_path` or `es_mute_path_events`
 *
 * @param client The client for which events will be suppressed
 * @param path_prefix The path against which suppressed executables must prefix match
 * @return es_return_t indicating success or error
 */
OS_EXPORT
API_DEPRECATED("Please use es_mute_path or es_mute_path_events.", macos(10.15, 12.0))
API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_mute_path_prefix(es_client_t * _Nonnull client, const char * _Nonnull path_prefix);

/**
 * Suppress events matching a path literal
 *
 * @deprecated Please use `es_mute_path` or `es_mute_path_events`
 *
 * @param client The client for which events will be suppressed
 * @param path_literal The path against which suppressed executables must match exactly
 * @return es_return_t indicating success or error
 *
 * @see es_mute_path
 * @see es_mute_path_events
 */
OS_EXPORT
API_DEPRECATED("Please use es_mute_path or es_mute_path_events.", macos(10.15, 12.0))
API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_mute_path_literal(es_client_t * _Nonnull client, const char * _Nonnull path_literal);

/**
 * Unmute all paths
 * @param client The client for which all currently muted paths will be unmuted
 * @return es_return_t indicating success or error
 *
 * @note Only unmutes executable paths. To unmute target paths see: `es_unmute_all_target_paths`.
 */
OS_EXPORT
API_AVAILABLE(macos(10.15)) API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_unmute_all_paths(es_client_t * _Nonnull client);

/**
 * Unmute all target paths
 * @param client The client for which all currently muted target paths will be unmuted
 * @return es_return_t indicating success or error
 */
OS_EXPORT
API_AVAILABLE(macos(13.0)) API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_unmute_all_target_paths(es_client_t * _Nonnull client);

/**
 * @brief Unmute a path for all event types.
 *
 * @param client The es_client_t for which the path will be unmuted.
 * @param path The path to unmute.
 * @param type Describes the type of the `path` parameter, either a prefix path or literal path.
 *
 * @return es_return_t A value indicating whether or not the path was successfully unmuted.
 *
 * @note Muting and unmuting operations logically work on a set of (path_type, path, es_event_type_t) tuples
 * Subtracting an element from the set that is not present has no effect
 * For example if `(literal, /foo/bar/, *)` is muted
 * Then `(prefix, /foo, *)` is unmuted the mute set is still:
 * `(literal, /foo/bar, *)`.
 * Prefixes only apply to mute evaluation not to modifications of the mute set.
 *
 * @see es_unmute_path_events
 */
OS_EXPORT
API_AVAILABLE(macos(12.0)) API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_unmute_path(es_client_t * _Nonnull client, const char * _Nonnull path, es_mute_path_type_t type);

/**
 * @brief Unmute a path for a subset of event types.
 *
 * @param client The es_client_t for which the path will be unmuted.
 * @param path The path to unmute.
 * @param type Describes the type of the `path` parameter, either a prefix path or literal path.
 * @param events Array of event types for which the path should be unmuted.
 * @param event_count The number of items in the `events` array.
 *
 * @return es_return_t A value indicating whether or not the path was successfully unmuted.
 *
 * @see es_unmute_path
 */
OS_EXPORT
API_AVAILABLE(macos(12.0)) API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_unmute_path_events(es_client_t * _Nonnull client, const char * _Nonnull path, es_mute_path_type_t type,
        const es_event_type_t * _Nonnull events, size_t event_count);

/**
 * @brief Retrieve a list of all muted paths.
 *
 * @param client The es_client_t for which the muted paths will be retrieved.
 * @param muted_paths OUT param the will contain newly created memory describing the set of
 *        muted paths. This memory must be deleted using `es_release_muted_paths`.
 *
 * @return es_return_t A value indicating whether or not the list of muted paths were successfully retrieved.
 *
 * @see es_release_muted_paths
 */
OS_EXPORT
API_AVAILABLE(macos(12.0)) API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_muted_paths_events(es_client_t * _Nonnull client, es_muted_paths_t * _Nonnull * _Nullable muted_paths);

/**
 * @brief Delete a set of muted paths obtained from `es_muted_paths_events`, freeing resources.
 *
 * @param muted_paths A set of muted paths to delete.
 *
 * @see es_muted_paths_events
 */
OS_EXPORT
API_AVAILABLE(macos(12.0)) API_UNAVAILABLE(ios, tvos, watchos)
void
es_release_muted_paths(es_muted_paths_t * _Nonnull muted_paths);

/*
 * @brief Invert the mute state of a given mute dimension
 *
 * @param client The es_client_t for which muting will be inverted
 * @param mute_type The type of muting to invert (process, path, or target path).
 *
 * @return es_return_t A value indicating whether or not muting was inverted
 *
 * @discussion Inverting muting can be used to create a client that monitors a specific process(es) or set of directories
 * When muting is inverted it still combines with other types of muting using OR, and inversion happens first.
 * Consider a series of inputs for a system where pid 12 is muted, process muting is inverted, and /bin/bash is also path muted:
 *   (12, /bin/foo)  MATCHING (true, false)  INVERSION (false, false) || false → event is not suppressed
 *   (13, /bin/foo)  MATCHING (false, false) INVERSION (true, false)  || true  → event is suppressed
 *   (12, /bin/bash) MATCHING (true, true)   INVERSION (false, true)  || true  → event is suppressed
 *
 *   Note that because muting is combined using OR even when pid 12 is being selected using inverted process muting,
 *   (12, /bin/bash) is still suppressed because the path is muted
 *
 * The relationship between all three types of muting (proc,path,target-path) and how each can be inverted is complex.
 * The below flow chart explains in detail exactly how muting is applied in the kernel:
 *
 *  ┌──────────────────┐
 *  │      Event       │
 *  └──────────────────┘
 *            │
 *            ▼
 *  ┌──────────────────┐                                           ┌──────────────────┐
 *  │  Is Subscribed?  │────No────────────────────────────────────▶│  Suppress Event  │
 *  └──────────────────┘                                           └──────────────────┘
 *            │                                                              ▲
 *         Yes│                                                              │
 *            ▼                ┌────────────────┐                            │
 *  ┌──────────────────┐       │ Is Proc Muting │                            │
 *  │  Is Proc Muted?  ├─Yes──▶│   Inverted?    ├──No───────────────────────▶│
 *  └─────────┬────────┘       └────────────────┘                            │
 *            │                         │                                    │
 *          No│                        Yes                                   │
 *            ▼                         │                                    │
 *  ┌──────────────────┐                │                                    │
 *  │  Is Proc Muting  │                │                                    │
 *  │    Inverted?     │──Yes───────────)───────────────────────────────────▶│
 *  └─────────┬────────┘                │                                    │
 *            │                         │                                    │
 *          No│◀────────────────────────┘                                    │
 *            ▼                 ┌───────────────┐                            │
 *  ┌──────────────────┐        │Is Path Muting │                            │
 *  │  Is Path Muted?  │──Yes──▶│   Inverted?   ├──No───────────────────────▶│
 *  └─────────┬────────┘        └───────┬───────┘                            │
 *            │                         │                                    │
 *          No│                        Yes                                   │
 *            ▼                         │                                    │
 *  ┌──────────────────┐                │                                    │
 *  │  Is Path Muting  │                │                                    │
 *  │    Inverted?     │──Yes───────────)───────────────────────────────────▶│
 *  └─────────┬────────┘                │                                    │
 *            │                         │                                    │
 *          No│◀────────────────────────┘                                    │
 *            ▼                                                              │
 *  ┌──────────────────┐                                                     │
 *  │  Event Supports  │      ┌───────────────┐      ┌─────────────────┐     │
 *  │   Target Path    │─Yes─▶│Is Target Path ├─Yes─▶│ Are ANY target  ├─No─▶│
 *  │     Muting?      │      │Muting Inverted│      │  paths muted?   │     │
 *  └──────────────────┘      └──────┬────────┘      └───────┬─────────┘     │
 *            │                      │                       │               │
 *          No│                    No│                      Yes              │
 *            │                      ▼                       │               │
 *            │              ┌────────────────┐              │               │
 *            │              │ Are ALL target │              │               │
 *            │              │  paths muted?  ├─Yes──────────)───────────────┘
 *            │              └───────┬────────┘              │
 *            │                      │                       │
 *            │                    No│                       │
 *            │◀─────────────────────┘                       │
 *            │                                              │
 *            │◀─────────────────────────────────────────────┘
 *            │
 *            ▼
 *  ┌──────────────────┐
 *  │  Deliver Event   │
 *  └──────────────────┘
 *
 * @note Mute inversion does NOT clear the default mute set.
 * When a new `es_client_t` is created certain paths are muted by default.
 * This is known as "the default mute set".
 * The default mute set exists to protect ES clients from deadlocks, and to prevent watchdog timeout panics.
 * Creating a new client and calling `es_invert_muting(c, ES_MUTE_INVERSION_TYPE_PATH)` will result in the default mute set being selected rather than muted.
 * In most cases this is unintended.
   * Consider calling `es_unmute_all_paths` before inverting process path muting.
     * Consider calling `es_unmute_all_target_paths` before inverting target path muting.
 * Make sure the client has no auth subscriptions before doing so.
 * If desired the default mute set can be saved using `es_muted_paths_events` and then restored after inverting again.
 *
 */
OS_EXPORT
API_AVAILABLE(macos(13.0)) API_UNAVAILABLE(ios, tvos, watchos)
es_return_t
es_invert_muting(es_client_t * _Nonnull client, es_mute_inversion_type_t mute_type);

/*
 * @brief Query mute inversion state
 *
 * @param client The es_client_t for which mute inversion state is being queried.
 * @param mute_type The type of muting to query (process, path, or target path).
 *
 * @return es_mute_inverted_return_t Indicates if muting was inverted, not inverted, or if an error occurred.
 */
OS_EXPORT
API_AVAILABLE(macos(13.0)) API_UNAVAILABLE(ios, tvos, watchos)
es_mute_inverted_return_t
es_muting_inverted(es_client_t * _Nonnull client, es_mute_inversion_type_t mute_type);

/**
 * Clear all cached results for all clients.
 * @param client that will perform the request
 * @return es_clear_cache_result_t value indicating success or an error
 * @discussion This functions clears the shared cache for all ES clients and is hence rate limited.
 *             If es_clear_cache is called too frequently it will return ES_CLEAR_CACHE_RESULT_ERR_THROTTLE
 *             It is permissible to pass any valid es_client_t object created by `es_new_client`
 */
OS_EXPORT
API_AVAILABLE(macos(10.15)) API_UNAVAILABLE(ios, tvos, watchos)
es_clear_cache_result_t
es_clear_cache(es_client_t * _Nonnull client);

@end
