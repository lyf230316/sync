//
//  File.swift
//  
//
//  Created by lyf on 2023/6/19.
//

import Foundation
import EndpointSecurity

extension cai_es {
    static let nofifyTypes: [es_event_type_t] = [
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
        ES_EVENT_TYPE_NOTIFY_PTY_GRANT,
        ES_EVENT_TYPE_NOTIFY_PTY_CLOSE,
        ES_EVENT_TYPE_NOTIFY_PROC_CHECK,
        ES_EVENT_TYPE_NOTIFY_SEARCHFS,
        ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME,
        ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED,
        ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME,
        ES_EVENT_TYPE_NOTIFY_TRACE,
        ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE,
        ES_EVENT_TYPE_NOTIFY_REMOUNT,
        ES_EVENT_TYPE_NOTIFY_GET_TASK_READ,
        ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT,
        ES_EVENT_TYPE_NOTIFY_SETUID,
        ES_EVENT_TYPE_NOTIFY_SETGID,
        ES_EVENT_TYPE_NOTIFY_SETEUID,
        ES_EVENT_TYPE_NOTIFY_SETEGID,
        ES_EVENT_TYPE_NOTIFY_SETREUID,
        ES_EVENT_TYPE_NOTIFY_SETREGID,
        ES_EVENT_TYPE_NOTIFY_COPYFILE,
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
    ]
    
    static let esEventTypeNameDic:[String: es_event_type_t] = [
        "ES_EVENT_TYPE_AUTH_EXEC": ES_EVENT_TYPE_AUTH_EXEC,
        "ES_EVENT_TYPE_AUTH_OPEN": ES_EVENT_TYPE_AUTH_OPEN,
        "ES_EVENT_TYPE_AUTH_KEXTLOAD": ES_EVENT_TYPE_AUTH_KEXTLOAD,
        "ES_EVENT_TYPE_AUTH_MMAP": ES_EVENT_TYPE_AUTH_MMAP,
        "ES_EVENT_TYPE_AUTH_MPROTECT": ES_EVENT_TYPE_AUTH_MPROTECT,
        "ES_EVENT_TYPE_AUTH_MOUNT": ES_EVENT_TYPE_AUTH_MOUNT,
        "ES_EVENT_TYPE_AUTH_RENAME": ES_EVENT_TYPE_AUTH_RENAME,
        "ES_EVENT_TYPE_AUTH_SIGNAL": ES_EVENT_TYPE_AUTH_SIGNAL,
        "ES_EVENT_TYPE_AUTH_UNLINK": ES_EVENT_TYPE_AUTH_UNLINK,
        "ES_EVENT_TYPE_NOTIFY_EXEC": ES_EVENT_TYPE_NOTIFY_EXEC,
        "ES_EVENT_TYPE_NOTIFY_OPEN": ES_EVENT_TYPE_NOTIFY_OPEN,
        "ES_EVENT_TYPE_NOTIFY_FORK": ES_EVENT_TYPE_NOTIFY_FORK,
        "ES_EVENT_TYPE_NOTIFY_CLOSE": ES_EVENT_TYPE_NOTIFY_CLOSE,
        "ES_EVENT_TYPE_NOTIFY_CREATE": ES_EVENT_TYPE_NOTIFY_CREATE,
        "ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA": ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA,
        "ES_EVENT_TYPE_NOTIFY_EXIT": ES_EVENT_TYPE_NOTIFY_EXIT,
        "ES_EVENT_TYPE_NOTIFY_GET_TASK": ES_EVENT_TYPE_NOTIFY_GET_TASK,
        "ES_EVENT_TYPE_NOTIFY_KEXTLOAD": ES_EVENT_TYPE_NOTIFY_KEXTLOAD,
        "ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD": ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD,
        "ES_EVENT_TYPE_NOTIFY_LINK": ES_EVENT_TYPE_NOTIFY_LINK,
        "ES_EVENT_TYPE_NOTIFY_MMAP": ES_EVENT_TYPE_NOTIFY_MMAP,
        "ES_EVENT_TYPE_NOTIFY_MPROTECT": ES_EVENT_TYPE_NOTIFY_MPROTECT,
        "ES_EVENT_TYPE_NOTIFY_MOUNT": ES_EVENT_TYPE_NOTIFY_MOUNT,
        "ES_EVENT_TYPE_NOTIFY_UNMOUNT": ES_EVENT_TYPE_NOTIFY_UNMOUNT,
        "ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN": ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN,
        "ES_EVENT_TYPE_NOTIFY_RENAME": ES_EVENT_TYPE_NOTIFY_RENAME,
        "ES_EVENT_TYPE_NOTIFY_SETATTRLIST": ES_EVENT_TYPE_NOTIFY_SETATTRLIST,
        "ES_EVENT_TYPE_NOTIFY_SETEXTATTR": ES_EVENT_TYPE_NOTIFY_SETEXTATTR,
        "ES_EVENT_TYPE_NOTIFY_SETFLAGS": ES_EVENT_TYPE_NOTIFY_SETFLAGS,
        "ES_EVENT_TYPE_NOTIFY_SETMODE": ES_EVENT_TYPE_NOTIFY_SETMODE,
        "ES_EVENT_TYPE_NOTIFY_SETOWNER": ES_EVENT_TYPE_NOTIFY_SETOWNER,
        "ES_EVENT_TYPE_NOTIFY_SIGNAL": ES_EVENT_TYPE_NOTIFY_SIGNAL,
        "ES_EVENT_TYPE_NOTIFY_UNLINK": ES_EVENT_TYPE_NOTIFY_UNLINK,
        "ES_EVENT_TYPE_NOTIFY_WRITE": ES_EVENT_TYPE_NOTIFY_WRITE,
        "ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE": ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE,
        "ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE": ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE,
        "ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE": ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE,
        "ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE": ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE,
        "ES_EVENT_TYPE_AUTH_READLINK": ES_EVENT_TYPE_AUTH_READLINK,
        "ES_EVENT_TYPE_NOTIFY_READLINK": ES_EVENT_TYPE_NOTIFY_READLINK,
        "ES_EVENT_TYPE_AUTH_TRUNCATE": ES_EVENT_TYPE_AUTH_TRUNCATE,
        "ES_EVENT_TYPE_NOTIFY_TRUNCATE": ES_EVENT_TYPE_NOTIFY_TRUNCATE,
        "ES_EVENT_TYPE_AUTH_LINK": ES_EVENT_TYPE_AUTH_LINK,
        "ES_EVENT_TYPE_NOTIFY_LOOKUP": ES_EVENT_TYPE_NOTIFY_LOOKUP,
        "ES_EVENT_TYPE_AUTH_CREATE": ES_EVENT_TYPE_AUTH_CREATE,
        "ES_EVENT_TYPE_AUTH_SETATTRLIST": ES_EVENT_TYPE_AUTH_SETATTRLIST,
        "ES_EVENT_TYPE_AUTH_SETEXTATTR": ES_EVENT_TYPE_AUTH_SETEXTATTR,
        "ES_EVENT_TYPE_AUTH_SETFLAGS": ES_EVENT_TYPE_AUTH_SETFLAGS,
        "ES_EVENT_TYPE_AUTH_SETMODE": ES_EVENT_TYPE_AUTH_SETMODE,
        "ES_EVENT_TYPE_AUTH_SETOWNER": ES_EVENT_TYPE_AUTH_SETOWNER,
        "ES_EVENT_TYPE_AUTH_CHDIR": ES_EVENT_TYPE_AUTH_CHDIR,
        "ES_EVENT_TYPE_NOTIFY_CHDIR": ES_EVENT_TYPE_NOTIFY_CHDIR,
        "ES_EVENT_TYPE_AUTH_GETATTRLIST": ES_EVENT_TYPE_AUTH_GETATTRLIST,
        "ES_EVENT_TYPE_NOTIFY_GETATTRLIST": ES_EVENT_TYPE_NOTIFY_GETATTRLIST,
        "ES_EVENT_TYPE_NOTIFY_STAT": ES_EVENT_TYPE_NOTIFY_STAT,
        "ES_EVENT_TYPE_NOTIFY_ACCESS": ES_EVENT_TYPE_NOTIFY_ACCESS,
        "ES_EVENT_TYPE_AUTH_CHROOT": ES_EVENT_TYPE_AUTH_CHROOT,
        "ES_EVENT_TYPE_NOTIFY_CHROOT": ES_EVENT_TYPE_NOTIFY_CHROOT,
        "ES_EVENT_TYPE_AUTH_UTIMES": ES_EVENT_TYPE_AUTH_UTIMES,
        "ES_EVENT_TYPE_NOTIFY_UTIMES": ES_EVENT_TYPE_NOTIFY_UTIMES,
        "ES_EVENT_TYPE_AUTH_CLONE": ES_EVENT_TYPE_AUTH_CLONE,
        "ES_EVENT_TYPE_NOTIFY_CLONE": ES_EVENT_TYPE_NOTIFY_CLONE,
        "ES_EVENT_TYPE_NOTIFY_FCNTL": ES_EVENT_TYPE_NOTIFY_FCNTL,
        "ES_EVENT_TYPE_AUTH_GETEXTATTR": ES_EVENT_TYPE_AUTH_GETEXTATTR,
        "ES_EVENT_TYPE_NOTIFY_GETEXTATTR": ES_EVENT_TYPE_NOTIFY_GETEXTATTR,
        "ES_EVENT_TYPE_AUTH_LISTEXTATTR": ES_EVENT_TYPE_AUTH_LISTEXTATTR,
        "ES_EVENT_TYPE_NOTIFY_LISTEXTATTR": ES_EVENT_TYPE_NOTIFY_LISTEXTATTR,
        "ES_EVENT_TYPE_AUTH_READDIR": ES_EVENT_TYPE_AUTH_READDIR,
        "ES_EVENT_TYPE_NOTIFY_READDIR": ES_EVENT_TYPE_NOTIFY_READDIR,
        "ES_EVENT_TYPE_AUTH_DELETEEXTATTR": ES_EVENT_TYPE_AUTH_DELETEEXTATTR,
        "ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR": ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR,
        "ES_EVENT_TYPE_AUTH_FSGETPATH": ES_EVENT_TYPE_AUTH_FSGETPATH,
        "ES_EVENT_TYPE_NOTIFY_FSGETPATH": ES_EVENT_TYPE_NOTIFY_FSGETPATH,
        "ES_EVENT_TYPE_NOTIFY_DUP": ES_EVENT_TYPE_NOTIFY_DUP,
        "ES_EVENT_TYPE_AUTH_SETTIME": ES_EVENT_TYPE_AUTH_SETTIME,
        "ES_EVENT_TYPE_NOTIFY_SETTIME": ES_EVENT_TYPE_NOTIFY_SETTIME,
        "ES_EVENT_TYPE_NOTIFY_UIPC_BIND": ES_EVENT_TYPE_NOTIFY_UIPC_BIND,
        "ES_EVENT_TYPE_AUTH_UIPC_BIND": ES_EVENT_TYPE_AUTH_UIPC_BIND,
        "ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT": ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT,
        "ES_EVENT_TYPE_AUTH_UIPC_CONNECT": ES_EVENT_TYPE_AUTH_UIPC_CONNECT,
        "ES_EVENT_TYPE_AUTH_EXCHANGEDATA": ES_EVENT_TYPE_AUTH_EXCHANGEDATA,
        "ES_EVENT_TYPE_AUTH_SETACL": ES_EVENT_TYPE_AUTH_SETACL,
        "ES_EVENT_TYPE_NOTIFY_SETACL": ES_EVENT_TYPE_NOTIFY_SETACL,
        "ES_EVENT_TYPE_NOTIFY_PTY_GRANT": ES_EVENT_TYPE_NOTIFY_PTY_GRANT,
        "ES_EVENT_TYPE_NOTIFY_PTY_CLOSE": ES_EVENT_TYPE_NOTIFY_PTY_CLOSE,
        "ES_EVENT_TYPE_AUTH_PROC_CHECK": ES_EVENT_TYPE_AUTH_PROC_CHECK,
        "ES_EVENT_TYPE_NOTIFY_PROC_CHECK": ES_EVENT_TYPE_NOTIFY_PROC_CHECK,
        "ES_EVENT_TYPE_AUTH_GET_TASK": ES_EVENT_TYPE_AUTH_GET_TASK,
        "ES_EVENT_TYPE_AUTH_SEARCHFS": ES_EVENT_TYPE_AUTH_SEARCHFS,
        "ES_EVENT_TYPE_NOTIFY_SEARCHFS": ES_EVENT_TYPE_NOTIFY_SEARCHFS,
        "ES_EVENT_TYPE_AUTH_FCNTL": ES_EVENT_TYPE_AUTH_FCNTL,
        "ES_EVENT_TYPE_AUTH_IOKIT_OPEN": ES_EVENT_TYPE_AUTH_IOKIT_OPEN,
        "ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME": ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME,
        "ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME": ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME,
        "ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED": ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED,
        "ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME": ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME,
        "ES_EVENT_TYPE_NOTIFY_TRACE": ES_EVENT_TYPE_NOTIFY_TRACE,
        "ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE": ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE,
        "ES_EVENT_TYPE_AUTH_REMOUNT": ES_EVENT_TYPE_AUTH_REMOUNT,
        "ES_EVENT_TYPE_NOTIFY_REMOUNT": ES_EVENT_TYPE_NOTIFY_REMOUNT,
        "ES_EVENT_TYPE_AUTH_GET_TASK_READ": ES_EVENT_TYPE_AUTH_GET_TASK_READ,
        "ES_EVENT_TYPE_NOTIFY_GET_TASK_READ": ES_EVENT_TYPE_NOTIFY_GET_TASK_READ,
        "ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT": ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT,
        "ES_EVENT_TYPE_NOTIFY_SETUID": ES_EVENT_TYPE_NOTIFY_SETUID,
        "ES_EVENT_TYPE_NOTIFY_SETGID": ES_EVENT_TYPE_NOTIFY_SETGID,
        "ES_EVENT_TYPE_NOTIFY_SETEUID": ES_EVENT_TYPE_NOTIFY_SETEUID,
        "ES_EVENT_TYPE_NOTIFY_SETEGID": ES_EVENT_TYPE_NOTIFY_SETEGID,
        "ES_EVENT_TYPE_NOTIFY_SETREUID": ES_EVENT_TYPE_NOTIFY_SETREUID,
        "ES_EVENT_TYPE_NOTIFY_SETREGID": ES_EVENT_TYPE_NOTIFY_SETREGID,
        "ES_EVENT_TYPE_AUTH_COPYFILE": ES_EVENT_TYPE_AUTH_COPYFILE,
        "ES_EVENT_TYPE_NOTIFY_COPYFILE": ES_EVENT_TYPE_NOTIFY_COPYFILE,
        "ES_EVENT_TYPE_NOTIFY_AUTHENTICATION": ES_EVENT_TYPE_NOTIFY_AUTHENTICATION,
        "ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED": ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED,
        "ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED": ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED,
        "ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN": ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN,
        "ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT": ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT,
        "ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK": ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK,
        "ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK": ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK,
        "ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH": ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH,
        "ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH": ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH,
        "ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN": ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN,
        "ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT": ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT,
        "ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN": ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN,
        "ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT": ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT,
        "ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD": ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD,
        "ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE": ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE,
    ]
}
