

public struct es_event_id_t {

    public init()

    public init(reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

public struct es_action_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_ACTION_TYPE_AUTH: es_action_type_t { get }
public var ES_ACTION_TYPE_NOTIFY: es_action_type_t { get }

public struct es_set_or_clear_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_SET: es_set_or_clear_t { get }
public var ES_CLEAR: es_set_or_clear_t { get }

/**
 * @brief This enum describes the type of the es_event_proc_check_t event that are currently used
 *
 * @note ES_PROC_CHECK_TYPE_KERNMSGBUF, ES_PROC_CHECK_TYPE_TERMINATE and
 * ES_PROC_CHECK_TYPE_UDATA_INFO are deprecated and no proc_check messages will be generated
 * for the corresponding proc_info call numbers.
 * The terminate callnum is covered by the signal event.
 */
public struct es_proc_check_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_PROC_CHECK_TYPE_LISTPIDS: es_proc_check_type_t { get }
public var ES_PROC_CHECK_TYPE_PIDINFO: es_proc_check_type_t { get }
public var ES_PROC_CHECK_TYPE_PIDFDINFO: es_proc_check_type_t { get }
public var ES_PROC_CHECK_TYPE_KERNMSGBUF: es_proc_check_type_t { get } // deprecated, not generated
public var ES_PROC_CHECK_TYPE_SETCONTROL: es_proc_check_type_t { get }
public var ES_PROC_CHECK_TYPE_PIDFILEPORTINFO: es_proc_check_type_t { get }
public var ES_PROC_CHECK_TYPE_TERMINATE: es_proc_check_type_t { get } // deprecated, not generated
public var ES_PROC_CHECK_TYPE_DIRTYCONTROL: es_proc_check_type_t { get }
public var ES_PROC_CHECK_TYPE_PIDRUSAGE: es_proc_check_type_t { get }
public var ES_PROC_CHECK_TYPE_UDATA_INFO: es_proc_check_type_t { get } // deprecated, not generated

/**
 * @brief This enum describes the types of authentications that
 * ES_EVENT_TYPE_NOTIFY_AUTHENTICATION can describe.
 */
public struct es_authentication_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_AUTHENTICATION_TYPE_OD: es_authentication_type_t { get }
public var ES_AUTHENTICATION_TYPE_TOUCHID: es_authentication_type_t { get }
public var ES_AUTHENTICATION_TYPE_TOKEN: es_authentication_type_t { get }
public var ES_AUTHENTICATION_TYPE_AUTO_UNLOCK: es_authentication_type_t { get }

// ES_AUTHENTICATION_TYPE_LAST is not a valid type of authentication
// but is a convenience value to operate on the range of defined
// authentication types.
public var ES_AUTHENTICATION_TYPE_LAST: es_authentication_type_t { get }

/**
 * The valid event types recognized by EndpointSecurity
 *
 * @discussion When a program subscribes to and receives an AUTH-related event, it must respond
 * with an appropriate result indicating whether or not the operation should be allowed to continue.
 * The valid API options are:
 * - es_respond_auth_result
 * - es_respond_flags_result
 *
 * Currently, only ES_EVENT_TYPE_AUTH_OPEN must use es_respond_flags_result. All other AUTH events
 * must use es_respond_auth_result.
 */
public struct es_event_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}

// The following events are available beginning in macOS 10.15
public var ES_EVENT_TYPE_AUTH_EXEC: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_OPEN: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_KEXTLOAD: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_MMAP: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_MPROTECT: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_MOUNT: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_RENAME: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_SIGNAL: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_UNLINK: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_EXEC: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_OPEN: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_FORK: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_CLOSE: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_CREATE: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_EXIT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_GET_TASK: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_KEXTLOAD: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_LINK: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_MMAP: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_MPROTECT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_MOUNT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_UNMOUNT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_RENAME: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETATTRLIST: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETEXTATTR: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETFLAGS: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETMODE: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETOWNER: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SIGNAL: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_UNLINK: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_WRITE: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_READLINK: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_READLINK: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_TRUNCATE: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_TRUNCATE: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_LINK: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_LOOKUP: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_CREATE: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_SETATTRLIST: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_SETEXTATTR: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_SETFLAGS: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_SETMODE: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_SETOWNER: es_event_type_t { get }
// The following events are available beginning in macOS 10.15.1
public var ES_EVENT_TYPE_AUTH_CHDIR: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_CHDIR: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_GETATTRLIST: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_GETATTRLIST: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_STAT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_ACCESS: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_CHROOT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_CHROOT: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_UTIMES: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_UTIMES: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_CLONE: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_CLONE: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_FCNTL: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_GETEXTATTR: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_GETEXTATTR: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_LISTEXTATTR: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_LISTEXTATTR: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_READDIR: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_READDIR: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_DELETEEXTATTR: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_FSGETPATH: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_FSGETPATH: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_DUP: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_SETTIME: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETTIME: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_UIPC_BIND: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_UIPC_BIND: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_UIPC_CONNECT: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_EXCHANGEDATA: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_SETACL: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETACL: es_event_type_t { get }
// The following events are available beginning in macOS 10.15.4
public var ES_EVENT_TYPE_NOTIFY_PTY_GRANT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_PTY_CLOSE: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_PROC_CHECK: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_PROC_CHECK: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_GET_TASK: es_event_type_t { get }
// The following events are available beginning in macOS 11.0
public var ES_EVENT_TYPE_AUTH_SEARCHFS: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SEARCHFS: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_FCNTL: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_IOKIT_OPEN: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_TRACE: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_REMOUNT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_REMOUNT: es_event_type_t { get }
// The following events are available beginning in macOS 11.3
public var ES_EVENT_TYPE_AUTH_GET_TASK_READ: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_GET_TASK_READ: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT: es_event_type_t { get }
// The following events are available beginning in macOS 12.0
public var ES_EVENT_TYPE_NOTIFY_SETUID: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETGID: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETEUID: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETEGID: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETREUID: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SETREGID: es_event_type_t { get }
public var ES_EVENT_TYPE_AUTH_COPYFILE: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_COPYFILE: es_event_type_t { get }
// The following events are available beginning in macOS 13.0
public var ES_EVENT_TYPE_NOTIFY_AUTHENTICATION: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD: es_event_type_t { get }
public var ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE: es_event_type_t { get }
// ES_EVENT_TYPE_LAST is not a valid event type but a convenience
// value for operating on the range of defined event types.
// This value may change between releases and was available
// beginning in macOS 10.15
public var ES_EVENT_TYPE_LAST: es_event_type_t { get }

/**
 * @brief Valid authorization values to be used when responding to a es_message_t auth event
 */
public struct es_auth_result_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}

/// The event is authorized and should be allowed to continue
public var ES_AUTH_RESULT_ALLOW: es_auth_result_t { get }
/// The event is not authorized and should be blocked
public var ES_AUTH_RESULT_DENY: es_auth_result_t { get }

/**
 * @brief Valid values for the result_type of es_result_t to indicate the appropriate union member to use
 */
public struct es_result_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}

/// The result is an auth result
public var ES_RESULT_TYPE_AUTH: es_result_type_t { get }
/// The result is a flags result
public var ES_RESULT_TYPE_FLAGS: es_result_type_t { get }

/**
 @brief Return value for functions that can only fail in one way
 */
public struct es_return_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_RETURN_SUCCESS: es_return_t { get }
public var ES_RETURN_ERROR: es_return_t { get }

/**
 @brief Error conditions for responding to a message
 */
public struct es_respond_result_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_RESPOND_RESULT_SUCCESS: es_respond_result_t { get }

///One or more invalid arguments were provided
public var ES_RESPOND_RESULT_ERR_INVALID_ARGUMENT: es_respond_result_t { get }
///Communication with the ES subsystem failed
public var ES_RESPOND_RESULT_ERR_INTERNAL: es_respond_result_t { get }
///The message being responded to could not be found
public var ES_RESPOND_RESULT_NOT_FOUND: es_respond_result_t { get }
///The provided message has been responded to more than once
public var ES_RESPOND_RESULT_ERR_DUPLICATE_RESPONSE: es_respond_result_t { get }
///Either an inappropriate response API was used for the event type (ensure using proper
    ///es_respond_auth_result or es_respond_flags_result function) or the event is notification only.
public var ES_RESPOND_RESULT_ERR_EVENT_TYPE: es_respond_result_t { get }

/**
 @brief Error conditions for creating a new client
 */
public struct es_new_client_result_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_NEW_CLIENT_RESULT_SUCCESS: es_new_client_result_t { get }

/// One or more invalid arguments were provided.
public var ES_NEW_CLIENT_RESULT_ERR_INVALID_ARGUMENT: es_new_client_result_t { get }
/// Communication with the ES subsystem failed, or other error condition.
public var ES_NEW_CLIENT_RESULT_ERR_INTERNAL: es_new_client_result_t { get }
/// The caller is not properly entitled to connect.
public var ES_NEW_CLIENT_RESULT_ERR_NOT_ENTITLED: es_new_client_result_t { get }
/// The caller lacks Transparency, Consent, and Control (TCC) approval from the user.
public var ES_NEW_CLIENT_RESULT_ERR_NOT_PERMITTED: es_new_client_result_t { get }
/// The caller is not running as root.
public var ES_NEW_CLIENT_RESULT_ERR_NOT_PRIVILEGED: es_new_client_result_t { get }
/// The caller has reached the maximum number of allowed simultaneously connected clients.
public var ES_NEW_CLIENT_RESULT_ERR_TOO_MANY_CLIENTS: es_new_client_result_t { get }

/**
 @brief Error conditions for clearing the authorisation caches
 */
public struct es_clear_cache_result_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_CLEAR_CACHE_RESULT_SUCCESS: es_clear_cache_result_t { get }

///Communication with the ES subsystem failed
public var ES_CLEAR_CACHE_RESULT_ERR_INTERNAL: es_clear_cache_result_t { get }
///Rate of calls is too high. Slow down.
public var ES_CLEAR_CACHE_RESULT_ERR_THROTTLE: es_clear_cache_result_t { get }

/**
 * @brief Structure buffer with size
 */
public struct es_token_t {

    public init()

    public init(size: Int, data: UnsafePointer<UInt8>!)

    // Size of the `data` field in bytes
    public var size: Int

    public var data: UnsafePointer<UInt8>!
}

/**
 * @brief Structure for handling strings
 */
public struct es_string_token_t {

    public init()

    public init(length: Int, data: UnsafePointer<CChar>!)

    // Length of the `data` field. Equivalent to strlen().
    public var length: Int

    public var data: UnsafePointer<CChar>!
}

/*
 * @brief Values that will be paired with path strings to describe the type of the path
 */
public struct es_mute_path_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}

/// Value to describe a path prefix
public var ES_MUTE_PATH_TYPE_PREFIX: es_mute_path_type_t { get }
/// Value to describe a path literal
public var ES_MUTE_PATH_TYPE_LITERAL: es_mute_path_type_t { get }
/// Value to describe a target path prefix
public var ES_MUTE_PATH_TYPE_TARGET_PREFIX: es_mute_path_type_t { get }
/// Value to describe a target path literal
public var ES_MUTE_PATH_TYPE_TARGET_LITERAL: es_mute_path_type_t { get }

/*
 * Structure to describe attributes of a muted path.
 *
 * @field type Indicates if the path is a prefix or literal, and what type of muting applies.
 * @field event_count The number of events contained in the `events` array.
 * @field events Array of event types for which the path is muted.
 * @field path The muted path. (Note: es_string_token_t is a char array and length)
 */
public struct es_muted_path_t {

    public init()

    public init(type: es_mute_path_type_t, event_count: Int, events: UnsafePointer<es_event_type_t>!, path: es_string_token_t)

    public var type: es_mute_path_type_t

    public var event_count: Int

    public var events: UnsafePointer<es_event_type_t>!

    public var path: es_string_token_t
}

/*
 * Structure for a set of muted paths.
 *
 * @field count The number of elements in the `paths` array.
 * @field paths Array of muted paths.
 */
public struct es_muted_paths_t {

    public init()

    public init(count: Int, paths: UnsafePointer<es_muted_path_t>!)

    public var count: Int

    public var paths: UnsafePointer<es_muted_path_t>!
}

/*
 * Structure to describe attributes of a muted process.
 *
 * @field token The audit token of a muted process.
 * @field event_count The number of events contained in the `events` array.
 * @field events Array of event types for which the process is muted.
 */
public struct es_muted_process_t {

    public init()

    public init(audit_token: audit_token_t, event_count: Int, events: UnsafePointer<es_event_type_t>!)

    public var audit_token: audit_token_t

    public var event_count: Int

    public var events: UnsafePointer<es_event_type_t>!
}

/*
 * Structure for a set of muted processes.
 *
 * @field count The number of elements in the `processes` array.
 * @field processes Array of muted processes.
 */
public struct es_muted_processes_t {

    public init()

    public init(count: Int, processes: UnsafePointer<es_muted_process_t>!)

    public var count: Int

    public var processes: UnsafePointer<es_muted_process_t>!
}

/*
 * Type of a network address.
 */
public struct es_address_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}

/// No source address available.
public var ES_ADDRESS_TYPE_NONE: es_address_type_t { get }
/// Source address is IPv4.
public var ES_ADDRESS_TYPE_IPV4: es_address_type_t { get }
/// Source address is IPv6.
public var ES_ADDRESS_TYPE_IPV6: es_address_type_t { get }
/// Source address is named UNIX socket.
public var ES_ADDRESS_TYPE_NAMED_SOCKET: es_address_type_t { get }

public struct es_mute_inversion_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_MUTE_INVERSION_TYPE_PROCESS: es_mute_inversion_type_t { get }
public var ES_MUTE_INVERSION_TYPE_PATH: es_mute_inversion_type_t { get }
public var ES_MUTE_INVERSION_TYPE_TARGET_PATH: es_mute_inversion_type_t { get }
public var ES_MUTE_INVERSION_TYPE_LAST: es_mute_inversion_type_t { get }

public struct es_mute_inverted_return_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}

/// The type of muted queried was inverted
public var ES_MUTE_INVERTED: es_mute_inverted_return_t { get }
/// The type of muted queried was not inverted
public var ES_MUTE_NOT_INVERTED: es_mute_inverted_return_t { get }
/// There was an error querying mute inversion state
public var ES_MUTE_INVERTED_ERROR: es_mute_inverted_return_t { get }
/* __ENDPOINT_SECURITY_INDIRECT__ */

/* !__DARWIN_64_BIT_INO_T */

/**
 * The EndpointSecurity subsystem is responsible for creating, populating and
 * delivering these data structures to ES clients.
 */

/**
 * @brief es_file_t provides the stat information and path to a file that relates to a security
 * event. The path may be truncated, which is indicated by the path_truncated flag.
 *
 * @field path Absolute path of the file
 * @field path_truncated Indicates if the path field was truncated
 * @field stat stat of file. See `man 2 stat` for details
 *
 * @note For the FAT family of filesystems the `stat.st_ino` field is set to 999999999 for empty files
 *
 * @discussion For files with a link count greater than 1, the absolute path given may not be the only absolute path that exists, and which hard link the emitted path points to is undefined.
 *
 * Overlong paths are truncated at a maximum length that currently is 16K, though that number is not considered API and may change at any time.
 *
 */
public struct es_file_t {

    public init()

    public init(path: es_string_token_t, path_truncated: Bool, stat: stat)

    public var path: es_string_token_t

    public var path_truncated: Bool

    public var stat: stat
}

/**
 * @brief Information related to a thread.
 *
 * @field thread_id The unique thread ID of the thread.
 */
public struct es_thread_t {

    public init()

    public init(thread_id: UInt64)

    public var thread_id: UInt64
}

/**
 * @brief Information related to a process. This is used both for describing processes that
 * performed an action (e.g. in the case of the `es_message_t` `process` field, or are targets
 * of an action (e.g. for exec events this describes the new process being executed, for signal
 * events this describes the process that will receive the signal).
 *
 * @field audit_token Audit token of the process.
 * @field ppid Parent pid of the process. It is recommended to instead use the parent_audit_token field.
 *        @see parent_audit_token
 * @field original_ppid Original ppid of the process.  This field stays constant even in the event
 *        this process is reparented.
 * @field group_id Process group id the process belongs to.
 * @field session_id Session id the process belongs to.
 * @field codesigning_flags Code signing flags of the process.  The values for these flags can be
 *        found in the include file `cs_blobs.h` (`#include <kern/cs_blobs.h>`).
 * @field is_es_client Indicates this process has the Endpoint Security entitlement.
 * @field cdhash The code directory hash of the code signature associated with this process.
 * @field signing_id The signing id of the code signature associated with this process.
 * @field team_id The team id of the code signature associated with this process.
 * @field executable The executable file that is executing in this process.
 * @field tty The TTY this process is associated with, or NULL if the process does not have an
 *        associated TTY.
 *        Field available only if message version >= 2.
 * @field start_time Process start time, i.e. time of fork creating this process.
 *        Field available only if message version >= 3.
 * @field responsible_audit_token audit token of the process responsible for this process, which
 *        may be the process itself in case there is no responsible process or the responsible
 *        process has already exited.
 *        Field available only if message version >= 4.
 * @field parent_audit_token The audit token of the parent process
 *        Field available only if message version >= 4.
 *
 * @discussion
 * - Values such as PID, UID, GID, etc. can be extracted from audit tokens via API in libbsm.h.
 * - Clients should take caution when processing events where `is_es_client` is true. If multiple ES
 *   clients exist, actions taken by one client could trigger additional actions by the other client,
 *   causing a potentially infinite cycle.
 * - Fields related to code signing in the target `es_process_t` reflect the state of the process
 *   at the time the message is generated.  In the specific case of exec, this is after the exec
 *   completed in the kernel, but before any code in the process has started executing.  At that
 *   point, XNU has validated the signature itself and has verified that the CDHash is correct in
 *   that the hash of all the individual page hashes in the Code Directory matches the signed CDHash,
 *   essentially verifying the signature was not tampered with.  However, individual page hashes are
 *   not verified by XNU until the corresponding pages are paged in once they are accessed while the
 *   binary executes.  It is not until the individual pages are paged in that XNU determines if a
 *   binary has been tampered with and will update the code signing flags accordingly.
 *   EndpointSecurity provides clients the current state of the CS flags in the `codesigning_flags`
 *   member of the `es_process_t` struct.  The CS_VALID bit in the `codesigning_flags` means that
 *   everything the kernel has validated up to that point in time was valid, but not that there has
 *   been a full validation of all the pages in the executable file.  If page content has been
 *   tampered with in the executable, we won't know until that page is paged in.  At that time, the
 *   process will have its CS_VALID bit cleared and, if CS_KILL is set, the process will be killed,
 *   preventing any tampered code from being executed.  CS_KILL is generally set for platform
 *   binaries and for binaries having opted into the hardened runtime.  An ES client wishing to
 *   detect tampered code before it is paged in, for example at exec time, can use the Security
 *   framework to do so, but should be cautious of the potentially significant performance cost.  The
 *   EndpointSecurity subsystem itself has no role in verifying the validity of code signatures.
 */
public struct es_process_t {

    public init(audit_token: audit_token_t, ppid: pid_t, original_ppid: pid_t, group_id: pid_t, session_id: pid_t, codesigning_flags: UInt32, is_platform_binary: Bool, is_es_client: Bool, cdhash: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), signing_id: es_string_token_t, team_id: es_string_token_t, executable: UnsafeMutablePointer<es_file_t>, tty: UnsafeMutablePointer<es_file_t>?, start_time: timeval, responsible_audit_token: audit_token_t, parent_audit_token: audit_token_t)

    public var audit_token: audit_token_t

    public var ppid: pid_t

    public var original_ppid: pid_t

    public var group_id: pid_t

    public var session_id: pid_t

    public var codesigning_flags: UInt32

    public var is_platform_binary: Bool

    public var is_es_client: Bool

    public var cdhash: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

    public var signing_id: es_string_token_t

    public var team_id: es_string_token_t

    public var executable: UnsafeMutablePointer<es_file_t>

    public var tty: UnsafeMutablePointer<es_file_t>? /* field available only if message version >= 2 */

    public var start_time: timeval /* field available only if message version >= 3 */

    public var responsible_audit_token: audit_token_t /* field available only if message version >= 4 */

    public var parent_audit_token: audit_token_t /* field available only if message version >= 4 */
}

/**
 * @brief Describes machine-specific thread state as used by `thread_create_running` and other
 * Mach API functions.
 *
 * @field flavor Indicates the representation of the machine-specific thread state.
 * @field state The machine-specific thread state, equivalent to thread_state_t in Mach APIs.
 *
 * @note The size subfield of the state field is in bytes, NOT natural_t units.  Definitions
 * for working with thread state can be found in the include file `mach/thread_status.h` and
 * corresponding machine-dependent headers.
 */
public struct es_thread_state_t {

    public init()

    public init(flavor: Int32, state: es_token_t)

    public var flavor: Int32

    public var state: es_token_t
}

/**
 * @brief Structure for describing an open file descriptor
 *
 * @field fd File descriptor number
 * @field fdtype File descriptor type, as libproc fdtype
 *
 * Fields available only if fdtype == PROX_FDTYPE_PIPE:
 * @field extra.pipe.pipe_id Unique id of the pipe for correlation with other
 *        file descriptors pointing to the same or other end of the same pipe.
 */
public struct es_fd_t {

    public init()

    public init(fd: Int32, fdtype: UInt32, _ __Anonymous_field2: es_fd_t.__Unnamed_union___Anonymous_field2)

    
    public struct __Unnamed_union___Anonymous_field2 {

        public init(pipe: es_fd_t.__Unnamed_union___Anonymous_field2.__Unnamed_struct_pipe)

        public init()

        public struct __Unnamed_struct_pipe {

            public init()

            public init(pipe_id: UInt64)

            public var pipe_id: UInt64
        }

        public var pipe: es_fd_t.__Unnamed_union___Anonymous_field2.__Unnamed_struct_pipe
    }

    public var fd: Int32

    public var fdtype: UInt32

    public var __Anonymous_field2: es_fd_t.__Unnamed_union___Anonymous_field2

    public var pipe: es_fd_t.__Unnamed_union___Anonymous_field2.__Unnamed_struct_pipe
}

public struct es_btm_item_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_BTM_ITEM_TYPE_USER_ITEM: es_btm_item_type_t { get }
public var ES_BTM_ITEM_TYPE_APP: es_btm_item_type_t { get }
public var ES_BTM_ITEM_TYPE_LOGIN_ITEM: es_btm_item_type_t { get }
public var ES_BTM_ITEM_TYPE_AGENT: es_btm_item_type_t { get }
public var ES_BTM_ITEM_TYPE_DAEMON: es_btm_item_type_t { get }

/**
 * @brief Structure describing a BTM launch item
 *
 * @field item_type             Type of launch item.
 * @field legacy                True iff item is a legacy plist.
 * @field managed               True iff item is managed by MDM.
 * @field uid                   User ID for the item (may be user nobody (-2)).
 * @field item_url              URL for item.
 *                              If file URL describing a relative path, it is relative
 *                              to app_url.
 * @field app_url               Optional.  URL for app the item is attributed to.
 */
public struct es_btm_launch_item_t {

    public init()

    public init(item_type: es_btm_item_type_t, legacy: Bool, managed: Bool, uid: uid_t, item_url: es_string_token_t, app_url: es_string_token_t)

    public var item_type: es_btm_item_type_t

    public var legacy: Bool

    public var managed: Bool

    public var uid: uid_t

    public var item_url: es_string_token_t

    public var app_url: es_string_token_t
}

/**
 * @brief Execute a new process
 *
 * @field target The new process that is being executed
 * @field reserved0 This field must not be accessed directly (see notes)
 * @field script Script being executed by interpreter. This field is only valid if a script was
 *        executed directly and not as an argument to the interpreter (e.g. `./foo.sh` not `/bin/sh ./foo.sh`)
 *        Field available only if message version >= 2.
 * @field cwd Current working directory at exec time.
 *        Field available only if message version >= 3.
 * @field last_fd Highest open file descriptor after the exec completed.
 *        This number is equal to or larger than the highest number of file descriptors available
 *        via `es_exec_fd_count` and `es_exec_fd`, in which case EndpointSecurity has capped the
 *        number of file descriptors available in the message.  File descriptors for open files are
 *        not necessarily contiguous.  The exact number of open file descriptors is not available.
 *        Field available only if message version >= 4.
 * @field image_cputype The CPU type of the executable image which is being executed.
 *        In case of translation, this may be a different architecture than the one of the system.
 *        Field available only if message version >= 6.
 * @field image_cpusubtype The CPU subtype of the executable image.
 *        Field available only if message version >= 6.
 *
 * @note Process arguments, environment variables and file descriptors are packed, use API functions
 * to access them: `es_exec_arg`, `es_exec_arg_count`, `es_exec_env`, `es_exec_env_count`,
 * `es_exec_fd` and `es_exec_fd_count`.
 *
 * @note The API may only return descriptions for a subset of open file descriptors; how many and
 * which file descriptors are available as part of exec events is not considered API and can change
 * in future releases.
 *
 * @note The CPU type and subtype correspond to CPU_TYPE_* and CPU_SUBTYPE_* macros defined in
 * `<mach/machine.h>`.
 *
 * @note Fields related to code signing in `target` represent kernel state for the process at the
 * point in time the exec has completed, but the binary has not started running yet.  Because code
 * pages are not validated until they are paged in, this means that modifications to code pages
 * would not have been detected yet at this point.  For a more thorough explanation, please see the
 * documentation for `es_process_t`.
 *
 * @note There are two `es_process_t` fields that are represented in an `es_message_t` that contains
 * an `es_event_exec_t`. The `es_process_t` within the `es_message_t` struct (named "process")
 * contains information about the program that calls execve(2) (or posix_spawn(2)). This information
 * is gathered prior to the program being replaced. The other `es_process_t`, within the
 * `es_event_exec_t` struct (named "target"), contains information about the program after the image
 * has been replaced by execve(2) (or posix_spawn(2)). This means that both `es_process_t` structs
 * refer to the same process, but not necessarily the same program. Also, note that the
 * `audit_token_t` structs contained in the two different `es_process_t` structs will not be
 * identical: the pidversion field will be updated, and the UID/GID values may be different if the
 * new program had setuid/setgid permission bits set.
 *
 * @note Cache key for this event type:  (process executable file, target executable file)
 */
public struct es_event_exec_t {

    public init(target: UnsafeMutablePointer<es_process_t>, reserved0: es_token_t, _ __Anonymous_field2: es_event_exec_t.__Unnamed_union___Anonymous_field2)

    
    public struct __Unnamed_union___Anonymous_field2 {

        public init(reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

        public init(_ __Anonymous_field1: es_event_exec_t.__Unnamed_union___Anonymous_field2.__Unnamed_struct___Anonymous_field1)

        public init()

        
        public struct __Unnamed_struct___Anonymous_field1 {

            public init(script: UnsafeMutablePointer<es_file_t>?, cwd: UnsafeMutablePointer<es_file_t>, last_fd: Int32, image_cputype: cpu_type_t, image_cpusubtype: cpu_subtype_t)

            public var script: UnsafeMutablePointer<es_file_t>? /* field available only if message version >= 2 */

            public var cwd: UnsafeMutablePointer<es_file_t> /* field available only if message version >= 3 */

            public var last_fd: Int32 /* field available only if message version >= 4 */

            public var image_cputype: cpu_type_t /* field available only if message version >= 6 */

            public var image_cpusubtype: cpu_subtype_t /* field available only if message version >= 6 */
        }

        public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

        public var __Anonymous_field1: es_event_exec_t.__Unnamed_union___Anonymous_field2.__Unnamed_struct___Anonymous_field1

        public var script: UnsafeMutablePointer<es_file_t>?

        public var cwd: UnsafeMutablePointer<es_file_t>

        public var last_fd: Int32

        public var image_cputype: cpu_type_t

        public var image_cpusubtype: cpu_subtype_t
    }

    public var target: UnsafeMutablePointer<es_process_t>

    public var reserved0: es_token_t

    public var __Anonymous_field2: es_event_exec_t.__Unnamed_union___Anonymous_field2

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

    public var script: UnsafeMutablePointer<es_file_t>?

    public var cwd: UnsafeMutablePointer<es_file_t>

    public var last_fd: Int32

    public var image_cputype: cpu_type_t

    public var image_cpusubtype: cpu_subtype_t
}

/**
 * @brief Open a file system object
 *
 * @field fflag The desired flags to be used when opening `file` (see note)
 * @field file The file that will be opened
 *
 * @note: The `fflag` field represents the mask as applied by the kernel, not as represented by typical
 * open(2) `oflag` values. When responding to `ES_EVENT_TYPE_AUTH_OPEN` events using
 * es_respond_flags_result(), ensure that the same FFLAG values are used (e.g. FREAD, FWRITE instead
 * of O_RDONLY, O_RDWR, etc...).
 *
 * @note Cache key for this event type:  (process executable file, file that will be opened)
 *
 * @see fcntl.h
 */
public struct es_event_open_t {

    public init(fflag: Int32, file: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var fflag: Int32

    public var file: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Load a kernel extension
 *
 * @field identifier The signing identifier of the kext being loaded
 *
 * @note This event type does not support caching.
 */
public struct es_event_kextload_t {

    public init()

    public init(identifier: es_string_token_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var identifier: es_string_token_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Unload a kernel extension
 *
 * @field identifier The signing identifier of the kext being unloaded
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_kextunload_t {

    public init()

    public init(identifier: es_string_token_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var identifier: es_string_token_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Unlink a file system object
 *
 * @field target The object that will be removed
 * @field parent_dir The parent directory of the `target` file system object
 *
 * @note This event can fire multiple times for a single syscall, for example when the syscall
 *       has to be retried due to racing VFS operations.
 *
 * @note This event type does not support caching.
 */
public struct es_event_unlink_t {

    public init(target: UnsafeMutablePointer<es_file_t>, parent_dir: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var parent_dir: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Memory map a file
 *
 * @field protection The protection (region accessibility) value
 * @field max_protection The maximum allowed protection value the operating system will respect
 * @field flags The type and attributes of the mapped file
 * @field file_pos The offset into `source` that will be mapped
 * @field source The file system object being mapped
 *
 * @note Cache key for this event type:  (process executable file, source file)
 */
public struct es_event_mmap_t {

    public init(protection: Int32, max_protection: Int32, flags: Int32, file_pos: UInt64, source: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var protection: Int32

    public var max_protection: Int32

    public var flags: Int32

    public var file_pos: UInt64

    public var source: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Link to a file
 *
 * @field source The existing object to which a hard link will be created
 * @field target_dir The directory in which the link will be created
 * @field target_filename The name of the new object linked to `source`
 *
 * @note This event type does not support caching.
 */
public struct es_event_link_t {

    public init(source: UnsafeMutablePointer<es_file_t>, target_dir: UnsafeMutablePointer<es_file_t>, target_filename: es_string_token_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var source: UnsafeMutablePointer<es_file_t>

    public var target_dir: UnsafeMutablePointer<es_file_t>

    public var target_filename: es_string_token_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Mount a file system
 *
 * @field statfs The file system stats for the file system being mounted
 *
 * @note Cache key for this event type:  (process executable file, mount point)
 */
public struct es_event_mount_t {

    public init(statfs: UnsafeMutablePointer<statfs>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var statfs: UnsafeMutablePointer<statfs>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Unmount a file system
 *
 * @field statfs The file system stats for the file system being unmounted
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_unmount_t {

    public init(statfs: UnsafeMutablePointer<statfs>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var statfs: UnsafeMutablePointer<statfs>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Remount a file system
 *
 * @field statfs The file system stats for the file system being remounted
 *
 * @note This event type does not support caching.
 */
public struct es_event_remount_t {

    public init(statfs: UnsafeMutablePointer<statfs>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var statfs: UnsafeMutablePointer<statfs>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Fork a new process
 *
 * @field child The child process that was created
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_fork_t {

    public init(child: UnsafeMutablePointer<es_process_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var child: UnsafeMutablePointer<es_process_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Control protection of pages
 *
 * @field protection The desired new protection value
 * @field address The base address to which the protection value will apply
 * @field size The size of the memory region the protection value will apply
 *
 * @note This event type does not support caching.
 */
public struct es_event_mprotect_t {

    public init()

    public init(protection: Int32, address: user_addr_t, size: user_size_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var protection: Int32

    public var address: user_addr_t

    public var size: user_size_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Send a signal to a process
 *
 * @field sig The signal number to be delivered
 * @field target The process that will receive the signal
 *
 * @note This event will not fire if a process sends a signal to itself.
 *
 * @note Cache key for this event type:  (process executable file, target process executable file)
 */
public struct es_event_signal_t {

    public init(sig: Int32, target: UnsafeMutablePointer<es_process_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var sig: Int32

    public var target: UnsafeMutablePointer<es_process_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

public struct es_destination_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_DESTINATION_TYPE_EXISTING_FILE: es_destination_type_t { get }
public var ES_DESTINATION_TYPE_NEW_PATH: es_destination_type_t { get }

/**
 * @brief Rename a file system object
 *
 * @field source The source file that is being renamed
 * @field destination_type Whether or not the destination refers to an existing or new file
 * @field destination Information about the destination of the renamed file (see note)
 * @field existing_file The destination file that will be overwritten
 * @field new_path Information regarding the destination of a newly created file
 * @field dir The directory into which the file will be renamed
 * @field filename The name of the new file that will be created
 *
 * @note The `destination_type` field describes which member in the `destination` union should
 * accessed. `ES_DESTINATION_TYPE_EXISTING_FILE` means that `existing_file` should be used,
 * `ES_DESTINATION_TYPE_NEW_PATH` means that the `new_path` struct should be used.
 *
 * @note This event can fire multiple times for a single syscall, for example when the syscall
 *       has to be retried due to racing VFS operations.
 *
 * @note This event type does not support caching.
 */
public struct es_event_rename_t {

    public init(source: UnsafeMutablePointer<es_file_t>, destination_type: es_destination_type_t, destination: es_event_rename_t.__Unnamed_union_destination, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    
    public struct __Unnamed_union_destination {

        public init(existing_file: UnsafeMutablePointer<es_file_t>)

        public init(new_path: es_event_rename_t.__Unnamed_union_destination.__Unnamed_struct_new_path)

        
        public struct __Unnamed_struct_new_path {

            public init(dir: UnsafeMutablePointer<es_file_t>, filename: es_string_token_t)

            public var dir: UnsafeMutablePointer<es_file_t>

            public var filename: es_string_token_t
        }

        public var existing_file: UnsafeMutablePointer<es_file_t>

        public var new_path: es_event_rename_t.__Unnamed_union_destination.__Unnamed_struct_new_path
    }

    public var source: UnsafeMutablePointer<es_file_t>

    public var destination_type: es_destination_type_t

    public var destination: es_event_rename_t.__Unnamed_union_destination

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Set an extended attribute
 *
 * @field target The file for which the extended attribute will be set
 * @field extattr The extended attribute which will be set
 *
 * @note This event type does not support caching.
 */
public struct es_event_setextattr_t {

    public init(target: UnsafeMutablePointer<es_file_t>, extattr: es_string_token_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var extattr: es_string_token_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Retrieve an extended attribute
 *
 * @field target The file for which the extended attribute will be retrieved
 * @field extattr The extended attribute which will be retrieved
 *
 * @note Cache key for this event type:  (process executable file, target file)
 */
public struct es_event_getextattr_t {

    public init(target: UnsafeMutablePointer<es_file_t>, extattr: es_string_token_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var extattr: es_string_token_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Delete an extended attribute
 *
 * @field target The file for which the extended attribute will be deleted
 * @field extattr The extended attribute which will be deleted
 *
 * @note This event type does not support caching.
 */
public struct es_event_deleteextattr_t {

    public init(target: UnsafeMutablePointer<es_file_t>, extattr: es_string_token_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var extattr: es_string_token_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Modify file mode
 *
 * @field mode The desired new mode
 * @field target The file for which mode information will be modified
 *
 * @note The `mode` member is the desired new mode. The `target`
 * member's `stat` information contains the current mode.
 *
 * @note Cache key for this event type:  (process executable file, target file)
 */
public struct es_event_setmode_t {

    public init(mode: mode_t, target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var mode: mode_t

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Modify file flags information
 *
 * @field flags The desired new flags
 * @field target The file for which flags information will be modified
 *
 * @note The `flags` member is the desired set of new flags. The `target`
 * member's `stat` information contains the current set of flags.
 *
 * @note Cache key for this event type:  (process executable file, target file)
 */
public struct es_event_setflags_t {

    public init(flags: UInt32, target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var flags: UInt32

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Modify file owner information
 *
 * @field uid The desired new UID
 * @field gid The desired new GID
 * @field target The file for which owner information will be modified
 *
 * @note The `uid` and `gid` members are the desired new values. The `target`
 * member's `stat` information contains the current uid and gid values.
 *
 * @note Cache key for this event type:  (process executable file, target file)
 */
public struct es_event_setowner_t {

    public init(uid: uid_t, gid: gid_t, target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var uid: uid_t

    public var gid: gid_t

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Close a file descriptor
 *
 * @field modified Set to TRUE if the target file being closed has been modified
 * @field target The file that is being closed
 * @field was_mapped_writable Indicates that at some point in the lifetime of the
 *        target file vnode it was mapped into a process as writable.
 *        Field available only if message version >= 6.
 *
 * @note This event type does not support caching (notify-only).
 *
 * `was_mapped_writable` only indicates whether the target file was mapped into writable memory or not for the lifetime of the vnode.
 * It does not indicate whether the file has actually been written to by way of writing to mapped memory, and it does not indicate whether the file is currently still mapped writable.
 * Correct interpretation requires consideration of vnode lifetimes in the kernel.
 *
 * The `modified` flag only reflects that a file was or was not modified by filesystem syscall.
 * If a file was only modifed though a memory mapping this flag will be false, but was_mapped_writable will be true.
 */
public struct es_event_close_t {

    public init(modified: Bool, target: UnsafeMutablePointer<es_file_t>, _ __Anonymous_field2: es_event_close_t.__Unnamed_union___Anonymous_field2)

    
    public struct __Unnamed_union___Anonymous_field2 {

        public init(reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

        public init(_ __Anonymous_field1: es_event_close_t.__Unnamed_union___Anonymous_field2.__Unnamed_struct___Anonymous_field1)

        public init()

        
        public struct __Unnamed_struct___Anonymous_field1 {

            public init()

            public init(was_mapped_writable: Bool)

            public var was_mapped_writable: Bool /* Field available only if message version >= 6. */
        }

        public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

        public var __Anonymous_field1: es_event_close_t.__Unnamed_union___Anonymous_field2.__Unnamed_struct___Anonymous_field1

        public var was_mapped_writable: Bool
    }

    public var modified: Bool

    public var target: UnsafeMutablePointer<es_file_t>

    public var __Anonymous_field2: es_event_close_t.__Unnamed_union___Anonymous_field2

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

    public var was_mapped_writable: Bool
}

/**
 * @brief Create a file system object
 *
 * @field destination_type Whether or not the destination refers to an existing file (see note)
 * @field destination Information about the destination of the new file (see note)
 * @field existing_file The file system object that was created
 * @field dir The directory in which the new file system object will be created
 * @field filename The name of the new file system object to create
 * @field acl The ACL that the new file system object got or gets created with.
 *        May be NULL if the file system object gets created without ACL.
 *        @note The acl provided cannot be directly used by functions within
 *        the <sys/acl.h> header. These functions can mutate the struct passed
 *        into them, which is not compatible with the immutable nature of
 *        es_message_t. Additionally, because this field is minimally constructed,
 *        you must not use `acl_dup(3)` to get a mutable copy, as this can lead to
 *        out of bounds memory access. To obtain a acl_t struct that is able to be
 *        used with all functions within <sys/acl.h>, please use a combination of
 *        `acl_copy_ext(3)` followed by `acl_copy_int(3)`.
 *        Field available only if message version >= 2.
 *
 * @note If an object is being created but has not yet been created, the
 * `destination_type` will be `ES_DESTINATION_TYPE_NEW_PATH`.
 *
 * @note Typically `ES_EVENT_TYPE_NOTIFY_CREATE` events are fired after the
 * object has been created and the `destination_type` will be
 * `ES_DESTINATION_TYPE_EXISTING_FILE`. The exception to this is for
 * notifications that occur if an ES client responds to an
 * `ES_EVENT_TYPE_AUTH_CREATE` event with `ES_AUTH_RESULT_DENY`.
 *
 * @note This event can fire multiple times for a single syscall, for example when the syscall
 *       has to be retried due to racing VFS operations.
 *
 * @note This event type does not support caching.
 */
public struct es_event_create_t {

    public init()

    public init(destination_type: es_destination_type_t, destination: es_event_create_t.__Unnamed_union_destination, reserved2: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), _ __Anonymous_field3: es_event_create_t.__Unnamed_union___Anonymous_field3)

    
    public struct __Unnamed_union_destination {

        public init(existing_file: UnsafeMutablePointer<es_file_t>)

        public init(new_path: es_event_create_t.__Unnamed_union_destination.__Unnamed_struct_new_path)

        
        public struct __Unnamed_struct_new_path {

            public init(dir: UnsafeMutablePointer<es_file_t>, filename: es_string_token_t, mode: mode_t)

            public var dir: UnsafeMutablePointer<es_file_t>

            public var filename: es_string_token_t

            public var mode: mode_t
        }

        public var existing_file: UnsafeMutablePointer<es_file_t>

        public var new_path: es_event_create_t.__Unnamed_union_destination.__Unnamed_struct_new_path
    }

    
    public struct __Unnamed_union___Anonymous_field3 {

        public init(reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

        public init(_ __Anonymous_field1: es_event_create_t.__Unnamed_union___Anonymous_field3.__Unnamed_struct___Anonymous_field1)

        public init()

        
        public struct __Unnamed_struct___Anonymous_field1 {

            public init()

            public init(acl: acl_t?)

            public var acl: acl_t? /* field available only if message version >= 2 */
        }

        public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

        public var __Anonymous_field1: es_event_create_t.__Unnamed_union___Anonymous_field3.__Unnamed_struct___Anonymous_field1

        public var acl: acl_t?
    }

    public var destination_type: es_destination_type_t

    public var destination: es_event_create_t.__Unnamed_union_destination

    public var reserved2: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

    public var __Anonymous_field3: es_event_create_t.__Unnamed_union___Anonymous_field3

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)

    public var acl: acl_t?
}

/**
 * @brief Terminate a process
 *
 * @field stat The exit status of a process (same format as wait(2))
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_exit_t {

    public init()

    public init(stat: Int32, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var stat: Int32

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Exchange data atomically between two files
 *
 * @field file1 The first file to be exchanged
 * @field file2 The second file to be exchanged
 *
 * @note This event type does not support caching.
 */
public struct es_event_exchangedata_t {

    public init(file1: UnsafeMutablePointer<es_file_t>, file2: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var file1: UnsafeMutablePointer<es_file_t>

    public var file2: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Write to a file
 *
 * @field target The file being written to
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_write_t {

    public init(target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Truncate a file
 *
 * @field target The file that is being truncated
 *
 * @note This event type does not support caching.
 */
public struct es_event_truncate_t {

    public init(target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Change directories
 *
 * @field target The desired new current working directory
 *
 * @note Cache key for this event type:  (process executable file, target directory)
 */
public struct es_event_chdir_t {

    public init(target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief View stat information of a file
 *
 * @field target The file for which stat information will be retrieved
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_stat_t {

    public init(target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Change the root directory for a process
 *
 * @field target The directory which will be the new root
 *
 * @note Cache key for this event type:  (process executable file, target directory)
 */
public struct es_event_chroot_t {

    public init(target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief List extended attributes of a file
 *
 * @field target The file for which extended attributes are being retrieved
 *
 * @note Cache key for this event type:  (process executable file, target file)
 */
public struct es_event_listextattr_t {

    public init(target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Open a connection to an I/O Kit IOService
 *
 * @field user_client_type A constant specifying the type of connection to be
 *        created, interpreted only by the IOService's family.
 *        This field corresponds to the type argument to IOServiceOpen().
 * @field user_client_class Meta class name of the user client instance.
 *
 * This event is fired when a process calls IOServiceOpen() in order to open
 * a communications channel with an I/O Kit driver.  The event does not
 * correspond to driver <-> device communication and is neither providing
 * visibility nor access control into devices being attached.
 *
 * @note This event type does not support caching.
 */
public struct es_event_iokit_open_t {

    public init()

    public init(user_client_type: UInt32, user_client_class: es_string_token_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var user_client_type: UInt32

    public var user_client_class: es_string_token_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

public struct es_get_task_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}

// Task port obtained by calling e.g. task_for_pid(), where the caller
// obtains a task port for a process identified by pid.
public var ES_GET_TASK_TYPE_TASK_FOR_PID: es_get_task_type_t { get }
// Task port obtained by calling e.g. processor_set_tasks(), where the
// caller obtains a set of task ports.
public var ES_GET_TASK_TYPE_EXPOSE_TASK: es_get_task_type_t { get }
// Task port obtained by calling e.g. task_identity_token_get_task_port(),
// where the caller obtains a task port for a process identified by an
// identity token.  Task identity tokens generally have to be given up
// by the target process voluntarily prior to the conversion into task
// ports.
public var ES_GET_TASK_TYPE_IDENTITY_TOKEN: es_get_task_type_t { get }

/**
 * @brief Get a process's task control port
 *
 * @field target The process for which the task control port will be retrieved.
 * @field type Type indicating how the process is obtaining the task port for
 *        the target process.
 *        Field available only if message version >= 5.
 *
 * This event is fired when a process obtains a send right to a task control
 * port (e.g. task_for_pid(), task_identity_token_get_task_port(),
 * processor_set_tasks() and other means).
 *
 * @note Task control ports were formerly known as simply "task ports".
 *
 * @note There are many legitimate reasons why a process might need to obtain
 * a send right to a task control port of another process, not limited to intending
 * to debug or suspend the target process.  For instance, frameworks and their
 * daemons may need to obtain a task control port to fulfill requests made by the
 * target process.  Obtaining a task control port is in itself not indicative of
 * malicious activity.  Denying system processes acquiring task control ports may
 * result in breaking system functionality in potentially fatal ways.
 *
 * @note Cache key for this event type:
 * (process executable file, target executable file)
 */
public struct es_event_get_task_t {

    public init(target: UnsafeMutablePointer<es_process_t>, type: es_get_task_type_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_process_t>

    public var type: es_get_task_type_t /* field available only if message version >= 5 */

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Get a process's task read port
 *
 * @field target The process for which the task read port will be retrieved.
 * @field type Type indicating how the process is obtaining the task port for
 *        the target process.
 *        Field available only if message version >= 5.
 *
 * This event is fired when a process obtains a send right to a task read
 * port (e.g. task_read_for_pid(), task_identity_token_get_task_port()).
 *
 * @note Cache key for this event type:
 * (process executable file, target executable file)
 */
public struct es_event_get_task_read_t {

    public init(target: UnsafeMutablePointer<es_process_t>, type: es_get_task_type_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_process_t>

    public var type: es_get_task_type_t /* field available only if message version >= 5 */

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Get a process's task inspect port
 *
 * @field target The process for which the task inspect port will be retrieved.
 * @field type Type indicating how the process is obtaining the task port for
 *        the target process.
 *        Field available only if message version >= 5.
 *
 * This event is fired when a process obtains a send right to a task inspect
 * port (e.g. task_inspect_for_pid(), task_identity_token_get_task_port()).
 *
 * @note This event type does not support caching.
 */
public struct es_event_get_task_inspect_t {

    public init(target: UnsafeMutablePointer<es_process_t>, type: es_get_task_type_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_process_t>

    public var type: es_get_task_type_t /* field available only if message version >= 5 */

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Get a process's task name port
 *
 * @field target The process for which the task name port will be retrieved.
 * @field type Type indicating how the process is obtaining the task port for
 *        the target process.
 *        Field available only if message version >= 5.
 *
 * This event is fired when a process obtains a send right to a task name
 * port (e.g. task_name_for_pid(), task_identity_token_get_task_port()).
 *
 * @note This event type does not support caching.
 */
public struct es_event_get_task_name_t {

    public init(target: UnsafeMutablePointer<es_process_t>, type: es_get_task_type_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_process_t>

    public var type: es_get_task_type_t /* field available only if message version >= 5 */

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Retrieve file system attributes
 *
 * @field attrlist The attributes that will be retrieved
 * @field target The file for which attributes will be retrieved
 *
 * @note Cache key for this event type:  (process executable file, target file)
 */
public struct es_event_getattrlist_t {

    public init(attrlist: attrlist, target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var attrlist: attrlist

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Set file system attributes
 *
 * @field attrlist The attributes that will be modified
 * @field target The file for which attributes will be modified
 *
 * @note This event type does not support caching.
 */
public struct es_event_setattrlist_t {

    public init(attrlist: attrlist, target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var attrlist: attrlist

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Update file contents via the FileProvider framework
 *
 * @field source The staged file that has had its contents updated
 * @field target_path The destination that the staged `source` file will be moved to
 *
 * @note This event type does not support caching.
 */
public struct es_event_file_provider_update_t {

    public init(source: UnsafeMutablePointer<es_file_t>, target_path: es_string_token_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var source: UnsafeMutablePointer<es_file_t>

    public var target_path: es_string_token_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Materialize a file via the FileProvider framework
 *
 * @field source The staged file that has been materialized
 * @field target The destination of the staged `source` file
 *
 * @note This event type does not support caching.
 */
public struct es_event_file_provider_materialize_t {

    public init(instigator: UnsafeMutablePointer<es_process_t>, source: UnsafeMutablePointer<es_file_t>, target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var instigator: UnsafeMutablePointer<es_process_t>

    public var source: UnsafeMutablePointer<es_file_t>

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Resolve a symbolic link
 *
 * @field source The symbolic link that is attempting to be resolved
 *
 * @note This is not limited only to readlink(2). Other operations such as path lookups
 * can also cause this event to be fired.
 */
public struct es_event_readlink_t {

    public init(source: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var source: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Lookup a file system object
 *
 * @field source_dir The current directory
 * @field relative_target The path to lookup relative to the `source_dir`
 *
 * @note The `relative_target` data may contain untrusted user input.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_lookup_t {

    public init(source_dir: UnsafeMutablePointer<es_file_t>, relative_target: es_string_token_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var source_dir: UnsafeMutablePointer<es_file_t>

    public var relative_target: es_string_token_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Test file access
 *
 * @field mode Access permission to check
 * @field target The file to check for access
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_access_t {

    public init(mode: Int32, target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var mode: Int32

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Change file access and modification times (e.g. via utimes(2))
 *
 * @field target The path which will have its times modified
 * @field atime The desired new access time
 * @field mtime The desired new modification time
 *
 * @note Cache key for this event type:  (process executable file, target file)
 */
public struct es_event_utimes_t {

    public init(target: UnsafeMutablePointer<es_file_t>, atime: timespec, mtime: timespec, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var atime: timespec

    public var mtime: timespec

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Clone a file
 *
 * @field source The file that will be cloned
 * @field target_dir The directory into which the `source` file will be cloned
 * @field target_name The name of the new file to which `source` will be cloned
 *
 * @note This event type does not support caching.
 */
public struct es_event_clone_t {

    public init(source: UnsafeMutablePointer<es_file_t>, target_dir: UnsafeMutablePointer<es_file_t>, target_name: es_string_token_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var source: UnsafeMutablePointer<es_file_t>

    public var target_dir: UnsafeMutablePointer<es_file_t>

    public var target_name: es_string_token_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Copy a file using the copyfile syscall
 *
 * @field source The file that will be cloned
 * @field target_file The file existing at the target path that will be overwritten
 *                    by the copyfile operation.  NULL if no such file exists.
 * @field target_dir The directory into which the `source` file will be copied
 * @field target_name The name of the new file to which `source` will be copied
 * @field mode Corresponds to mode argument of the copyfile syscall
 * @field flags Corresponds to flags argument of the copyfile syscall
 *
 * @note Not to be confused with copyfile(3).
 * @note Prior to macOS 12.0, the copyfile syscall fired open, unlink and auth
 *       create events, but no notify create, nor write or close events.
 *
 * @note This event type does not support caching.
 */
public struct es_event_copyfile_t {

    public init(source: UnsafeMutablePointer<es_file_t>, target_file: UnsafeMutablePointer<es_file_t>?, target_dir: UnsafeMutablePointer<es_file_t>, target_name: es_string_token_t, mode: mode_t, flags: Int32, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var source: UnsafeMutablePointer<es_file_t>

    public var target_file: UnsafeMutablePointer<es_file_t>?

    public var target_dir: UnsafeMutablePointer<es_file_t>

    public var target_name: es_string_token_t

    public var mode: mode_t

    public var flags: Int32

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief File control
 *
 * @field target The target file on which the file control command will be performed
 * @field cmd The `cmd` argument given to fcntl(2)
 *
 * @note This event type does not support caching.
 */
public struct es_event_fcntl_t {

    public init(target: UnsafeMutablePointer<es_file_t>, cmd: Int32, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var cmd: Int32

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Read directory entries
 *
 * @field target The directory whose contents will be read
 *
 * @note Cache key for this event type:  (process executable file, target directory)
 */
public struct es_event_readdir_t {

    public init(target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Retrieve file system path based on FSID
 *
 * @field target Describes the file system path that will be retrieved
 *
 * @note This event can fire multiple times for a single syscall, for example when the syscall
 *       has to be retried due to racing VFS operations.
 *
 * @note Cache key for this event type:  (process executable file, target file)
 */
public struct es_event_fsgetpath_t {

    public init(target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Modify the system time
 *
 * @note This event is not fired if the program contains the entitlement
 * com.apple.private.settime. Additionally, even if an ES client responds to
 * ES_EVENT_TYPE_AUTH_SETTIME events with ES_AUTH_RESULT_ALLOW, the operation
 * may still fail for other reasons (e.g. unprivileged user).
 *
 * @note This event type does not support caching.
 */
public struct es_event_settime_t {

    public init()

    public init(reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Duplicate a file descriptor
 *
 * @field target Describes the file the duplicated file descriptor points to
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_dup_t {

    public init(target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Fired when a UNIX-domain socket is about to be bound to a path.
 *
 * @field dir Describes the directory the socket file is created in.
 * @field filename The filename of the socket file.
 * @field mode The mode of the socket file.
 *
 * @note This event type does not support caching.
 */
public struct es_event_uipc_bind_t {

    public init(dir: UnsafeMutablePointer<es_file_t>, filename: es_string_token_t, mode: mode_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var dir: UnsafeMutablePointer<es_file_t>

    public var filename: es_string_token_t

    public var mode: mode_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Fired when a UNIX-domain socket is about to be connected.
 *
 * @field file Describes the socket file that the socket is bound to.
 * @field domain The cmmunications domain of the socket (see socket(2)).
 * @field type The type of the socket (see socket(2)).
 * @field protocol The protocol of the socket (see socket(2)).
 *
 * @note Cache key for this event type:  (process executable file, socket file)
 */
public struct es_event_uipc_connect_t {

    public init(file: UnsafeMutablePointer<es_file_t>, domain: Int32, type: Int32, protocol: Int32, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var file: UnsafeMutablePointer<es_file_t>

    public var domain: Int32

    public var type: Int32

    public var `protocol`: Int32

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Set a file ACL.
 *
 * @field set_or_clear Describes whether or not the ACL on the `target` is being set or cleared
 * @field acl Union that is valid when `set_or_clear` is set to `ES_SET`
 * @field set The acl_t structure to be used by vairous acl(3) functions
 *        @note The acl provided cannot be directly used by functions within
 *        the <sys/acl.h> header. These functions can mutate the struct passed
 *        into them, which is not compatible with the immutable nature of
 *        es_message_t. Additionally, because this field is minimally constructed,
 *        you must not use `acl_dup(3)` to get a mutable copy, as this can lead to
 *        out of bounds memory access. To obtain a acl_t struct that is able to be
 *        used with all functions within <sys/acl.h>, please use a combination of
 *        `acl_copy_ext(3)` followed by `acl_copy_int(3)`.
 * @field target Describes the file whose ACL is being set.
 *
 * @note This event type does not support caching.
 */
public struct es_event_setacl_t {

    public init(target: UnsafeMutablePointer<es_file_t>, set_or_clear: es_set_or_clear_t, acl: es_event_setacl_t.__Unnamed_union_acl, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    
    public struct __Unnamed_union_acl {

        public init(set: acl_t)

        public var set: acl_t
    }

    public var target: UnsafeMutablePointer<es_file_t>

    public var set_or_clear: es_set_or_clear_t

    public var acl: es_event_setacl_t.__Unnamed_union_acl

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Fired when a pseudoterminal control device is granted
 *
 * @field dev Major and minor numbers of device
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_pty_grant_t {

    public init()

    public init(dev: dev_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var dev: dev_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Fired when a pseudoterminal control device is closed
 *
 * @field dev Major and minor numbers of device
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_pty_close_t {

    public init()

    public init(dev: dev_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var dev: dev_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Access control check for retrieving process information.
 *
 * @field target The process for which the access will be checked
 * @field type The type of call number used to check the access on the target process
 * @field flavor The flavor used to check the access on the target process
 *
 * @note Cache key for this event type:  (process executable file, target process executable file, type)
 */
public struct es_event_proc_check_t {

    public init()

    public init(target: UnsafeMutablePointer<es_process_t>?, type: es_proc_check_type_t, flavor: Int32, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_process_t>?

    public var type: es_proc_check_type_t

    public var flavor: Int32

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Access control check for searching a volume or a mounted file system
 *
 * @field attrlist The attributes that will be used to do the search
 * @field target The volume whose contents will be searched
 *
 * @note Cache key for this event type:  (process executable file, target file)
 */
public struct es_event_searchfs_t {

    public init(attrlist: attrlist, target: UnsafeMutablePointer<es_file_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var attrlist: attrlist

    public var target: UnsafeMutablePointer<es_file_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief This enum describes the type of suspend/resume operations that are currently used.
 */
public struct es_proc_suspend_resume_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_PROC_SUSPEND_RESUME_TYPE_SUSPEND: es_proc_suspend_resume_type_t { get }
public var ES_PROC_SUSPEND_RESUME_TYPE_RESUME: es_proc_suspend_resume_type_t { get }
public var ES_PROC_SUSPEND_RESUME_TYPE_SHUTDOWN_SOCKETS: es_proc_suspend_resume_type_t { get }

/**
 * @brief Fired when one of pid_suspend, pid_resume or pid_shutdown_sockets
 * is called on a process.
 *
 * @field target The process that is being suspended, resumed, or is the object
 * of a pid_shutdown_sockets call.
 * @field type The type of operation that was called on the target process.
 *
 * @note This event type does not support caching.
 */
public struct es_event_proc_suspend_resume_t {

    public init()

    public init(target: UnsafeMutablePointer<es_process_t>?, type: es_proc_suspend_resume_type_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_process_t>?

    public var type: es_proc_suspend_resume_type_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Code signing status for process was invalidated.
 *
 * @note This event fires when the CS_VALID bit is removed from a
 * process' CS flags, that is, when the first invalid page is paged in
 * for a process with an otherwise valid code signature, or when a
 * process is explicitly invalidated by a csops(CS_OPS_MARKINVALID)
 * syscall.  This event does not fire if CS_HARD was set, since CS_HARD
 * by design prevents the process from going invalid.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_cs_invalidated_t {

    public init()

    public init(reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Fired when one process attempts to attach to another process
 *
 * @field target The process that will be attached to by the process
 * that instigated the event
 *
 * @note This event can fire multiple times for a single trace attempt, for example
 * when the processes to which is being attached is reparented during the operation
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_trace_t {

    public init(target: UnsafeMutablePointer<es_process_t>, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_process_t>

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Notification that a process has attempted to create a thread in
 * another process by calling one of the thread_create or thread_create_running
 * MIG routines.
 *
 * @field target The process in which a new thread was created
 * @field thread_state The new thread state in case of thread_create_running,
 * NULL in case of thread_create.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_remote_thread_create_t {

    public init(target: UnsafeMutablePointer<es_process_t>, thread_state: UnsafeMutablePointer<es_thread_state_t>?, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var target: UnsafeMutablePointer<es_process_t>

    public var thread_state: UnsafeMutablePointer<es_thread_state_t>?

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Notification that a process has called setuid().
 *
 * @field uid The uid argument to the setuid() syscall.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_setuid_t {

    public init()

    public init(uid: uid_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var uid: uid_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Notification that a process has called setgid().
 *
 * @field gid The gid argument to the setgid() syscall.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_setgid_t {

    public init()

    public init(gid: uid_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var gid: uid_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Notification that a process has called seteuid().
 *
 * @field euid The euid argument to the seteuid() syscall.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_seteuid_t {

    public init()

    public init(euid: uid_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var euid: uid_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Notification that a process has called setegid().
 *
 * @field egid The egid argument to the setegid() syscall.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_setegid_t {

    public init()

    public init(egid: uid_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var egid: uid_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Notification that a process has called setreuid().
 *
 * @field ruid The ruid argument to the setreuid() syscall.
 * @field euid The euid argument to the setreuid() syscall.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_setreuid_t {

    public init()

    public init(ruid: uid_t, euid: uid_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var ruid: uid_t

    public var euid: uid_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief Notification that a process has called setregid().
 *
 * @field rgid The rgid argument to the setregid() syscall.
 * @field egid The egid argument to the setregid() syscall.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_setregid_t {

    public init()

    public init(rgid: uid_t, egid: uid_t, reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

    public var rgid: uid_t

    public var egid: uid_t

    public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
}

/**
 * @brief OpenDirectory authentication data for type ES_AUTHENTICATION_TYPE_OD.
 *
 * @field instigator        Process that instigated the authentication
 *                          (XPC caller that asked for authentication).
 * @field record_type       OD record type against which OD is authenticating.
 *                          Typically "Users", but other record types can auth too.
 * @field record_name       OD record name against which OD is authenticating.
 *                          For record type "Users", this is the username.
 * @field node_name         OD node against which OD is authenticating.
 *                          Typically one of "/Local/Default", "/LDAPv3/<server>" or
 *                          "/Active Directory/<domain>".
 * @field db_path           Optional.  If node_name is "/Local/Default", this is
 *                          the path of the database against which OD is
 *                          authenticating.
 */
public struct es_event_authentication_od_t {

    public init(instigator: UnsafeMutablePointer<es_process_t>, record_type: es_string_token_t, record_name: es_string_token_t, node_name: es_string_token_t, db_path: es_string_token_t)

    public var instigator: UnsafeMutablePointer<es_process_t>

    public var record_type: es_string_token_t

    public var record_name: es_string_token_t

    public var node_name: es_string_token_t

    public var db_path: es_string_token_t
}

public struct es_touchid_mode_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_TOUCHID_MODE_VERIFICATION: es_touchid_mode_t { get }
public var ES_TOUCHID_MODE_IDENTIFICATION: es_touchid_mode_t { get }

/**
 * @brief TouchID authentication data for type ES_AUTHENTICATION_TYPE_TOUCHID.
 *
 * @field instigator        Process that instigated the authentication
 *                          (XPC caller that asked for authentication).
 * @field touchid_mode      TouchID authentication type
 * @field has_uid           Describes whether or not the uid of the user authenticated is available
 * @field uid               Union that is valid when `has_uid` is set to `true`
 * @field uid.uid           uid of user that was authenticated.
 *                          This will be set when `success` is true and `touchid_mode` is of
 *                          verification type i.e. ES_TOUCHID_MODE_VERIFICATION
 */
public struct es_event_authentication_touchid_t {

    public init(instigator: UnsafeMutablePointer<es_process_t>, touchid_mode: es_touchid_mode_t, has_uid: Bool, uid: es_event_authentication_touchid_t.__Unnamed_union_uid)

    
    public struct __Unnamed_union_uid {

        public init(uid: uid_t)

        public init()

        public var uid: uid_t
    }

    public var instigator: UnsafeMutablePointer<es_process_t>

    public var touchid_mode: es_touchid_mode_t

    public var has_uid: Bool

    public var uid: es_event_authentication_touchid_t.__Unnamed_union_uid
}

/**
 * @brief Token authentication data for type ES_AUTHENTICATION_TYPE_TOKEN.
 *
 * @field instigator        Process that instigated the authentication
 *                          (XPC caller that asked for authentication).
 * @field pubkey_hash       Hash of the public key which CryptoTokenKit is authenticating.
 * @field token_id          Token identifier of the event which CryptoTokenKit is authenticating.
 * @field kerberos_principal Optional.  This will be available if token is used for GSS PKINIT
 *                          authentication for obtaining a kerberos TGT.  NULL in all other cases.
 */
public struct es_event_authentication_token_t {

    public init(instigator: UnsafeMutablePointer<es_process_t>, pubkey_hash: es_string_token_t, token_id: es_string_token_t, kerberos_principal: es_string_token_t)

    public var instigator: UnsafeMutablePointer<es_process_t>

    public var pubkey_hash: es_string_token_t

    public var token_id: es_string_token_t

    public var kerberos_principal: es_string_token_t
}

public struct es_auto_unlock_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}

/// Unlock the machine using Apple Watch.
public var ES_AUTO_UNLOCK_MACHINE_UNLOCK: es_auto_unlock_type_t { get }
/// Approve an authorization prompt using Apple Watch.
public var ES_AUTO_UNLOCK_AUTH_PROMPT: es_auto_unlock_type_t { get }

/**
 * @brief Auto Unlock authentication data for type ES_AUTHENTICATION_TYPE_TOKEN.
 *
 * @field username          Username for which the authentication was attempted.
 * @field type              Purpose of the authentication.
 *
 * @note This kind of authentication is performed when authenticating to the local
 * Mac using an Apple Watch for the purpose of unlocking the machine or confirming
 * an authorization prompt.  Auto Unlock is part of Continuity.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_authentication_auto_unlock_t {

    public init()

    public init(username: es_string_token_t, type: es_auto_unlock_type_t)

    public var username: es_string_token_t

    public var type: es_auto_unlock_type_t
}

/**
 * @brief Notification that an authentication was performed.
 *
 * @field success           True iff authentication was successful.
 * @field type              The type of authentication.
 * @field data              Type-specific data describing the authentication.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_authentication_t {

    public init()

    public init(success: Bool, type: es_authentication_type_t, data: es_event_authentication_t.__Unnamed_union_data)

    
    public struct __Unnamed_union_data {

        public init(od: UnsafeMutablePointer<es_event_authentication_od_t>)

        public init(touchid: UnsafeMutablePointer<es_event_authentication_touchid_t>)

        public init(token: UnsafeMutablePointer<es_event_authentication_token_t>)

        public init(auto_unlock: UnsafeMutablePointer<es_event_authentication_auto_unlock_t>)

        public var od: UnsafeMutablePointer<es_event_authentication_od_t>

        public var touchid: UnsafeMutablePointer<es_event_authentication_touchid_t>

        public var token: UnsafeMutablePointer<es_event_authentication_token_t>

        public var auto_unlock: UnsafeMutablePointer<es_event_authentication_auto_unlock_t>
    }

    public var success: Bool

    public var type: es_authentication_type_t

    public var data: es_event_authentication_t.__Unnamed_union_data
}

/**
 * @brief Notification that XProtect detected malware.
 *
 * @field signature_version     Version of the signatures used for detection.
 *                              Currently corresponds to XProtect version.
 * @field malware_identifier    String identifying the malware that was detected.
 * @field incident_identifier   String identifying the incident, intended for linking
 *                              multiple malware detected and remediated events.
 * @field detected_path         Path where malware was detected.  This path is not
 *                              necessarily a malicious binary, it can also be a
 *                              legitimate file containing a malicious portion.
 *
 * @note For any given malware incident, XProtect may emit zero or more
 *       xp_malware_detected events, and zero or more xp_malware_remediated events.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_xp_malware_detected_t {

    public init()

    public init(signature_version: es_string_token_t, malware_identifier: es_string_token_t, incident_identifier: es_string_token_t, detected_path: es_string_token_t)

    public var signature_version: es_string_token_t

    public var malware_identifier: es_string_token_t

    public var incident_identifier: es_string_token_t

    public var detected_path: es_string_token_t
}

/**
 * @brief Notification that XProtect remediated malware.
 *
 * @field signature_version     Version of the signatures used for remediation.
 *                              Currently corresponds to XProtect version.
 * @field malware_identifier    String identifying the malware that was detected.
 * @field incident_identifier   String identifying the incident, intended for linking
 *                              multiple malware detected and remediated events.
 * @field action_type           String indicating the type of action that was taken,
 *                              e.g. "path_delete".
 * @field success               True iff remediation was successful.
 * @field result_description    String describing specific reasons for failure or success.
 * @field remediated_path       Optional.  Path that was subject to remediation, if any.
 *                              This path is not necessarily a malicious binary, it can
 *                              also be a legitimate file containing a malicious portion.
 *                              Specifically, the file at this path may still exist after
 *                              successful remediation.
 * @field remediated_process_audit_token  Audit token of process that was subject to
 *                              remediation, if any.
 *
 * @note For any given malware incident, XProtect may emit zero or more
 *       xp_malware_detected events, and zero or more xp_malware_remediated events.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_xp_malware_remediated_t {

    public init()

    public init(signature_version: es_string_token_t, malware_identifier: es_string_token_t, incident_identifier: es_string_token_t, action_type: es_string_token_t, success: Bool, result_description: es_string_token_t, remediated_path: es_string_token_t, remediated_process_audit_token: UnsafeMutablePointer<audit_token_t>?)

    public var signature_version: es_string_token_t

    public var malware_identifier: es_string_token_t

    public var incident_identifier: es_string_token_t

    public var action_type: es_string_token_t

    public var success: Bool

    public var result_description: es_string_token_t

    public var remediated_path: es_string_token_t

    public var remediated_process_audit_token: UnsafeMutablePointer<audit_token_t>?
}

/**
 * @brief es_graphical_session_id_t is a session identifier identifying a on-console or off-console graphical session.
 * A graphical session exists and can potentially be attached to via Screen Sharing before a user is logged in.
 * EndpointSecurity clients should treat the `graphical_session_id` as an opaque identifier and not assign
 * special meaning to it beyond correlating events pertaining to the same graphical session.  Not to be confused with the audit session ID.
 */
public typealias es_graphical_session_id_t = UInt32

/**
 * @brief Notification that LoginWindow has logged in a user.
 *
 * @field username              Short username of the user.
 * @field graphical_session_id  Graphical session id of the session.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_lw_session_login_t {

    public init()

    public init(username: es_string_token_t, graphical_session_id: es_graphical_session_id_t)

    public var username: es_string_token_t

    public var graphical_session_id: es_graphical_session_id_t
}

/**
 * @brief Notification that LoginWindow has logged out a user.
 *
 * @field username              Short username of the user.
 * @field graphical_session_id  Graphical session id of the session.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_lw_session_logout_t {

    public init()

    public init(username: es_string_token_t, graphical_session_id: es_graphical_session_id_t)

    public var username: es_string_token_t

    public var graphical_session_id: es_graphical_session_id_t
}

/**
 * @brief Notification that LoginWindow locked the screen of a session.
 *
 * @field username              Short username of the user.
 * @field graphical_session_id  Graphical session id of the session.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_lw_session_lock_t {

    public init()

    public init(username: es_string_token_t, graphical_session_id: es_graphical_session_id_t)

    public var username: es_string_token_t

    public var graphical_session_id: es_graphical_session_id_t
}

/**
 * @brief Notification that LoginWindow unlocked the screen of a session.
 *
 * @field username              Short username of the user.
 * @field graphical_session_id  Graphical session id of the session.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_lw_session_unlock_t {

    public init()

    public init(username: es_string_token_t, graphical_session_id: es_graphical_session_id_t)

    public var username: es_string_token_t

    public var graphical_session_id: es_graphical_session_id_t
}

/**
 * @brief Notification that Screen Sharing has attached to a graphical session.
 *
 * @field success               True iff remediation was successful.
 * @field source_address_type   Type of source address.
 * @field source_address        Optional.  Source address of connection, or NULL.
 *                              Depending on the transport used, the source
 *                              address may or may not be available.
 * @field viewer_appleid        Optional.  For screen sharing initiated using an
 *                              Apple ID (e.g., from Messages or FaceTime), this
 *                              is the viewer's (client's) Apple ID.  It is not
 *                              necessarily the Apple ID that invited the screen
 *                              sharing.  NULL if unavailable.
 * @field authentication_type   Type of authentication.
 * @field authentication_username  Optional.  Username used for authentication to
 *                              Screen Sharing.  NULL if authentication type doesn't
 *                              use an username (e.g. simple VNC password).
 * @field session_username      Optional.  Username of the loginwindow session if
 *                              available,  NULL otherwise.
 * @field existing_session      True iff there was an existing user session.
 * @field graphical_session_id  Graphical session id of the screen shared.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_screensharing_attach_t {

    public init()

    public init(success: Bool, source_address_type: es_address_type_t, source_address: es_string_token_t, viewer_appleid: es_string_token_t, authentication_type: es_string_token_t, authentication_username: es_string_token_t, session_username: es_string_token_t, existing_session: Bool, graphical_session_id: es_graphical_session_id_t)

    public var success: Bool

    public var source_address_type: es_address_type_t

    public var source_address: es_string_token_t

    public var viewer_appleid: es_string_token_t

    public var authentication_type: es_string_token_t

    public var authentication_username: es_string_token_t

    public var session_username: es_string_token_t

    public var existing_session: Bool

    public var graphical_session_id: es_graphical_session_id_t
}

/**
 * @brief Notification that Screen Sharing has detached from a graphical session.
 *
 * @field source_address_type   Type of source address.
 * @field source_address        Optional.  Source address of connection, or NULL.
 *                              Depending on the transport used, the source
 *                              address may or may not be available.
 * @field viewer_appleid        Optional.  For screen sharing initiated using an
 *                              Apple ID (e.g., from Messages or FaceTime), this
 *                              is the viewer's (client's) Apple ID.  It is not
 *                              necessarily the Apple ID that invited the screen
 *                              sharing.  NULL if unavailable.
 * @field graphical_session_id  Graphical session id of the screen shared.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_screensharing_detach_t {

    public init()

    public init(source_address_type: es_address_type_t, source_address: es_string_token_t, viewer_appleid: es_string_token_t, graphical_session_id: es_graphical_session_id_t)

    public var source_address_type: es_address_type_t

    public var source_address: es_string_token_t

    public var viewer_appleid: es_string_token_t

    public var graphical_session_id: es_graphical_session_id_t
}

public struct es_openssh_login_result_type_t : Equatable, RawRepresentable {

    public init(_ rawValue: UInt32)

    public init(rawValue: UInt32)

    public var rawValue: UInt32
}
public var ES_OPENSSH_LOGIN_EXCEED_MAXTRIES: es_openssh_login_result_type_t { get }
public var ES_OPENSSH_LOGIN_ROOT_DENIED: es_openssh_login_result_type_t { get }
public var ES_OPENSSH_AUTH_SUCCESS: es_openssh_login_result_type_t { get }
public var ES_OPENSSH_AUTH_FAIL_NONE: es_openssh_login_result_type_t { get }
public var ES_OPENSSH_AUTH_FAIL_PASSWD: es_openssh_login_result_type_t { get }
public var ES_OPENSSH_AUTH_FAIL_KBDINT: es_openssh_login_result_type_t { get }
public var ES_OPENSSH_AUTH_FAIL_PUBKEY: es_openssh_login_result_type_t { get }
public var ES_OPENSSH_AUTH_FAIL_HOSTBASED: es_openssh_login_result_type_t { get }
public var ES_OPENSSH_AUTH_FAIL_GSSAPI: es_openssh_login_result_type_t { get }
public var ES_OPENSSH_INVALID_USER: es_openssh_login_result_type_t { get }

/**
 * @brief Notification for OpenSSH login event.
 *
 * @field success               True iff login was successful.
 * @field result_type           Result type for the login attempt.
 * @field source_address_type   Type of source address.
 * @field source_address        Source address of connection.
 * @field username              Username used for login.
 * @field has_uid               Describes whether or not the uid of the user logged in is available
 * @field uid                   Union that is valid when `has_uid` is set to `true`
 * @field uid.uid               uid of user that was logged in.
 *
 * @note This is a connection-level event.  An SSH connection that is used
 * for multiple interactive sessions and/or non-interactive commands will
 * emit only a single successful login event.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_openssh_login_t {

    public init()

    public init(success: Bool, result_type: es_openssh_login_result_type_t, source_address_type: es_address_type_t, source_address: es_string_token_t, username: es_string_token_t, has_uid: Bool, uid: es_event_openssh_login_t.__Unnamed_union_uid)

    
    public struct __Unnamed_union_uid {

        public init(uid: uid_t)

        public init()

        public var uid: uid_t
    }

    public var success: Bool

    public var result_type: es_openssh_login_result_type_t

    public var source_address_type: es_address_type_t

    public var source_address: es_string_token_t

    public var username: es_string_token_t

    public var has_uid: Bool

    public var uid: es_event_openssh_login_t.__Unnamed_union_uid
}

/**
 * @brief Notification for OpenSSH logout event.
 *
 * @field source_address_type   Type of address used in the connection.
 * @field source_address        Source address of the connection.
 * @field username              Username which got logged out.
 * @field uid                   uid of user that was logged out.
 *
 * @note This is a connection-level event.  An SSH connection that is used
 * for multiple interactive sessions and/or non-interactive commands will
 * emit only a single logout event.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_openssh_logout_t {

    public init()

    public init(source_address_type: es_address_type_t, source_address: es_string_token_t, username: es_string_token_t, uid: uid_t)

    public var source_address_type: es_address_type_t

    public var source_address: es_string_token_t

    public var username: es_string_token_t

    public var uid: uid_t
}

/**
 * @brief Notification for authenticated login event from /usr/bin/login.
 *
 * @field success               True iff login was successful.
 * @field failure_message       Optional. Failure message generated.
 * @field username              Username used for login.
 * @field has_uid               Describes whether or not the uid of the user logged in is available or not.
 * @field uid                   Union that is valid when `has_uid` is set to `true`
 * @field uid.uid               uid of user that was logged in.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_login_login_t {

    public init()

    public init(success: Bool, failure_message: es_string_token_t, username: es_string_token_t, has_uid: Bool, uid: es_event_login_login_t.__Unnamed_union_uid)

    
    public struct __Unnamed_union_uid {

        public init(uid: uid_t)

        public init()

        public var uid: uid_t
    }

    public var success: Bool

    public var failure_message: es_string_token_t

    public var username: es_string_token_t

    public var has_uid: Bool

    public var uid: es_event_login_login_t.__Unnamed_union_uid
}

/**
 * @brief Notification for authenticated logout event from /usr/bin/login.
 *
 * @field username              Username used for login.
 * @field uid                   uid of user that was logged in.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_login_logout_t {

    public init()

    public init(username: es_string_token_t, uid: uid_t)

    public var username: es_string_token_t

    public var uid: uid_t
}

/**
 * @brief Notification for launch item being made known to background
 *        task management.  This includes launch agents and daemons as
 *        well as login items added by the user, via MDM or by an app.
 *
 * @field instigator            Optional.  Process that instigated the BTM operation
 *                              (XPC caller that asked for the item to be added).
 * @field app                   Optional.  App process that registered the item.
 * @field item                  BTM launch item.
 * @field executable_path       Optional.  If available and applicable, the POSIX executable
 *                              path from the launchd plist.
 *                              If the path is relative, it is relative to item->app_url.
 *
 * @note May be emitted for items where an add was already seen previously,
 *       with or without the item having changed.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_btm_launch_item_add_t {

    public init(instigator: UnsafeMutablePointer<es_process_t>?, app: UnsafeMutablePointer<es_process_t>?, item: UnsafeMutablePointer<es_btm_launch_item_t>, executable_path: es_string_token_t)

    public var instigator: UnsafeMutablePointer<es_process_t>?

    public var app: UnsafeMutablePointer<es_process_t>?

    public var item: UnsafeMutablePointer<es_btm_launch_item_t>

    public var executable_path: es_string_token_t
}

/**
 * @brief Notification for launch item being removed from background
 *        task management.  This includes launch agents and daemons as
 *        well as login items added by the user, via MDM or by an app.
 *
 * @field instigator            Optional.  Process that instigated the BTM operation
 *                              (XPC caller that asked for the item to be removed).
 * @field app                   Optional.  App process that registered the item.
 * @field item                  BTM launch item.
 *
 * @note This event type does not support caching (notify-only).
 */
public struct es_event_btm_launch_item_remove_t {

    public init(instigator: UnsafeMutablePointer<es_process_t>?, app: UnsafeMutablePointer<es_process_t>?, item: UnsafeMutablePointer<es_btm_launch_item_t>)

    public var instigator: UnsafeMutablePointer<es_process_t>?

    public var app: UnsafeMutablePointer<es_process_t>?

    public var item: UnsafeMutablePointer<es_btm_launch_item_t>
}

/**
 * Union of all possible events that can appear in an es_message_t
 */
public struct es_events_t {

    public init(access: es_event_access_t)

    public init(chdir: es_event_chdir_t)

    public init(chroot: es_event_chroot_t)

    public init(clone: es_event_clone_t)

    public init(close: es_event_close_t)

    public init(copyfile: es_event_copyfile_t)

    public init(create: es_event_create_t)

    public init(cs_invalidated: es_event_cs_invalidated_t)

    public init(deleteextattr: es_event_deleteextattr_t)

    public init(dup: es_event_dup_t)

    public init(exchangedata: es_event_exchangedata_t)

    public init(exec: es_event_exec_t)

    public init(exit: es_event_exit_t)

    public init(file_provider_materialize: es_event_file_provider_materialize_t)

    public init(file_provider_update: es_event_file_provider_update_t)

    public init(fcntl: es_event_fcntl_t)

    public init(fork: es_event_fork_t)

    public init(fsgetpath: es_event_fsgetpath_t)

    public init(get_task: es_event_get_task_t)

    public init(get_task_read: es_event_get_task_read_t)

    public init(get_task_inspect: es_event_get_task_inspect_t)

    public init(get_task_name: es_event_get_task_name_t)

    public init(getattrlist: es_event_getattrlist_t)

    public init(getextattr: es_event_getextattr_t)

    public init(iokit_open: es_event_iokit_open_t)

    public init(kextload: es_event_kextload_t)

    public init(kextunload: es_event_kextunload_t)

    public init(link: es_event_link_t)

    public init(listextattr: es_event_listextattr_t)

    public init(lookup: es_event_lookup_t)

    public init(mmap: es_event_mmap_t)

    public init(mount: es_event_mount_t)

    public init(mprotect: es_event_mprotect_t)

    public init(open: es_event_open_t)

    public init(proc_check: es_event_proc_check_t)

    public init(proc_suspend_resume: es_event_proc_suspend_resume_t)

    public init(pty_close: es_event_pty_close_t)

    public init(pty_grant: es_event_pty_grant_t)

    public init(readdir: es_event_readdir_t)

    public init(readlink: es_event_readlink_t)

    public init(remote_thread_create: es_event_remote_thread_create_t)

    public init(remount: es_event_remount_t)

    public init(rename: es_event_rename_t)

    public init(searchfs: es_event_searchfs_t)

    public init(setacl: es_event_setacl_t)

    public init(setattrlist: es_event_setattrlist_t)

    public init(setextattr: es_event_setextattr_t)

    public init(setflags: es_event_setflags_t)

    public init(setmode: es_event_setmode_t)

    public init(setowner: es_event_setowner_t)

    public init(settime: es_event_settime_t)

    public init(setuid: es_event_setuid_t)

    public init(setgid: es_event_setgid_t)

    public init(seteuid: es_event_seteuid_t)

    public init(setegid: es_event_setegid_t)

    public init(setreuid: es_event_setreuid_t)

    public init(setregid: es_event_setregid_t)

    public init(signal: es_event_signal_t)

    public init(stat: es_event_stat_t)

    public init(trace: es_event_trace_t)

    public init(truncate: es_event_truncate_t)

    public init(uipc_bind: es_event_uipc_bind_t)

    public init(uipc_connect: es_event_uipc_connect_t)

    public init(unlink: es_event_unlink_t)

    public init(unmount: es_event_unmount_t)

    public init(utimes: es_event_utimes_t)

    public init(write: es_event_write_t)

    public init(authentication: UnsafeMutablePointer<es_event_authentication_t>)

    public init(xp_malware_detected: UnsafeMutablePointer<es_event_xp_malware_detected_t>)

    public init(xp_malware_remediated: UnsafeMutablePointer<es_event_xp_malware_remediated_t>)

    public init(lw_session_login: UnsafeMutablePointer<es_event_lw_session_login_t>)

    public init(lw_session_logout: UnsafeMutablePointer<es_event_lw_session_logout_t>)

    public init(lw_session_lock: UnsafeMutablePointer<es_event_lw_session_lock_t>)

    public init(lw_session_unlock: UnsafeMutablePointer<es_event_lw_session_unlock_t>)

    public init(screensharing_attach: UnsafeMutablePointer<es_event_screensharing_attach_t>)

    public init(screensharing_detach: UnsafeMutablePointer<es_event_screensharing_detach_t>)

    public init(openssh_login: UnsafeMutablePointer<es_event_openssh_login_t>)

    public init(openssh_logout: UnsafeMutablePointer<es_event_openssh_logout_t>)

    public init(login_login: UnsafeMutablePointer<es_event_login_login_t>)

    public init(login_logout: UnsafeMutablePointer<es_event_login_logout_t>)

    public init(btm_launch_item_add: UnsafeMutablePointer<es_event_btm_launch_item_add_t>)

    public init(btm_launch_item_remove: UnsafeMutablePointer<es_event_btm_launch_item_remove_t>)

    /**
         * Events added before macOS 13.0 use structs directly.
         */
    public var access: es_event_access_t

    public var chdir: es_event_chdir_t

    public var chroot: es_event_chroot_t

    public var clone: es_event_clone_t

    public var close: es_event_close_t

    public var copyfile: es_event_copyfile_t

    public var create: es_event_create_t

    public var cs_invalidated: es_event_cs_invalidated_t

    public var deleteextattr: es_event_deleteextattr_t

    public var dup: es_event_dup_t

    public var exchangedata: es_event_exchangedata_t

    public var exec: es_event_exec_t

    public var exit: es_event_exit_t

    public var file_provider_materialize: es_event_file_provider_materialize_t

    public var file_provider_update: es_event_file_provider_update_t

    public var fcntl: es_event_fcntl_t

    public var fork: es_event_fork_t

    public var fsgetpath: es_event_fsgetpath_t

    public var get_task: es_event_get_task_t

    public var get_task_read: es_event_get_task_read_t

    public var get_task_inspect: es_event_get_task_inspect_t

    public var get_task_name: es_event_get_task_name_t

    public var getattrlist: es_event_getattrlist_t

    public var getextattr: es_event_getextattr_t

    public var iokit_open: es_event_iokit_open_t

    public var kextload: es_event_kextload_t

    public var kextunload: es_event_kextunload_t

    public var link: es_event_link_t

    public var listextattr: es_event_listextattr_t

    public var lookup: es_event_lookup_t

    public var mmap: es_event_mmap_t

    public var mount: es_event_mount_t

    public var mprotect: es_event_mprotect_t

    public var open: es_event_open_t

    public var proc_check: es_event_proc_check_t

    public var proc_suspend_resume: es_event_proc_suspend_resume_t

    public var pty_close: es_event_pty_close_t

    public var pty_grant: es_event_pty_grant_t

    public var readdir: es_event_readdir_t

    public var readlink: es_event_readlink_t

    public var remote_thread_create: es_event_remote_thread_create_t

    public var remount: es_event_remount_t

    public var rename: es_event_rename_t

    public var searchfs: es_event_searchfs_t

    public var setacl: es_event_setacl_t

    public var setattrlist: es_event_setattrlist_t

    public var setextattr: es_event_setextattr_t

    public var setflags: es_event_setflags_t

    public var setmode: es_event_setmode_t

    public var setowner: es_event_setowner_t

    public var settime: es_event_settime_t

    public var setuid: es_event_setuid_t

    public var setgid: es_event_setgid_t

    public var seteuid: es_event_seteuid_t

    public var setegid: es_event_setegid_t

    public var setreuid: es_event_setreuid_t

    public var setregid: es_event_setregid_t

    public var signal: es_event_signal_t

    public var stat: es_event_stat_t

    public var trace: es_event_trace_t

    public var truncate: es_event_truncate_t

    public var uipc_bind: es_event_uipc_bind_t

    public var uipc_connect: es_event_uipc_connect_t

    public var unlink: es_event_unlink_t

    public var unmount: es_event_unmount_t

    public var utimes: es_event_utimes_t

    public var write: es_event_write_t

    
    /**
         * Events added in macOS 13.0 or later use nonnull pointers.
         */
    public var authentication: UnsafeMutablePointer<es_event_authentication_t>

    public var xp_malware_detected: UnsafeMutablePointer<es_event_xp_malware_detected_t>

    public var xp_malware_remediated: UnsafeMutablePointer<es_event_xp_malware_remediated_t>

    public var lw_session_login: UnsafeMutablePointer<es_event_lw_session_login_t>

    public var lw_session_logout: UnsafeMutablePointer<es_event_lw_session_logout_t>

    public var lw_session_lock: UnsafeMutablePointer<es_event_lw_session_lock_t>

    public var lw_session_unlock: UnsafeMutablePointer<es_event_lw_session_unlock_t>

    public var screensharing_attach: UnsafeMutablePointer<es_event_screensharing_attach_t>

    public var screensharing_detach: UnsafeMutablePointer<es_event_screensharing_detach_t>

    public var openssh_login: UnsafeMutablePointer<es_event_openssh_login_t>

    public var openssh_logout: UnsafeMutablePointer<es_event_openssh_logout_t>

    public var login_login: UnsafeMutablePointer<es_event_login_login_t>

    public var login_logout: UnsafeMutablePointer<es_event_login_logout_t>

    public var btm_launch_item_add: UnsafeMutablePointer<es_event_btm_launch_item_add_t>

    public var btm_launch_item_remove: UnsafeMutablePointer<es_event_btm_launch_item_remove_t>
}

/**
 * es_result_t indicates the result of the ES subsystem authorization process
 * The result_type field indicates if the result is an es_auth_result_t or a uint32_t (flags)
 */
public struct es_result_t {

    public init()

    public init(result_type: es_result_type_t, result: es_result_t.__Unnamed_union_result)

    
    public struct __Unnamed_union_result {

        public init(auth: es_auth_result_t)

        public init(flags: UInt32)

        public init(reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))

        public init()

        public var auth: es_auth_result_t

        public var flags: UInt32

        public var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    }

    public var result_type: es_result_type_t

    public var result: es_result_t.__Unnamed_union_result
}

/**
 * @brief es_message_t is the top level datatype that encodes information sent
 * from the ES subsystem to its clients.  Each security event being processed
 * by the ES subsystem will be encoded in an es_message_t.  A message can be an
 * authorization request or a notification of an event that has already taken
 * place.
 *
 * @field version Indicates the message version; some fields are not available
 *        and must not be accessed unless the message version is equal to or
 *        higher than the message version at which the field was introduced.
 * @field time The time at which the event was generated.
 * @field mach_time The Mach absolute time at which the event was generated.
 * @field deadline The Mach absolute time before which an auth event must
 *        be responded to. If a client fails to respond to auth events prior to the `deadline`,
 *        the client will be killed.
 *        Each message can contain its own unique deadline, and some deadlines
 *        can vary substantially. Clients must take care to inspect the deadline
 *        value of each message to know how much time is allotted for processing.
 * @field process Describes the process that took the action.
 * @field seq_num Per-client, per-event-type sequence number that can be
 *        inspected to detect whether the kernel had to drop events for this
 *        client.  When no events are dropped for this client, seq_num
 *        increments by 1 for every message of that event type.  When events
 *        have been dropped, the difference between the last seen sequence
 *        number of that event type plus 1 and seq_num of the received message
 *        indicates the number of events that had to be dropped.
 *        Dropped events generally indicate that more events were generated in
 *        the kernel than the client was able to handle.
 *        Field available only if message version >= 2.
 *        @see global_seq_num
 * @field action_type Indicates if the action field is an auth or notify action.
 * @field action For auth events, contains the opaque auth ID that must be
 *        supplied when responding to the event.  For notify events, describes
 *        the result of the action.
 * @field event_type Indicates which event struct is defined in the event union.
 * @field event Contains data specific to the event type.
 * @field thread Describes the thread that took the action.  May be NULL when
 *        thread is not applicable, for example for trace events that describe
 *        the traced process calling ptrace(PT_TRACE_ME) or for cs invalidated
 *        events that are a result of another process calling
 *        csops(CS_OPS_MARKINVALID).
 *        Field available only if message version >= 4.
 * @field global_seq_num Per-client sequence number that can be inspected to
 *        detect whether the kernel had to drop events for this client. When no
 *        events are dropped for this client, global_seq_num increments by 1 for
 *        every message. When events have been dropped, the difference between
 *        the last seen global sequence number and the global_seq_num of the
 *        received message indicates the number of events that had to be dropped.
 *        Dropped events generally indicate that more events were generated in
 *        the kernel than the client was able to handle.
 *        Field available only if message version >= 4.
 *        @see seq_num
 * @field opaque Opaque data that must not be accessed directly.
 *
 * @note For events that can be authorized there are unique NOTIFY and AUTH
 * event types for the same event data, eg: event.exec is the correct union
 * label for both ES_EVENT_TYPE_AUTH_EXEC and ES_EVENT_TYPE_NOTIFY_EXEC event
 * types.
 *
 * @note For fields marked only available in specific message versions, all
 * access must be guarded at runtime by checking the value of the message
 * version field, e.g.
 * ```
 * if (msg->version >= 2) {
 *     acl = msg->event.create.acl;
 * }
 * ```
 *
 * @note Fields using Mach time are in the resolution matching the ES client's
 * architecture.  This means they can be compared to mach_absolute_time() and
 * converted to nanoseconds with the help of mach_timebase_info().  Further
 * note that on Apple silicon, x86_64 clients running under Rosetta 2 will see
 * Mach times in a different resolution than native arm64 clients.  For more
 * information on differences regarding Mach time on Apple silicon and Intel-based
 * Mac computers, see "Addressing Architectural Differences in Your macOS Code":
 * https://developer.apple.com/documentation/apple_silicon/addressing_architectural_differences_in_your_macos_code
 */
public struct es_message_t {

    
    /* field available only if message version >= 2 */
    
    public struct __Unnamed_union_action {

        public init(auth: es_event_id_t)

        public init(notify: es_result_t)

        public init()

        public var auth: es_event_id_t

        public var notify: es_result_t
    }

    public var version: UInt32

    public var time: timespec

    public var mach_time: UInt64

    public var deadline: UInt64

    public var process: UnsafeMutablePointer<es_process_t>

    public var seq_num: UInt64

    public var action_type: es_action_type_t

    public var action: es_message_t.__Unnamed_union_action

    public var event_type: es_event_type_t

    public var event: es_events_t

    public var thread: UnsafeMutablePointer<es_thread_t>? /* field available only if message version >= 4 */

    public var global_seq_num: UInt64 /* field available only if message version >= 4 */
}

/* Opaque data that must not be accessed directly */

/**
 * Calculate the size of an es_message_t.
 *
 * @warning This function MUST NOT be used in conjunction with attempting to copy an es_message_t (e.g.
 * by using the reported size in order to `malloc(3)` a buffer, and `memcpy(3)` an existing es_message_t
 * into that buffer). Doing so will result in use-after-free bugs.
 *
 * @deprecated Please use `es_retain_message` to retain an es_message_t.
 *
 * @param msg The message for which the size will be calculated
 * @return Size of the message
 */
@available(macOS, introduced: 10.15, deprecated: 11.0, message: "Please use es_retain_message to retain a message. Do not use this in conjunction with attempting to copy a message, doing so will result in use-after-free bugs.")
public func es_message_size(_ msg: UnsafePointer<es_message_t>) -> Int

/**
 * Retains an es_message_t, returning a non-const pointer to the given es_message_t for compatibility with
 * existing code.
 *
 * @warning It is invalid to attempt to write to the returned es_message_t, despite being non-const, and
 * doing so will result in a crash.
 *
 * @deprecated Use es_retain_message to retain a message.
 *
 * @param msg The message to be retained
 * @return non-const pointer to the retained es_message_t.
 *
 * @brief The caller must release the memory with `es_free_message`
 */
@available(macOS, introduced: 10.15, deprecated: 11.0, message: "Use es_retain_message to retain a message.")
public func es_copy_message(_ msg: UnsafePointer<es_message_t>) -> UnsafeMutablePointer<es_message_t>?

/**
 * Releases the memory associated with the given es_message_t that was retained via `es_copy_message`
 *
 * @deprecated Use `es_release_message` to release a message.
 *
 * @param msg The message to be released
 */
@available(macOS, introduced: 10.15, deprecated: 11.0, message: "Use es_release_message to release a message.")
public func es_free_message(_ msg: UnsafeMutablePointer<es_message_t>)

/**
 * Retains the given es_message_t, extending its lifetime until released with `es_release_message`.
 *
 * @param msg The message to be retained
 *
 * @note It is necessary to retain a message when the es_message_t provided in the event handler block of
 * `es_new_client` will be processed asynchronously.
 */
@available(macOS 11.0, *)
public func es_retain_message(_ msg: UnsafePointer<es_message_t>)

/**
 * Releases the given es_message_t that was previously retained with `es_retain_message`
 *
 * @param msg The message to be released
 */
@available(macOS 11.0, *)
public func es_release_message(_ msg: UnsafePointer<es_message_t>)

/**
 * Get the number of arguments in a message containing an es_event_exec_t
 * @param event The es_event_exec_t being inspected
 * @return The number of arguments
 */
@available(macOS 10.15, *)
public func es_exec_arg_count(_ event: UnsafePointer<es_event_exec_t>) -> UInt32

/**
 * Get the number of environment variables in a message containing an es_event_exec_t
 * @param event The es_event_exec_t being inspected
 * @return The number of environment variables
 */
@available(macOS 10.15, *)
public func es_exec_env_count(_ event: UnsafePointer<es_event_exec_t>) -> UInt32

/**
 * Get the number of file descriptors in a message containing an es_event_exec_t
 * @param event The es_event_exec_t being inspected
 * @return The number of file descriptors
 */
@available(macOS 11.0, *)
public func es_exec_fd_count(_ event: UnsafePointer<es_event_exec_t>) -> UInt32

/**
 * Get the argument at the specified position in the message containing an es_event_exec_t
 * @param event The es_event_exec_t being inspected
 * @param index Index of the argument to retrieve (starts from 0)
 * @return  es_string_token_t containing a pointer to the argument and its length.
 *          This is a zero-allocation operation. The returned pointer must not outlive exec_event.
 * @brief Reading an an argument where `index` >= `es_exec_arg_count()` is undefined
 */
@available(macOS 10.15, *)
public func es_exec_arg(_ event: UnsafePointer<es_event_exec_t>, _ index: UInt32) -> es_string_token_t

/**
 * Get the environment variable at the specified position in the message containing an es_event_exec_t
 * @param event The es_event_exec_t being inspected
 * @param index Index of the environment variable to retrieve (starts from 0)
 * @return  es_string_token_t containing a pointer to the environment variable and its length.
 *          This is zero-allocation operation. The returned pointer must not outlive exec_event.
 * @brief Reading an an env where `index` >= `es_exec_env_count()` is undefined
 */
@available(macOS 10.15, *)
public func es_exec_env(_ event: UnsafePointer<es_event_exec_t>, _ index: UInt32) -> es_string_token_t

/**
 * Get the file descriptor at the specified position in the message containing an es_event_exec_t
 * @param event The es_event_exec_t being inspected
 * @param index Index of the file descriptor to retrieve (starts from 0)
 * @return Pointer to es_fd_t describing the file descriptor.
 *         This is zero-allocation operation. The returned pointer must not outlive exec_event.
 * @note Reading an fd where `index` >= `es_exec_fd_count()` is undefined
 */
@available(macOS 11.0, *)
public func es_exec_fd(_ event: UnsafePointer<es_event_exec_t>, _ index: UInt32) -> UnsafePointer<es_fd_t>

/**
 * This typedef is no longer used, but exists for API backwards compatibility.
 */
public typealias es_statfs_t = statfs
/**
 * es_client_t is an opaque type that stores the endpoint security client state
 */

/**
 * Subscribe to some set of events
 * @param client The client that will be subscribing
 * @param events Array of es_event_type_t to subscribe to
 * @param event_count Count of es_event_type_t in `events`
 * @return es_return_t indicating success or error
 *
 * @note Subscribing to new event types does not remove previous subscriptions.
 *
 * @note Subscribing to events is not optional for clients that have opted into
 *       early boot mode (see NSEndpointSecurityEarlyBoot in EndpointSecurity(7)).
 *       Early boot clients that fail to subscribe to at least one event type will
 *       cause early boot to time out, resulting in a bad user experience and
 *       risking watchdog timeout panics.
 */
@available(macOS 10.15, *)
public func es_subscribe(_ client: OpaquePointer, _ events: UnsafePointer<es_event_type_t>, _ event_count: UInt32) -> es_return_t

/**
 * Unsubscribe from some set of events
 * @param client The client that will be unsubscribing
 * @param events Array of es_event_type_t to unsubscribe from
 * @param event_count Count of es_event_type_t in `events`
 * @return es_return_t indicating success or error
 * @note Events not included in the given `events` array that were previously subscribed to will continue to be subscribed to
 */
@available(macOS 10.15, *)
public func es_unsubscribe(_ client: OpaquePointer, _ events: UnsafePointer<es_event_type_t>, _ event_count: UInt32) -> es_return_t

/**
 * Unsubscribe from all events
 * @param client The client that will be unsubscribing
 * @return es_return_t indicating success or error
 */
@available(macOS 10.15, *)
public func es_unsubscribe_all(_ client: OpaquePointer) -> es_return_t

/**
 * List subscriptions
 * @param client The client for which subscriptions will be listed
 * @param count Out param that reports the number of subscriptions written
 * @param subscriptions  Out param for pointer to subscription data
 * @return es_return_t indicating success or error
 * @brief The caller takes ownership of the memory at `*subscriptions` and must free it
 */
@available(macOS 10.15, *)
public func es_subscriptions(_ client: OpaquePointer, _ count: UnsafeMutablePointer<Int>, _ subscriptions: UnsafeMutablePointer<UnsafeMutablePointer<es_event_type_t>>?) -> es_return_t

/**
 * Respond to an auth event that requires an es_auth_result_t response
 * @param client The client that produced the event
 * @param message The message being responded to
 * @param result A result indicating the action the ES subsystem should take
 * @param cache Indicates if this result should be cached.  The specific
 *        caching semantics depend on es_event_type_t.  Cache key is generally
 *        the involved files, with modifications to those files invalidating
 *        the cache entry.  A cache hit leads to no AUTH event being produced,
 *        while still producing a NOTIFY event normally.
 *        The cache argument is ignored for events that do not support caching.
 * @return es_respond_result_t indicating success or an error
 * @brief Some events must be responded to with `es_respond_flags_result`. Responding to flags events with this function will fail.
 */
@available(macOS 10.15, *)
public func es_respond_auth_result(_ client: OpaquePointer, _ message: UnsafePointer<es_message_t>, _ result: es_auth_result_t, _ cache: Bool) -> es_respond_result_t

/**
 * Respond to an auth event that requires an uint32_t flags response
 * @param client The client that produced the event
 * @param message The message being responded to
 * @param authorized_flags A flags value that will mask the flags in event being
 *        responded to; pass 0 to deny and UINT32_MAX to allow regardless of what
 *        flags are set on the event.
 * @param cache Indicates if this result should be cached.  The specific
 *        caching semantics depend on es_event_type_t.  Cache key is generally
 *        the involved files, with modifications to those files invalidating
 *        the cache entry.  A cache hit leads to no AUTH event being produced,
 *        while still producing a NOTIFY event normally.
 *        The cache argument is ignored for events that do not support caching.
 * @return es_respond_result_t indicating success or an error
 * @brief Some events must be responded to with `es_respond_auth_result`. Responding to auth events with the function will fail.
 * @note Enabling caching caches authorized_flags.  Subsequent cache hits
 *       will result in the event being allowed only if the flags of the
 *       event are a subset of the flags in authorized_flags, and denied
 *       otherwise.  As a result, UINT32_MAX should be passed for
 *       authorized_flags, unless denying events with certain flags is
 *       intentional.  A common mistake is passing the flags from the
 *       event, which together with caching may result in subsequent
 *       events getting unintentionally denied if they have flags set
 *       that were not set in the cached authorized_flags.
 */
@available(macOS 10.15, *)
public func es_respond_flags_result(_ client: OpaquePointer, _ message: UnsafePointer<es_message_t>, _ authorized_flags: UInt32, _ cache: Bool) -> es_respond_result_t

/**
 * @brief Suppress all events from the process described by the given `audit_token`
 *
 * @param client The client for which events will be suppressed
 * @param audit_token The audit token of the process for which events will be suppressed
 *
 * @return es_return_t indicating success or error
 *
 * @see es_mute_process_events
 */
@available(macOS 10.15, *)
public func es_mute_process(_ client: OpaquePointer, _ audit_token: UnsafePointer<audit_token_t>) -> es_return_t

/**
 * @brief Suppress a subset of events from the process described by the given `audit_token`
 *
 * @param client The client for which events will be suppressed
 * @param audit_token The audit token of the process for which events will be suppressed
 * @param events Array of event types for which the audit_token should be muted.
 * @param event_count The number of items in the `events` array.
 *
 * @return es_return_t A value indicating whether or not the process was successfully muted.
 *
 * @see es_mute_process
 */
@available(macOS 12.0, *)
public func es_mute_process_events(_ client: OpaquePointer, _ audit_token: UnsafePointer<audit_token_t>, _ events: UnsafePointer<es_event_type_t>, _ event_count: Int) -> es_return_t

/**
 * @brief Unmute a process for all event types
 *
 * @param client The client for which the process will be unmuted
 * @param audit_token The audit token of the process to be unmuted
 *
 * @return es_return_t indicating success or error
 *
 * @see es_unmute_process_events
 */
@available(macOS 10.15, *)
public func es_unmute_process(_ client: OpaquePointer, _ audit_token: UnsafePointer<audit_token_t>) -> es_return_t

/**
 * @brief Unmute a process for a subset of event types.
 *
 * @param client The client for which events will be unmuted
 * @param audit_token The audit token of the process for which events will be unmuted
 * @param events Array of event types to unmute for the process
 * @param event_count The number of items in the `events` array.
 *
 * @return es_return_t A value indicating whether or not the process was successfully unmuted.
 *
 * @see es_unmute_path
 */
@available(macOS 12.0, *)
public func es_unmute_process_events(_ client: OpaquePointer, _ audit_token: UnsafePointer<audit_token_t>, _ events: UnsafePointer<es_event_type_t>, _ event_count: Int) -> es_return_t

/**
 * List muted processes
 * @param client The client for which muted processes will be listed
 * @param count Out param that reports the number of audit tokens written
 * @param audit_tokens  Out param for pointer to audit_token data
 * @return es_return_t indicating success or error
 * @brief The caller takes ownership of the memory at `*audit_tokens` and must free it.
 *        If there are no muted processes and the call completes successfully,
 *        `*count` is set to 0 and `*audit_token` is set to NULL.
 * @note The audit tokens are returned in the same state as they were passed to
 *       `es_mute_process` and may not accurately reflect the current state of the
 *       respective processes.
 */
@available(macOS, introduced: 10.15, deprecated: 12.0, message: "Please use es_muted_processes_events.")
public func es_muted_processes(_ client: OpaquePointer, _ count: UnsafeMutablePointer<Int>, _ audit_tokens: UnsafeMutablePointer<UnsafeMutablePointer<audit_token_t>>?) -> es_return_t

/**
 * @brief Retrieve a list of all muted processes.
 *
 * @param client The es_client_t for which the muted processes will be retrieved.
 * @param muted_processes OUT param the will contain newly created memory describing the set of
 *        muted processes. This memory must be deleted using `es_release_muted_processes`.
 *
 * @return es_return_t A value indicating whether or not the list of muted processes were
 *         successfully retrieved.
 *
 * @see es_release_muted_processes
 */
@available(macOS 12.0, *)
public func es_muted_processes_events(_ client: OpaquePointer, _ muted_processes: UnsafeMutablePointer<UnsafeMutablePointer<es_muted_processes_t>?>) -> es_return_t

/**
 * @brief Delete a set of muted processes obtained from `es_muted_processes_events`, freeing resources.
 *
 * @param muted_processes A set of muted processes to delete.
 *
 * @see es_muted_processes_all_events
 */
@available(macOS 12.0, *)
public func es_release_muted_processes(_ muted_processes: UnsafeMutablePointer<es_muted_processes_t>)

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
 * For example a rename will be suppressed if and only if both the source path and desintiation path are muted.
 * Supported events are listed below. For each event the target path is defined as:
 *
 * EXEC: The file being executed
 * OPEN: The file being opened
 * MMAP: The file being memeory mapped
 * RENAME: Both the source and destination path.
 * SIGNAL: The path of the process being signalled
 * UNLINK: The file being unlinked
 * CLOSE: The file being closed
 * CREATE: The path to the file that will be created or replaced
 * GET_TASK: The path of the process for which the task port is being retrieved
 * LINK: Both the source and desintation path
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
 * DELETEEXTATTR The file for which extended attribtes will be deleted
 * DUP: The file being duplicated
 * UIPC_BIND: The path to the unix socket that will be created
 * UIPC_CONNECT: The file that the unix socket being connected is bound to
 * EXCHANGEDATA: The path of both file1 and file2
 * SETACL: The file for which ACLs are being set
 * PROC_CHECK: The path of the process against which access is beign checked
 * SEARCHFS: The path of the volume which will be searched
 * PROC_SUSPEND_RESUME: The path of the process being suspended or resumed
 * GET_TASK_NAME: The path of the process for which the task name port will be retrieved
 * TRACE: The path of the process that will be attached to
 * REMOTE_THREAD_CREATE: The path of the process in which the new thread is created
 * GET_TASK_READ: The path of the process for which the task read port will be retrieved
 * GET_TASK_INSPECT: The path of the process for which the task inspect port will be retrieved
 * COPYFILE: The path to the source file and the path to either the new file to be created or the existing file to be overwritten
 */
@available(macOS 12.0, *)
public func es_mute_path(_ client: OpaquePointer, _ path: UnsafePointer<CChar>, _ type: es_mute_path_type_t) -> es_return_t

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
@available(macOS 12.0, *)
public func es_mute_path_events(_ client: OpaquePointer, _ path: UnsafePointer<CChar>, _ type: es_mute_path_type_t, _ events: UnsafePointer<es_event_type_t>, _ event_count: Int) -> es_return_t

/**
 * Suppress events matching a path prefix
 *
 * @deprecated Please use `es_mute_path` or `es_mute_path_events`
 *
 * @param client The client for which events will be suppressed
 * @param path_prefix The path against which supressed executables must prefix match
 * @return es_return_t indicating success or error
 */
@available(macOS, introduced: 10.15, deprecated: 12.0, message: "Please use es_mute_path or es_mute_path_events.")
public func es_mute_path_prefix(_ client: OpaquePointer, _ path_prefix: UnsafePointer<CChar>) -> es_return_t

/**
 * Suppress events matching a path literal
 *
 * @deprecated Please use `es_mute_path` or `es_mute_path_events`
 *
 * @param client The client for which events will be suppressed
 * @param path_literal The path against which supressed executables must match exactly
 * @return es_return_t indicating success or error
 *
 * @see es_mute_path
 * @see es_mute_path_events
 */
@available(macOS, introduced: 10.15, deprecated: 12.0, message: "Please use es_mute_path or es_mute_path_events.")
public func es_mute_path_literal(_ client: OpaquePointer, _ path_literal: UnsafePointer<CChar>) -> es_return_t

/**
 * Unmute all paths
 * @param client The client for which all currently muted paths will be unmuted
 * @return es_return_t indicating success or error
 *
 * @note Only unmutes executable paths. To unmute target paths see: `es_unmute_all_target_paths`.
 */
@available(macOS 10.15, *)
public func es_unmute_all_paths(_ client: OpaquePointer) -> es_return_t

/**
 * Unmute all target paths
 * @param client The client for which all currently muted target paths will be unmuted
 * @return es_return_t indicating success or error
 */
@available(macOS 13.0, *)
public func es_unmute_all_target_paths(_ client: OpaquePointer) -> es_return_t

/**
 * @brief Unmute a path for all event types.
 *
 * @param client The es_client_t for which the path will be unmuted.
 * @param path The path to unmute.
 * @param type Describes the type of the `path` parameter, either a prefix path or literal path.
 *
 * @return es_return_t A value indicating whether or not the path was successfully unmuted.
 *
 * @note Muting and unuting operations logically work on a set of (path_type, path, es_event_type_t) tuples
 * Subtracting an element from the set that is not present has no effect
 * For example if `(literal, /foo/bar/, *)` is muted
 * Then `(prefix, /foo, *)` is unmuted the mute set is still:
 * `(literal, /foo/bar, *)`.
 * Prefixes only apply to mute evalation not to modifications of the mute set.
 *
 * @see es_unmute_path_events
 */
@available(macOS 12.0, *)
public func es_unmute_path(_ client: OpaquePointer, _ path: UnsafePointer<CChar>, _ type: es_mute_path_type_t) -> es_return_t

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
@available(macOS 12.0, *)
public func es_unmute_path_events(_ client: OpaquePointer, _ path: UnsafePointer<CChar>, _ type: es_mute_path_type_t, _ events: UnsafePointer<es_event_type_t>, _ event_count: Int) -> es_return_t

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
@available(macOS 12.0, *)
public func es_muted_paths_events(_ client: OpaquePointer, _ muted_paths: UnsafeMutablePointer<UnsafeMutablePointer<es_muted_paths_t>>?) -> es_return_t

/**
 * @brief Delete a set of muted paths obtained from `es_muted_paths_events`, freeing resources.
 *
 * @param muted_paths A set of muted paths to delete.
 *
 * @see es_muted_paths_events
 */
@available(macOS 12.0, *)
public func es_release_muted_paths(_ muted_paths: UnsafeMutablePointer<es_muted_paths_t>)

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
@available(macOS 13.0, *)
public func es_invert_muting(_ client: OpaquePointer, _ mute_type: es_mute_inversion_type_t) -> es_return_t

/*
 * @brief Query mute inversion state
 *
 * @param client The es_client_t for which mute inversion state is being queried.
 * @param mute_type The type of muting to query (process, path, or target path).
 *
 * @return es_mute_inverted_return_t Indicates if muting was inverted, not inverted, or if an error occurred.
 */
@available(macOS 13.0, *)
public func es_muting_inverted(_ client: OpaquePointer, _ mute_type: es_mute_inversion_type_t) -> es_mute_inverted_return_t

/**
 * Clear all cached results for all clients.
 * @param client that will perform the request
 * @return es_clear_cache_result_t value indicating success or an error
 * @discussion This functions clears the shared cache for all ES clients and is hence rate limited.
 *             If es_clear_cache is called too frequently it will return ES_CLEAR_CACHE_RESULT_ERR_THROTTLE
 *             It is permissible to pass any valid es_client_t object created by `es_new_client`
 */
@available(macOS 10.15, *)
public func es_clear_cache(_ client: OpaquePointer) -> es_clear_cache_result_t

/**
 * es_handler_block_t The type of block that will be invoked to handled messages from the ES subsystem
 * The es_client_t is a handle to the client being sent the event. It must be passed to any "respond" functions
 * The es_message_t is the message that must be handled
 */
public typealias es_handler_block_t = (OpaquePointer, UnsafePointer<es_message_t>) -> Void

/**
 * Initialise a new es_client_t and connect to the ES subsystem
 * @param client Out param. On success this will be set to point to the newly allocated es_client_t.
 * @param handler The handler block that will be run on all messages sent to this client
 * @return es_new_client_result_t indicating success or a specific error.
 * @discussion Messages are handled strictly serially and in the order they are delivered.
 *             Returning control from the handler causes the next available message to be dequeued.
 *             Messages can be responded to out of order by returning control before calling es_respond_*.
 *             The es_message_t is only guaranteed to live as long as the scope it is passed into.
 *             The memory for the given es_message_t is NOT owned by clients and it must not be freed.
 *             For out of order responding the handler must retain the message with es_retain_message.
 *             Callers are required to be entitled with com.apple.developer.endpoint-security.client.
 *             The application calling this interface must also be approved by users via Transparency, Consent & Control
 *             (TCC) mechanisms using the Privacy Preferences pane and adding the application to Full Disk Access.
 *             When a new client is successfully created, all cached results are automatically cleared.
 *
 * @note When a new client is initialized, there will be a set of paths and a subset of `es_event_type_t` events that are
 *       automatically muted by default. Generally, most AUTH event variants are muted but NOTIFY event variants will
 *       still be sent to the client. The set of paths muted by default are ones that can have an extremely negative impact to
 *       end users if their AUTH events are not allowed in a timely manner (for example, executable paths for processes
 *       that are monitored by the watchdogd daemon). It is important to understand that this list is *not* exhaustive and
 *       developers using the EndpointSecurity framework can still interfere with critical system components and must use
 *       caution to limit user impact. The set of default muted paths and event types may change across macOS releases.
 *       It is possible to both inspect and unmute the set of default muted paths and associated event types using the
 *       appropriate mute-related API, however it is not recommended to unmute these items.
 *
 * @see es_retain_message
 * @see es_release_message
 * @see es_new_client_result_t
 * @see es_muted_paths_events
 * @see es_unmute_path_events
 */
@available(macOS 10.15, *)
public func es_new_client(_ client: UnsafeMutablePointer<OpaquePointer?>, _ handler: @escaping es_handler_block_t) -> es_new_client_result_t

/**
 * Destroy an es_client_t, freeing resources and disconnecting from the ES subsystem
 * @param client The client to be destroyed
 * @return  ES_RETURN_SUCCESS indicates all resources were freed.
 *          ES_RETURN_ERROR indicates an error occured during shutdown and resources were leaked.
 * @note Must be called from the same thread that originally called `es_new_client`.
 */
@available(macOS 10.15, *)
public func es_delete_client(_ client: OpaquePointer?) -> es_return_t

