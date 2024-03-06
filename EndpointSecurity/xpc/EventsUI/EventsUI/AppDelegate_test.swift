//
//  AppDelegate_test.swift
//  EventsUI
//
//  Created by lyf on 2024/3/5.
//

import Foundation
import EndpointSecurity

//test

let allNotifyTypes = [
    ES_EVENT_TYPE_NOTIFY_EXEC,
    ES_EVENT_TYPE_NOTIFY_OPEN,
    ES_EVENT_TYPE_NOTIFY_FORK,
    ES_EVENT_TYPE_NOTIFY_CLOSE,
    ES_EVENT_TYPE_NOTIFY_CREATE,
    ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA,
    ES_EVENT_TYPE_NOTIFY_EXIT,
    ES_EVENT_TYPE_NOTIFY_GET_TASK,
    ES_EVENT_TYPE_NOTIFY_KEXTLOAD,
    ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD,
    ES_EVENT_TYPE_NOTIFY_LINK,
    ES_EVENT_TYPE_NOTIFY_MMAP,
    ES_EVENT_TYPE_NOTIFY_MPROTECT,
    ES_EVENT_TYPE_NOTIFY_MOUNT,
    ES_EVENT_TYPE_NOTIFY_UNMOUNT,
    ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN,
    ES_EVENT_TYPE_NOTIFY_RENAME,
    ES_EVENT_TYPE_NOTIFY_SETATTRLIST,
    ES_EVENT_TYPE_NOTIFY_SETEXTATTR,
    ES_EVENT_TYPE_NOTIFY_SETFLAGS,
    ES_EVENT_TYPE_NOTIFY_SETMODE,
    ES_EVENT_TYPE_NOTIFY_SETOWNER,
    ES_EVENT_TYPE_NOTIFY_SIGNAL,
    ES_EVENT_TYPE_NOTIFY_UNLINK,
    ES_EVENT_TYPE_NOTIFY_WRITE,
    ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE,
    ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE,
    ES_EVENT_TYPE_NOTIFY_READLINK,
    ES_EVENT_TYPE_NOTIFY_TRUNCATE,
    ES_EVENT_TYPE_NOTIFY_LOOKUP,
    // The following events are available beginning in macOS 10.15.1,
    ES_EVENT_TYPE_NOTIFY_CHDIR,
    ES_EVENT_TYPE_NOTIFY_GETATTRLIST,
    ES_EVENT_TYPE_NOTIFY_STAT,
    ES_EVENT_TYPE_NOTIFY_ACCESS,
    ES_EVENT_TYPE_NOTIFY_CHROOT,
    ES_EVENT_TYPE_NOTIFY_UTIMES,
    ES_EVENT_TYPE_NOTIFY_CLONE,
    ES_EVENT_TYPE_NOTIFY_FCNTL,
    ES_EVENT_TYPE_NOTIFY_GETEXTATTR,
    ES_EVENT_TYPE_NOTIFY_LISTEXTATTR,
    ES_EVENT_TYPE_NOTIFY_READDIR,
    ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR,
    ES_EVENT_TYPE_NOTIFY_FSGETPATH,
    ES_EVENT_TYPE_NOTIFY_DUP,
    ES_EVENT_TYPE_NOTIFY_SETTIME,
    ES_EVENT_TYPE_NOTIFY_UIPC_BIND,
    ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT,
    ES_EVENT_TYPE_NOTIFY_SETACL,
    // The following events are available beginning in macOS 10.15.4,
    ES_EVENT_TYPE_NOTIFY_PTY_GRANT,
    ES_EVENT_TYPE_NOTIFY_PTY_CLOSE,
    ES_EVENT_TYPE_NOTIFY_PROC_CHECK,
    // The following events are available beginning in macOS 11.0,
    ES_EVENT_TYPE_NOTIFY_SEARCHFS,
    ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME,
    ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED,
    ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME,
    ES_EVENT_TYPE_NOTIFY_TRACE,
    ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE,
    ES_EVENT_TYPE_NOTIFY_REMOUNT,
    // The following events are available beginning in macOS 11.3,
    ES_EVENT_TYPE_NOTIFY_GET_TASK_READ,
    ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT,
    // The following events are available beginning in macOS 12.0,
    ES_EVENT_TYPE_NOTIFY_SETUID,
    ES_EVENT_TYPE_NOTIFY_SETGID,
    ES_EVENT_TYPE_NOTIFY_SETEUID,
    ES_EVENT_TYPE_NOTIFY_SETEGID,
    ES_EVENT_TYPE_NOTIFY_SETREUID,
    ES_EVENT_TYPE_NOTIFY_SETREGID,
    ES_EVENT_TYPE_NOTIFY_COPYFILE,
    // The following events are available beginning in macOS 13.0,
    ES_EVENT_TYPE_NOTIFY_AUTHENTICATION,
    ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED,
    ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED,
    ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN,
    ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT,
    ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK,
    ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK,
    ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH,
    ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH,
    ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN,
    ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT,
    ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN,
    ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT,
    ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD,
    ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE,
    // The following events are available beginning in macOS 14.0,
    ES_EVENT_TYPE_NOTIFY_PROFILE_ADD,
    ES_EVENT_TYPE_NOTIFY_PROFILE_REMOVE,
    ES_EVENT_TYPE_NOTIFY_SU,
    ES_EVENT_TYPE_NOTIFY_AUTHORIZATION_PETITION,
    ES_EVENT_TYPE_NOTIFY_AUTHORIZATION_JUDGEMENT,
    ES_EVENT_TYPE_NOTIFY_SUDO,
    ES_EVENT_TYPE_NOTIFY_OD_GROUP_ADD,
    ES_EVENT_TYPE_NOTIFY_OD_GROUP_REMOVE,
    ES_EVENT_TYPE_NOTIFY_OD_GROUP_SET,
    ES_EVENT_TYPE_NOTIFY_OD_MODIFY_PASSWORD,
    ES_EVENT_TYPE_NOTIFY_OD_DISABLE_USER,
    ES_EVENT_TYPE_NOTIFY_OD_ENABLE_USER,
    ES_EVENT_TYPE_NOTIFY_OD_ATTRIBUTE_VALUE_ADD,
    ES_EVENT_TYPE_NOTIFY_OD_ATTRIBUTE_VALUE_REMOVE,
    ES_EVENT_TYPE_NOTIFY_OD_ATTRIBUTE_SET,
    ES_EVENT_TYPE_NOTIFY_OD_CREATE_USER,
    ES_EVENT_TYPE_NOTIFY_OD_CREATE_GROUP,
    ES_EVENT_TYPE_NOTIFY_OD_DELETE_USER,
    ES_EVENT_TYPE_NOTIFY_OD_DELETE_GROUP,
    ES_EVENT_TYPE_NOTIFY_XPC_CONNECT
]

extension AppDelegate {
    func xpc_test() {
        let client = XpcClient.share
        client.connectService(name: "com.caidev.EService")
        var types = allNotifyTypes
        let data = NSData(bytes: &types, length: types.count) as Data
        print(data.debugDescription)
        let err = client.subscribe(data) { res in
            print(res)
        }
        print(err)
    }
}
