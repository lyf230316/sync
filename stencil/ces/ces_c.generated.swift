// Generated using Sourcery 2.0.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

#include "ces.h"
#include <string.h>


size_t ces_write_es_message_t(void *p,es_message_t *name_es_message_t) {
    if (!name_es_message_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_message_t);
    if (p) {
        memcpy(p,name_es_message_t,size);
    }
    offset += size;
    size = ces_write_es_message_t_points(p ? p+offset : p, name_es_message_t);
    offset += size;
    switch (name_es_message_t->event_type) {
        case ES_EVENT_TYPE_AUTH_CHDIR:{
            size = ces_write_es_event_chdir_t_points(p ? p+offset : p,&(name_es_message_t->event.chdir));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_CHROOT:{
            size = ces_write_es_event_chroot_t_points(p ? p+offset : p,&(name_es_message_t->event.chroot));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_CLONE:{
            size = ces_write_es_event_clone_t_points(p ? p+offset : p,&(name_es_message_t->event.clone));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_COPYFILE:{
            size = ces_write_es_event_copyfile_t_points(p ? p+offset : p,&(name_es_message_t->event.copyfile));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_CREATE:{
            size = ces_write_es_event_create_t_points(p ? p+offset : p,&(name_es_message_t->event.create));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_DELETEEXTATTR:{
            size = ces_write_es_event_deleteextattr_t_points(p ? p+offset : p,&(name_es_message_t->event.deleteextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_EXCHANGEDATA:{
            size = ces_write_es_event_exchangedata_t_points(p ? p+offset : p,&(name_es_message_t->event.exchangedata));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_EXEC:{
            size = ces_write_es_event_exec_t_points(p ? p+offset : p,&(name_es_message_t->event.exec));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_FCNTL:{
            size = ces_write_es_event_fcntl_t_points(p ? p+offset : p,&(name_es_message_t->event.fcntl));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE:{
            size = ces_write_es_event_file_provider_materialize_t_points(p ? p+offset : p,&(name_es_message_t->event.file_provider_materialize));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE:{
            size = ces_write_es_event_file_provider_update_t_points(p ? p+offset : p,&(name_es_message_t->event.file_provider_update));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_FSGETPATH:{
            size = ces_write_es_event_fsgetpath_t_points(p ? p+offset : p,&(name_es_message_t->event.fsgetpath));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_GETATTRLIST:{
            size = ces_write_es_event_getattrlist_t_points(p ? p+offset : p,&(name_es_message_t->event.getattrlist));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_GETEXTATTR:{
            size = ces_write_es_event_getextattr_t_points(p ? p+offset : p,&(name_es_message_t->event.getextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_GET_TASK:{
            size = ces_write_es_event_get_task_t_points(p ? p+offset : p,&(name_es_message_t->event.get_task));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_GET_TASK_READ:{
            size = ces_write_es_event_get_task_read_t_points(p ? p+offset : p,&(name_es_message_t->event.get_task_read));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_IOKIT_OPEN:{
            size = ces_write_es_event_iokit_open_t_points(p ? p+offset : p,&(name_es_message_t->event.iokit_open));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_KEXTLOAD:{
            size = ces_write_es_event_kextload_t_points(p ? p+offset : p,&(name_es_message_t->event.kextload));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_LINK:{
            size = ces_write_es_event_link_t_points(p ? p+offset : p,&(name_es_message_t->event.link));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_LISTEXTATTR:{
            size = ces_write_es_event_listextattr_t_points(p ? p+offset : p,&(name_es_message_t->event.listextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_MMAP:{
            size = ces_write_es_event_mmap_t_points(p ? p+offset : p,&(name_es_message_t->event.mmap));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_MOUNT:{
            size = ces_write_es_event_mount_t_points(p ? p+offset : p,&(name_es_message_t->event.mount));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_MPROTECT:{
            size = ces_write_es_event_mprotect_t_points(p ? p+offset : p,&(name_es_message_t->event.mprotect));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_OPEN:{
            size = ces_write_es_event_open_t_points(p ? p+offset : p,&(name_es_message_t->event.open));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_PROC_CHECK:{
            size = ces_write_es_event_proc_check_t_points(p ? p+offset : p,&(name_es_message_t->event.proc_check));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME:{
            size = ces_write_es_event_proc_suspend_resume_t_points(p ? p+offset : p,&(name_es_message_t->event.proc_suspend_resume));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_READDIR:{
            size = ces_write_es_event_readdir_t_points(p ? p+offset : p,&(name_es_message_t->event.readdir));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_READLINK:{
            size = ces_write_es_event_readlink_t_points(p ? p+offset : p,&(name_es_message_t->event.readlink));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_REMOUNT:{
            size = ces_write_es_event_remount_t_points(p ? p+offset : p,&(name_es_message_t->event.remount));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_RENAME:{
            size = ces_write_es_event_rename_t_points(p ? p+offset : p,&(name_es_message_t->event.rename));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SEARCHFS:{
            size = ces_write_es_event_searchfs_t_points(p ? p+offset : p,&(name_es_message_t->event.searchfs));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETACL:{
            size = ces_write_es_event_setacl_t_points(p ? p+offset : p,&(name_es_message_t->event.setacl));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETATTRLIST:{
            size = ces_write_es_event_setattrlist_t_points(p ? p+offset : p,&(name_es_message_t->event.setattrlist));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETEXTATTR:{
            size = ces_write_es_event_setextattr_t_points(p ? p+offset : p,&(name_es_message_t->event.setextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETFLAGS:{
            size = ces_write_es_event_setflags_t_points(p ? p+offset : p,&(name_es_message_t->event.setflags));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETMODE:{
            size = ces_write_es_event_setmode_t_points(p ? p+offset : p,&(name_es_message_t->event.setmode));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETOWNER:{
            size = ces_write_es_event_setowner_t_points(p ? p+offset : p,&(name_es_message_t->event.setowner));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETTIME:{
            size = ces_write_es_event_settime_t_points(p ? p+offset : p,&(name_es_message_t->event.settime));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SIGNAL:{
            size = ces_write_es_event_signal_t_points(p ? p+offset : p,&(name_es_message_t->event.signal));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_TRUNCATE:{
            size = ces_write_es_event_truncate_t_points(p ? p+offset : p,&(name_es_message_t->event.truncate));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_UIPC_BIND:{
            size = ces_write_es_event_uipc_bind_t_points(p ? p+offset : p,&(name_es_message_t->event.uipc_bind));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_UIPC_CONNECT:{
            size = ces_write_es_event_uipc_connect_t_points(p ? p+offset : p,&(name_es_message_t->event.uipc_connect));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_UNLINK:{
            size = ces_write_es_event_unlink_t_points(p ? p+offset : p,&(name_es_message_t->event.unlink));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_UTIMES:{
            size = ces_write_es_event_utimes_t_points(p ? p+offset : p,&(name_es_message_t->event.utimes));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_ACCESS:{
            size = ces_write_es_event_access_t_points(p ? p+offset : p,&(name_es_message_t->event.access));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_AUTHENTICATION:{
            size = ces_write_es_event_authentication_t(p ? p+offset : p, name_es_message_t->event.authentication);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD:{
            size = ces_write_es_event_btm_launch_item_add_t(p ? p+offset : p, name_es_message_t->event.btm_launch_item_add);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE:{
            size = ces_write_es_event_btm_launch_item_remove_t(p ? p+offset : p, name_es_message_t->event.btm_launch_item_remove);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CHDIR:{
            size = ces_write_es_event_chdir_t_points(p ? p+offset : p,&(name_es_message_t->event.chdir));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CHROOT:{
            size = ces_write_es_event_chroot_t_points(p ? p+offset : p,&(name_es_message_t->event.chroot));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CLONE:{
            size = ces_write_es_event_clone_t_points(p ? p+offset : p,&(name_es_message_t->event.clone));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CLOSE:{
            size = ces_write_es_event_close_t_points(p ? p+offset : p,&(name_es_message_t->event.close));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_COPYFILE:{
            size = ces_write_es_event_copyfile_t_points(p ? p+offset : p,&(name_es_message_t->event.copyfile));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CREATE:{
            size = ces_write_es_event_create_t_points(p ? p+offset : p,&(name_es_message_t->event.create));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED:{
            size = ces_write_es_event_cs_invalidated_t_points(p ? p+offset : p,&(name_es_message_t->event.cs_invalidated));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR:{
            size = ces_write_es_event_deleteextattr_t_points(p ? p+offset : p,&(name_es_message_t->event.deleteextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_DUP:{
            size = ces_write_es_event_dup_t_points(p ? p+offset : p,&(name_es_message_t->event.dup));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA:{
            size = ces_write_es_event_exchangedata_t_points(p ? p+offset : p,&(name_es_message_t->event.exchangedata));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_EXEC:{
            size = ces_write_es_event_exec_t_points(p ? p+offset : p,&(name_es_message_t->event.exec));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_EXIT:{
            size = ces_write_es_event_exit_t_points(p ? p+offset : p,&(name_es_message_t->event.exit));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_FCNTL:{
            size = ces_write_es_event_fcntl_t_points(p ? p+offset : p,&(name_es_message_t->event.fcntl));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE:{
            size = ces_write_es_event_file_provider_materialize_t_points(p ? p+offset : p,&(name_es_message_t->event.file_provider_materialize));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE:{
            size = ces_write_es_event_file_provider_update_t_points(p ? p+offset : p,&(name_es_message_t->event.file_provider_update));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_FORK:{
            size = ces_write_es_event_fork_t_points(p ? p+offset : p,&(name_es_message_t->event.fork));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_FSGETPATH:{
            size = ces_write_es_event_fsgetpath_t_points(p ? p+offset : p,&(name_es_message_t->event.fsgetpath));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GETATTRLIST:{
            size = ces_write_es_event_getattrlist_t_points(p ? p+offset : p,&(name_es_message_t->event.getattrlist));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GETEXTATTR:{
            size = ces_write_es_event_getextattr_t_points(p ? p+offset : p,&(name_es_message_t->event.getextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK:{
            size = ces_write_es_event_get_task_t_points(p ? p+offset : p,&(name_es_message_t->event.get_task));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT:{
            size = ces_write_es_event_get_task_inspect_t_points(p ? p+offset : p,&(name_es_message_t->event.get_task_inspect));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME:{
            size = ces_write_es_event_get_task_name_t_points(p ? p+offset : p,&(name_es_message_t->event.get_task_name));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_READ:{
            size = ces_write_es_event_get_task_read_t_points(p ? p+offset : p,&(name_es_message_t->event.get_task_read));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN:{
            size = ces_write_es_event_iokit_open_t_points(p ? p+offset : p,&(name_es_message_t->event.iokit_open));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_KEXTLOAD:{
            size = ces_write_es_event_kextload_t_points(p ? p+offset : p,&(name_es_message_t->event.kextload));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD:{
            size = ces_write_es_event_kextunload_t_points(p ? p+offset : p,&(name_es_message_t->event.kextunload));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LINK:{
            size = ces_write_es_event_link_t_points(p ? p+offset : p,&(name_es_message_t->event.link));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LISTEXTATTR:{
            size = ces_write_es_event_listextattr_t_points(p ? p+offset : p,&(name_es_message_t->event.listextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN:{
            size = ces_write_es_event_login_login_t(p ? p+offset : p, name_es_message_t->event.login_login);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT:{
            size = ces_write_es_event_login_logout_t(p ? p+offset : p, name_es_message_t->event.login_logout);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LOOKUP:{
            size = ces_write_es_event_lookup_t_points(p ? p+offset : p,&(name_es_message_t->event.lookup));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK:{
            size = ces_write_es_event_lw_session_lock_t(p ? p+offset : p, name_es_message_t->event.lw_session_lock);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN:{
            size = ces_write_es_event_lw_session_login_t(p ? p+offset : p, name_es_message_t->event.lw_session_login);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT:{
            size = ces_write_es_event_lw_session_logout_t(p ? p+offset : p, name_es_message_t->event.lw_session_logout);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK:{
            size = ces_write_es_event_lw_session_unlock_t(p ? p+offset : p, name_es_message_t->event.lw_session_unlock);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_MMAP:{
            size = ces_write_es_event_mmap_t_points(p ? p+offset : p,&(name_es_message_t->event.mmap));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_MOUNT:{
            size = ces_write_es_event_mount_t_points(p ? p+offset : p,&(name_es_message_t->event.mount));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_MPROTECT:{
            size = ces_write_es_event_mprotect_t_points(p ? p+offset : p,&(name_es_message_t->event.mprotect));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_OPEN:{
            size = ces_write_es_event_open_t_points(p ? p+offset : p,&(name_es_message_t->event.open));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN:{
            size = ces_write_es_event_openssh_login_t(p ? p+offset : p, name_es_message_t->event.openssh_login);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT:{
            size = ces_write_es_event_openssh_logout_t(p ? p+offset : p, name_es_message_t->event.openssh_logout);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_PROC_CHECK:{
            size = ces_write_es_event_proc_check_t_points(p ? p+offset : p,&(name_es_message_t->event.proc_check));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME:{
            size = ces_write_es_event_proc_suspend_resume_t_points(p ? p+offset : p,&(name_es_message_t->event.proc_suspend_resume));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_PTY_CLOSE:{
            size = ces_write_es_event_pty_close_t_points(p ? p+offset : p,&(name_es_message_t->event.pty_close));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_PTY_GRANT:{
            size = ces_write_es_event_pty_grant_t_points(p ? p+offset : p,&(name_es_message_t->event.pty_grant));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_READDIR:{
            size = ces_write_es_event_readdir_t_points(p ? p+offset : p,&(name_es_message_t->event.readdir));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_READLINK:{
            size = ces_write_es_event_readlink_t_points(p ? p+offset : p,&(name_es_message_t->event.readlink));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE:{
            size = ces_write_es_event_remote_thread_create_t_points(p ? p+offset : p,&(name_es_message_t->event.remote_thread_create));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_REMOUNT:{
            size = ces_write_es_event_remount_t_points(p ? p+offset : p,&(name_es_message_t->event.remount));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_RENAME:{
            size = ces_write_es_event_rename_t_points(p ? p+offset : p,&(name_es_message_t->event.rename));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH:{
            size = ces_write_es_event_screensharing_attach_t(p ? p+offset : p, name_es_message_t->event.screensharing_attach);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH:{
            size = ces_write_es_event_screensharing_detach_t(p ? p+offset : p, name_es_message_t->event.screensharing_detach);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SEARCHFS:{
            size = ces_write_es_event_searchfs_t_points(p ? p+offset : p,&(name_es_message_t->event.searchfs));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETACL:{
            size = ces_write_es_event_setacl_t_points(p ? p+offset : p,&(name_es_message_t->event.setacl));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETATTRLIST:{
            size = ces_write_es_event_setattrlist_t_points(p ? p+offset : p,&(name_es_message_t->event.setattrlist));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETEGID:{
            size = ces_write_es_event_setegid_t_points(p ? p+offset : p,&(name_es_message_t->event.setegid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETEUID:{
            size = ces_write_es_event_seteuid_t_points(p ? p+offset : p,&(name_es_message_t->event.seteuid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETEXTATTR:{
            size = ces_write_es_event_setextattr_t_points(p ? p+offset : p,&(name_es_message_t->event.setextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETFLAGS:{
            size = ces_write_es_event_setflags_t_points(p ? p+offset : p,&(name_es_message_t->event.setflags));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETGID:{
            size = ces_write_es_event_setgid_t_points(p ? p+offset : p,&(name_es_message_t->event.setgid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETMODE:{
            size = ces_write_es_event_setmode_t_points(p ? p+offset : p,&(name_es_message_t->event.setmode));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETOWNER:{
            size = ces_write_es_event_setowner_t_points(p ? p+offset : p,&(name_es_message_t->event.setowner));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETREGID:{
            size = ces_write_es_event_setregid_t_points(p ? p+offset : p,&(name_es_message_t->event.setregid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETREUID:{
            size = ces_write_es_event_setreuid_t_points(p ? p+offset : p,&(name_es_message_t->event.setreuid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETTIME:{
            size = ces_write_es_event_settime_t_points(p ? p+offset : p,&(name_es_message_t->event.settime));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETUID:{
            size = ces_write_es_event_setuid_t_points(p ? p+offset : p,&(name_es_message_t->event.setuid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SIGNAL:{
            size = ces_write_es_event_signal_t_points(p ? p+offset : p,&(name_es_message_t->event.signal));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_STAT:{
            size = ces_write_es_event_stat_t_points(p ? p+offset : p,&(name_es_message_t->event.stat));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_TRACE:{
            size = ces_write_es_event_trace_t_points(p ? p+offset : p,&(name_es_message_t->event.trace));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_TRUNCATE:{
            size = ces_write_es_event_truncate_t_points(p ? p+offset : p,&(name_es_message_t->event.truncate));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_UIPC_BIND:{
            size = ces_write_es_event_uipc_bind_t_points(p ? p+offset : p,&(name_es_message_t->event.uipc_bind));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT:{
            size = ces_write_es_event_uipc_connect_t_points(p ? p+offset : p,&(name_es_message_t->event.uipc_connect));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_UNLINK:{
            size = ces_write_es_event_unlink_t_points(p ? p+offset : p,&(name_es_message_t->event.unlink));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_UNMOUNT:{
            size = ces_write_es_event_unmount_t_points(p ? p+offset : p,&(name_es_message_t->event.unmount));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_UTIMES:{
            size = ces_write_es_event_utimes_t_points(p ? p+offset : p,&(name_es_message_t->event.utimes));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_WRITE:{
            size = ces_write_es_event_write_t_points(p ? p+offset : p,&(name_es_message_t->event.write));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED:{
            size = ces_write_es_event_xp_malware_detected_t(p ? p+offset : p, name_es_message_t->event.xp_malware_detected);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED:{
            size = ces_write_es_event_xp_malware_remediated_t(p ? p+offset : p, name_es_message_t->event.xp_malware_remediated);
            offset += size;
        }break;
        default:
            break;
    }
    return offset;
}

size_t ces_write_es_message_t_points(void *p,es_message_t *name_es_message_t) {
    if (!name_es_message_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_message_t->process);
    offset += size;
    size = ces_write_es_thread_t(p ? p+offset : p, name_es_message_t->thread);
    offset += size;
    return offset;
}

size_t ces_write_audit_token_t(void *p,audit_token_t *name_audit_token_t) {
    if (!name_audit_token_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(audit_token_t);
    if (p) {
        memcpy(p,name_audit_token_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_statfs_t(void *p,es_statfs_t *name_es_statfs_t) {
    if (!name_es_statfs_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_statfs_t);
    if (p) {
        memcpy(p,name_es_statfs_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_action_type_t(void *p,es_action_type_t *name_es_action_type_t) {
    if (!name_es_action_type_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_action_type_t);
    if (p) {
        memcpy(p,name_es_action_type_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_address_type_t(void *p,es_address_type_t *name_es_address_type_t) {
    if (!name_es_address_type_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_address_type_t);
    if (p) {
        memcpy(p,name_es_address_type_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_authentication_type_t(void *p,es_authentication_type_t *name_es_authentication_type_t) {
    if (!name_es_authentication_type_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_authentication_type_t);
    if (p) {
        memcpy(p,name_es_authentication_type_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_btm_item_type_t(void *p,es_btm_item_type_t *name_es_btm_item_type_t) {
    if (!name_es_btm_item_type_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_btm_item_type_t);
    if (p) {
        memcpy(p,name_es_btm_item_type_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_btm_launch_item_t(void *p,es_btm_launch_item_t *name_es_btm_launch_item_t) {
    if (!name_es_btm_launch_item_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_btm_launch_item_t);
    if (p) {
        memcpy(p,name_es_btm_launch_item_t,size);
    }
    offset += size;
    size = ces_write_es_btm_launch_item_t_points(p ? p+offset : p, name_es_btm_launch_item_t);
    offset += size;
    return offset;
}

size_t ces_write_es_btm_launch_item_t_points(void *p,es_btm_launch_item_t *name_es_btm_launch_item_t) {
    if (!name_es_btm_launch_item_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_btm_launch_item_t->item_url.data,name_es_btm_launch_item_t->item_url.length);
    }
    offset += name_es_btm_launch_item_t->item_url.length;
    if (p) {
        memcpy(p+offset,name_es_btm_launch_item_t->app_url.data,name_es_btm_launch_item_t->app_url.length);
    }
    offset += name_es_btm_launch_item_t->app_url.length;
    return offset;
}

size_t ces_write_es_destination_type_t(void *p,es_destination_type_t *name_es_destination_type_t) {
    if (!name_es_destination_type_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_destination_type_t);
    if (p) {
        memcpy(p,name_es_destination_type_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_access_t(void *p,es_event_access_t *name_es_event_access_t) {
    if (!name_es_event_access_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_access_t);
    if (p) {
        memcpy(p,name_es_event_access_t,size);
    }
    offset += size;
    size = ces_write_es_event_access_t_points(p ? p+offset : p, name_es_event_access_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_access_t_points(void *p,es_event_access_t *name_es_event_access_t) {
    if (!name_es_event_access_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_access_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_authentication_t(void *p,es_event_authentication_t *name_es_event_authentication_t) {
    if (!name_es_event_authentication_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_authentication_t);
    if (p) {
        memcpy(p,name_es_event_authentication_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_btm_launch_item_add_t(void *p,es_event_btm_launch_item_add_t *name_es_event_btm_launch_item_add_t) {
    if (!name_es_event_btm_launch_item_add_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_btm_launch_item_add_t);
    if (p) {
        memcpy(p,name_es_event_btm_launch_item_add_t,size);
    }
    offset += size;
    size = ces_write_es_event_btm_launch_item_add_t_points(p ? p+offset : p, name_es_event_btm_launch_item_add_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_btm_launch_item_add_t_points(void *p,es_event_btm_launch_item_add_t *name_es_event_btm_launch_item_add_t) {
    if (!name_es_event_btm_launch_item_add_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_btm_launch_item_add_t->executable_path.data,name_es_event_btm_launch_item_add_t->executable_path.length);
    }
    offset += name_es_event_btm_launch_item_add_t->executable_path.length;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_btm_launch_item_add_t->instigator);
    offset += size;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_btm_launch_item_add_t->app);
    offset += size;
    size = ces_write_es_btm_launch_item_t(p ? p+offset : p, name_es_event_btm_launch_item_add_t->item);
    offset += size;
    return offset;
}

size_t ces_write_es_event_btm_launch_item_remove_t(void *p,es_event_btm_launch_item_remove_t *name_es_event_btm_launch_item_remove_t) {
    if (!name_es_event_btm_launch_item_remove_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_btm_launch_item_remove_t);
    if (p) {
        memcpy(p,name_es_event_btm_launch_item_remove_t,size);
    }
    offset += size;
    size = ces_write_es_event_btm_launch_item_remove_t_points(p ? p+offset : p, name_es_event_btm_launch_item_remove_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_btm_launch_item_remove_t_points(void *p,es_event_btm_launch_item_remove_t *name_es_event_btm_launch_item_remove_t) {
    if (!name_es_event_btm_launch_item_remove_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_btm_launch_item_remove_t->instigator);
    offset += size;
    size = ces_write_es_btm_launch_item_t(p ? p+offset : p, name_es_event_btm_launch_item_remove_t->item);
    offset += size;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_btm_launch_item_remove_t->app);
    offset += size;
    return offset;
}

size_t ces_write_es_event_chdir_t(void *p,es_event_chdir_t *name_es_event_chdir_t) {
    if (!name_es_event_chdir_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_chdir_t);
    if (p) {
        memcpy(p,name_es_event_chdir_t,size);
    }
    offset += size;
    size = ces_write_es_event_chdir_t_points(p ? p+offset : p, name_es_event_chdir_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_chdir_t_points(void *p,es_event_chdir_t *name_es_event_chdir_t) {
    if (!name_es_event_chdir_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_chdir_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_chroot_t(void *p,es_event_chroot_t *name_es_event_chroot_t) {
    if (!name_es_event_chroot_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_chroot_t);
    if (p) {
        memcpy(p,name_es_event_chroot_t,size);
    }
    offset += size;
    size = ces_write_es_event_chroot_t_points(p ? p+offset : p, name_es_event_chroot_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_chroot_t_points(void *p,es_event_chroot_t *name_es_event_chroot_t) {
    if (!name_es_event_chroot_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_chroot_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_clone_t(void *p,es_event_clone_t *name_es_event_clone_t) {
    if (!name_es_event_clone_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_clone_t);
    if (p) {
        memcpy(p,name_es_event_clone_t,size);
    }
    offset += size;
    size = ces_write_es_event_clone_t_points(p ? p+offset : p, name_es_event_clone_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_clone_t_points(void *p,es_event_clone_t *name_es_event_clone_t) {
    if (!name_es_event_clone_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_clone_t->target_name.data,name_es_event_clone_t->target_name.length);
    }
    offset += name_es_event_clone_t->target_name.length;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_clone_t->target_dir);
    offset += size;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_clone_t->source);
    offset += size;
    return offset;
}

size_t ces_write_es_event_close_t(void *p,es_event_close_t *name_es_event_close_t) {
    if (!name_es_event_close_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_close_t);
    if (p) {
        memcpy(p,name_es_event_close_t,size);
    }
    offset += size;
    size = ces_write_es_event_close_t_points(p ? p+offset : p, name_es_event_close_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_close_t_points(void *p,es_event_close_t *name_es_event_close_t) {
    if (!name_es_event_close_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_close_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_copyfile_t(void *p,es_event_copyfile_t *name_es_event_copyfile_t) {
    if (!name_es_event_copyfile_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_copyfile_t);
    if (p) {
        memcpy(p,name_es_event_copyfile_t,size);
    }
    offset += size;
    size = ces_write_es_event_copyfile_t_points(p ? p+offset : p, name_es_event_copyfile_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_copyfile_t_points(void *p,es_event_copyfile_t *name_es_event_copyfile_t) {
    if (!name_es_event_copyfile_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_copyfile_t->target_file);
    offset += size;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_copyfile_t->target_dir);
    offset += size;
    if (p) {
        memcpy(p+offset,name_es_event_copyfile_t->target_name.data,name_es_event_copyfile_t->target_name.length);
    }
    offset += name_es_event_copyfile_t->target_name.length;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_copyfile_t->source);
    offset += size;
    return offset;
}

size_t ces_write_es_event_create_t(void *p,es_event_create_t *name_es_event_create_t) {
    if (!name_es_event_create_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_create_t);
    if (p) {
        memcpy(p,name_es_event_create_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_cs_invalidated_t(void *p,es_event_cs_invalidated_t *name_es_event_cs_invalidated_t) {
    if (!name_es_event_cs_invalidated_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_cs_invalidated_t);
    if (p) {
        memcpy(p,name_es_event_cs_invalidated_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_deleteextattr_t(void *p,es_event_deleteextattr_t *name_es_event_deleteextattr_t) {
    if (!name_es_event_deleteextattr_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_deleteextattr_t);
    if (p) {
        memcpy(p,name_es_event_deleteextattr_t,size);
    }
    offset += size;
    size = ces_write_es_event_deleteextattr_t_points(p ? p+offset : p, name_es_event_deleteextattr_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_deleteextattr_t_points(void *p,es_event_deleteextattr_t *name_es_event_deleteextattr_t) {
    if (!name_es_event_deleteextattr_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_deleteextattr_t->target);
    offset += size;
    if (p) {
        memcpy(p+offset,name_es_event_deleteextattr_t->extattr.data,name_es_event_deleteextattr_t->extattr.length);
    }
    offset += name_es_event_deleteextattr_t->extattr.length;
    return offset;
}

size_t ces_write_es_event_dup_t(void *p,es_event_dup_t *name_es_event_dup_t) {
    if (!name_es_event_dup_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_dup_t);
    if (p) {
        memcpy(p,name_es_event_dup_t,size);
    }
    offset += size;
    size = ces_write_es_event_dup_t_points(p ? p+offset : p, name_es_event_dup_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_dup_t_points(void *p,es_event_dup_t *name_es_event_dup_t) {
    if (!name_es_event_dup_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_dup_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_exchangedata_t(void *p,es_event_exchangedata_t *name_es_event_exchangedata_t) {
    if (!name_es_event_exchangedata_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_exchangedata_t);
    if (p) {
        memcpy(p,name_es_event_exchangedata_t,size);
    }
    offset += size;
    size = ces_write_es_event_exchangedata_t_points(p ? p+offset : p, name_es_event_exchangedata_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_exchangedata_t_points(void *p,es_event_exchangedata_t *name_es_event_exchangedata_t) {
    if (!name_es_event_exchangedata_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_exchangedata_t->file2);
    offset += size;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_exchangedata_t->file1);
    offset += size;
    return offset;
}

size_t ces_write_es_event_exec_t(void *p,es_event_exec_t *name_es_event_exec_t) {
    if (!name_es_event_exec_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_exec_t);
    if (p) {
        memcpy(p,name_es_event_exec_t,size);
    }
    offset += size;
    size = ces_write_es_event_exec_t_points(p ? p+offset : p, name_es_event_exec_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_exec_t_points(void *p,es_event_exec_t *name_es_event_exec_t) {
    if (!name_es_event_exec_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_exec_t->cwd);
    offset += size;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_exec_t->target);
    offset += size;
    if (p) {
        memcpy(p+offset,name_es_event_exec_t->reserved0.data,name_es_event_exec_t->reserved0.size);
    }
    offset += name_es_event_exec_t->reserved0.size;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_exec_t->script);
    offset += size;
    return offset;
}

size_t ces_write_es_event_exit_t(void *p,es_event_exit_t *name_es_event_exit_t) {
    if (!name_es_event_exit_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_exit_t);
    if (p) {
        memcpy(p,name_es_event_exit_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_fcntl_t(void *p,es_event_fcntl_t *name_es_event_fcntl_t) {
    if (!name_es_event_fcntl_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_fcntl_t);
    if (p) {
        memcpy(p,name_es_event_fcntl_t,size);
    }
    offset += size;
    size = ces_write_es_event_fcntl_t_points(p ? p+offset : p, name_es_event_fcntl_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_fcntl_t_points(void *p,es_event_fcntl_t *name_es_event_fcntl_t) {
    if (!name_es_event_fcntl_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_fcntl_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_file_provider_materialize_t(void *p,es_event_file_provider_materialize_t *name_es_event_file_provider_materialize_t) {
    if (!name_es_event_file_provider_materialize_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_file_provider_materialize_t);
    if (p) {
        memcpy(p,name_es_event_file_provider_materialize_t,size);
    }
    offset += size;
    size = ces_write_es_event_file_provider_materialize_t_points(p ? p+offset : p, name_es_event_file_provider_materialize_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_file_provider_materialize_t_points(void *p,es_event_file_provider_materialize_t *name_es_event_file_provider_materialize_t) {
    if (!name_es_event_file_provider_materialize_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_file_provider_materialize_t->source);
    offset += size;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_file_provider_materialize_t->target);
    offset += size;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_file_provider_materialize_t->instigator);
    offset += size;
    return offset;
}

size_t ces_write_es_event_file_provider_update_t(void *p,es_event_file_provider_update_t *name_es_event_file_provider_update_t) {
    if (!name_es_event_file_provider_update_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_file_provider_update_t);
    if (p) {
        memcpy(p,name_es_event_file_provider_update_t,size);
    }
    offset += size;
    size = ces_write_es_event_file_provider_update_t_points(p ? p+offset : p, name_es_event_file_provider_update_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_file_provider_update_t_points(void *p,es_event_file_provider_update_t *name_es_event_file_provider_update_t) {
    if (!name_es_event_file_provider_update_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_file_provider_update_t->source);
    offset += size;
    if (p) {
        memcpy(p+offset,name_es_event_file_provider_update_t->target_path.data,name_es_event_file_provider_update_t->target_path.length);
    }
    offset += name_es_event_file_provider_update_t->target_path.length;
    return offset;
}

size_t ces_write_es_event_fork_t(void *p,es_event_fork_t *name_es_event_fork_t) {
    if (!name_es_event_fork_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_fork_t);
    if (p) {
        memcpy(p,name_es_event_fork_t,size);
    }
    offset += size;
    size = ces_write_es_event_fork_t_points(p ? p+offset : p, name_es_event_fork_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_fork_t_points(void *p,es_event_fork_t *name_es_event_fork_t) {
    if (!name_es_event_fork_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_fork_t->child);
    offset += size;
    return offset;
}

size_t ces_write_es_event_fsgetpath_t(void *p,es_event_fsgetpath_t *name_es_event_fsgetpath_t) {
    if (!name_es_event_fsgetpath_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_fsgetpath_t);
    if (p) {
        memcpy(p,name_es_event_fsgetpath_t,size);
    }
    offset += size;
    size = ces_write_es_event_fsgetpath_t_points(p ? p+offset : p, name_es_event_fsgetpath_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_fsgetpath_t_points(void *p,es_event_fsgetpath_t *name_es_event_fsgetpath_t) {
    if (!name_es_event_fsgetpath_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_fsgetpath_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_get_task_inspect_t(void *p,es_event_get_task_inspect_t *name_es_event_get_task_inspect_t) {
    if (!name_es_event_get_task_inspect_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_get_task_inspect_t);
    if (p) {
        memcpy(p,name_es_event_get_task_inspect_t,size);
    }
    offset += size;
    size = ces_write_es_event_get_task_inspect_t_points(p ? p+offset : p, name_es_event_get_task_inspect_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_get_task_inspect_t_points(void *p,es_event_get_task_inspect_t *name_es_event_get_task_inspect_t) {
    if (!name_es_event_get_task_inspect_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_get_task_inspect_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_get_task_name_t(void *p,es_event_get_task_name_t *name_es_event_get_task_name_t) {
    if (!name_es_event_get_task_name_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_get_task_name_t);
    if (p) {
        memcpy(p,name_es_event_get_task_name_t,size);
    }
    offset += size;
    size = ces_write_es_event_get_task_name_t_points(p ? p+offset : p, name_es_event_get_task_name_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_get_task_name_t_points(void *p,es_event_get_task_name_t *name_es_event_get_task_name_t) {
    if (!name_es_event_get_task_name_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_get_task_name_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_get_task_read_t(void *p,es_event_get_task_read_t *name_es_event_get_task_read_t) {
    if (!name_es_event_get_task_read_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_get_task_read_t);
    if (p) {
        memcpy(p,name_es_event_get_task_read_t,size);
    }
    offset += size;
    size = ces_write_es_event_get_task_read_t_points(p ? p+offset : p, name_es_event_get_task_read_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_get_task_read_t_points(void *p,es_event_get_task_read_t *name_es_event_get_task_read_t) {
    if (!name_es_event_get_task_read_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_get_task_read_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_get_task_t(void *p,es_event_get_task_t *name_es_event_get_task_t) {
    if (!name_es_event_get_task_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_get_task_t);
    if (p) {
        memcpy(p,name_es_event_get_task_t,size);
    }
    offset += size;
    size = ces_write_es_event_get_task_t_points(p ? p+offset : p, name_es_event_get_task_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_get_task_t_points(void *p,es_event_get_task_t *name_es_event_get_task_t) {
    if (!name_es_event_get_task_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_get_task_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_getattrlist_t(void *p,es_event_getattrlist_t *name_es_event_getattrlist_t) {
    if (!name_es_event_getattrlist_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_getattrlist_t);
    if (p) {
        memcpy(p,name_es_event_getattrlist_t,size);
    }
    offset += size;
    size = ces_write_es_event_getattrlist_t_points(p ? p+offset : p, name_es_event_getattrlist_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_getattrlist_t_points(void *p,es_event_getattrlist_t *name_es_event_getattrlist_t) {
    if (!name_es_event_getattrlist_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_getattrlist_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_getextattr_t(void *p,es_event_getextattr_t *name_es_event_getextattr_t) {
    if (!name_es_event_getextattr_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_getextattr_t);
    if (p) {
        memcpy(p,name_es_event_getextattr_t,size);
    }
    offset += size;
    size = ces_write_es_event_getextattr_t_points(p ? p+offset : p, name_es_event_getextattr_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_getextattr_t_points(void *p,es_event_getextattr_t *name_es_event_getextattr_t) {
    if (!name_es_event_getextattr_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_getextattr_t->target);
    offset += size;
    if (p) {
        memcpy(p+offset,name_es_event_getextattr_t->extattr.data,name_es_event_getextattr_t->extattr.length);
    }
    offset += name_es_event_getextattr_t->extattr.length;
    return offset;
}

size_t ces_write_es_event_iokit_open_t(void *p,es_event_iokit_open_t *name_es_event_iokit_open_t) {
    if (!name_es_event_iokit_open_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_iokit_open_t);
    if (p) {
        memcpy(p,name_es_event_iokit_open_t,size);
    }
    offset += size;
    size = ces_write_es_event_iokit_open_t_points(p ? p+offset : p, name_es_event_iokit_open_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_iokit_open_t_points(void *p,es_event_iokit_open_t *name_es_event_iokit_open_t) {
    if (!name_es_event_iokit_open_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_iokit_open_t->user_client_class.data,name_es_event_iokit_open_t->user_client_class.length);
    }
    offset += name_es_event_iokit_open_t->user_client_class.length;
    return offset;
}

size_t ces_write_es_event_kextload_t(void *p,es_event_kextload_t *name_es_event_kextload_t) {
    if (!name_es_event_kextload_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_kextload_t);
    if (p) {
        memcpy(p,name_es_event_kextload_t,size);
    }
    offset += size;
    size = ces_write_es_event_kextload_t_points(p ? p+offset : p, name_es_event_kextload_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_kextload_t_points(void *p,es_event_kextload_t *name_es_event_kextload_t) {
    if (!name_es_event_kextload_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_kextload_t->identifier.data,name_es_event_kextload_t->identifier.length);
    }
    offset += name_es_event_kextload_t->identifier.length;
    return offset;
}

size_t ces_write_es_event_kextunload_t(void *p,es_event_kextunload_t *name_es_event_kextunload_t) {
    if (!name_es_event_kextunload_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_kextunload_t);
    if (p) {
        memcpy(p,name_es_event_kextunload_t,size);
    }
    offset += size;
    size = ces_write_es_event_kextunload_t_points(p ? p+offset : p, name_es_event_kextunload_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_kextunload_t_points(void *p,es_event_kextunload_t *name_es_event_kextunload_t) {
    if (!name_es_event_kextunload_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_kextunload_t->identifier.data,name_es_event_kextunload_t->identifier.length);
    }
    offset += name_es_event_kextunload_t->identifier.length;
    return offset;
}

size_t ces_write_es_event_link_t(void *p,es_event_link_t *name_es_event_link_t) {
    if (!name_es_event_link_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_link_t);
    if (p) {
        memcpy(p,name_es_event_link_t,size);
    }
    offset += size;
    size = ces_write_es_event_link_t_points(p ? p+offset : p, name_es_event_link_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_link_t_points(void *p,es_event_link_t *name_es_event_link_t) {
    if (!name_es_event_link_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_link_t->source);
    offset += size;
    if (p) {
        memcpy(p+offset,name_es_event_link_t->target_filename.data,name_es_event_link_t->target_filename.length);
    }
    offset += name_es_event_link_t->target_filename.length;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_link_t->target_dir);
    offset += size;
    return offset;
}

size_t ces_write_es_event_listextattr_t(void *p,es_event_listextattr_t *name_es_event_listextattr_t) {
    if (!name_es_event_listextattr_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_listextattr_t);
    if (p) {
        memcpy(p,name_es_event_listextattr_t,size);
    }
    offset += size;
    size = ces_write_es_event_listextattr_t_points(p ? p+offset : p, name_es_event_listextattr_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_listextattr_t_points(void *p,es_event_listextattr_t *name_es_event_listextattr_t) {
    if (!name_es_event_listextattr_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_listextattr_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_login_login_t(void *p,es_event_login_login_t *name_es_event_login_login_t) {
    if (!name_es_event_login_login_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_login_login_t);
    if (p) {
        memcpy(p,name_es_event_login_login_t,size);
    }
    offset += size;
    size = ces_write_es_event_login_login_t_points(p ? p+offset : p, name_es_event_login_login_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_login_login_t_points(void *p,es_event_login_login_t *name_es_event_login_login_t) {
    if (!name_es_event_login_login_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_login_login_t->failure_message.data,name_es_event_login_login_t->failure_message.length);
    }
    offset += name_es_event_login_login_t->failure_message.length;
    if (p) {
        memcpy(p+offset,name_es_event_login_login_t->username.data,name_es_event_login_login_t->username.length);
    }
    offset += name_es_event_login_login_t->username.length;
    return offset;
}

size_t ces_write_es_event_login_logout_t(void *p,es_event_login_logout_t *name_es_event_login_logout_t) {
    if (!name_es_event_login_logout_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_login_logout_t);
    if (p) {
        memcpy(p,name_es_event_login_logout_t,size);
    }
    offset += size;
    size = ces_write_es_event_login_logout_t_points(p ? p+offset : p, name_es_event_login_logout_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_login_logout_t_points(void *p,es_event_login_logout_t *name_es_event_login_logout_t) {
    if (!name_es_event_login_logout_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_login_logout_t->username.data,name_es_event_login_logout_t->username.length);
    }
    offset += name_es_event_login_logout_t->username.length;
    return offset;
}

size_t ces_write_es_event_lookup_t(void *p,es_event_lookup_t *name_es_event_lookup_t) {
    if (!name_es_event_lookup_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_lookup_t);
    if (p) {
        memcpy(p,name_es_event_lookup_t,size);
    }
    offset += size;
    size = ces_write_es_event_lookup_t_points(p ? p+offset : p, name_es_event_lookup_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_lookup_t_points(void *p,es_event_lookup_t *name_es_event_lookup_t) {
    if (!name_es_event_lookup_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_lookup_t->source_dir);
    offset += size;
    if (p) {
        memcpy(p+offset,name_es_event_lookup_t->relative_target.data,name_es_event_lookup_t->relative_target.length);
    }
    offset += name_es_event_lookup_t->relative_target.length;
    return offset;
}

size_t ces_write_es_event_lw_session_lock_t(void *p,es_event_lw_session_lock_t *name_es_event_lw_session_lock_t) {
    if (!name_es_event_lw_session_lock_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_lw_session_lock_t);
    if (p) {
        memcpy(p,name_es_event_lw_session_lock_t,size);
    }
    offset += size;
    size = ces_write_es_event_lw_session_lock_t_points(p ? p+offset : p, name_es_event_lw_session_lock_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_lw_session_lock_t_points(void *p,es_event_lw_session_lock_t *name_es_event_lw_session_lock_t) {
    if (!name_es_event_lw_session_lock_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_lw_session_lock_t->username.data,name_es_event_lw_session_lock_t->username.length);
    }
    offset += name_es_event_lw_session_lock_t->username.length;
    return offset;
}

size_t ces_write_es_event_lw_session_login_t(void *p,es_event_lw_session_login_t *name_es_event_lw_session_login_t) {
    if (!name_es_event_lw_session_login_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_lw_session_login_t);
    if (p) {
        memcpy(p,name_es_event_lw_session_login_t,size);
    }
    offset += size;
    size = ces_write_es_event_lw_session_login_t_points(p ? p+offset : p, name_es_event_lw_session_login_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_lw_session_login_t_points(void *p,es_event_lw_session_login_t *name_es_event_lw_session_login_t) {
    if (!name_es_event_lw_session_login_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_lw_session_login_t->username.data,name_es_event_lw_session_login_t->username.length);
    }
    offset += name_es_event_lw_session_login_t->username.length;
    return offset;
}

size_t ces_write_es_event_lw_session_logout_t(void *p,es_event_lw_session_logout_t *name_es_event_lw_session_logout_t) {
    if (!name_es_event_lw_session_logout_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_lw_session_logout_t);
    if (p) {
        memcpy(p,name_es_event_lw_session_logout_t,size);
    }
    offset += size;
    size = ces_write_es_event_lw_session_logout_t_points(p ? p+offset : p, name_es_event_lw_session_logout_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_lw_session_logout_t_points(void *p,es_event_lw_session_logout_t *name_es_event_lw_session_logout_t) {
    if (!name_es_event_lw_session_logout_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_lw_session_logout_t->username.data,name_es_event_lw_session_logout_t->username.length);
    }
    offset += name_es_event_lw_session_logout_t->username.length;
    return offset;
}

size_t ces_write_es_event_lw_session_unlock_t(void *p,es_event_lw_session_unlock_t *name_es_event_lw_session_unlock_t) {
    if (!name_es_event_lw_session_unlock_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_lw_session_unlock_t);
    if (p) {
        memcpy(p,name_es_event_lw_session_unlock_t,size);
    }
    offset += size;
    size = ces_write_es_event_lw_session_unlock_t_points(p ? p+offset : p, name_es_event_lw_session_unlock_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_lw_session_unlock_t_points(void *p,es_event_lw_session_unlock_t *name_es_event_lw_session_unlock_t) {
    if (!name_es_event_lw_session_unlock_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_lw_session_unlock_t->username.data,name_es_event_lw_session_unlock_t->username.length);
    }
    offset += name_es_event_lw_session_unlock_t->username.length;
    return offset;
}

size_t ces_write_es_event_mmap_t(void *p,es_event_mmap_t *name_es_event_mmap_t) {
    if (!name_es_event_mmap_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_mmap_t);
    if (p) {
        memcpy(p,name_es_event_mmap_t,size);
    }
    offset += size;
    size = ces_write_es_event_mmap_t_points(p ? p+offset : p, name_es_event_mmap_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_mmap_t_points(void *p,es_event_mmap_t *name_es_event_mmap_t) {
    if (!name_es_event_mmap_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_mmap_t->source);
    offset += size;
    return offset;
}

size_t ces_write_es_event_mount_t(void *p,es_event_mount_t *name_es_event_mount_t) {
    if (!name_es_event_mount_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_mount_t);
    if (p) {
        memcpy(p,name_es_event_mount_t,size);
    }
    offset += size;
    size = ces_write_es_event_mount_t_points(p ? p+offset : p, name_es_event_mount_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_mount_t_points(void *p,es_event_mount_t *name_es_event_mount_t) {
    if (!name_es_event_mount_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_statfs_t(p ? p+offset : p, name_es_event_mount_t->statfs);
    offset += size;
    return offset;
}

size_t ces_write_es_event_mprotect_t(void *p,es_event_mprotect_t *name_es_event_mprotect_t) {
    if (!name_es_event_mprotect_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_mprotect_t);
    if (p) {
        memcpy(p,name_es_event_mprotect_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_open_t(void *p,es_event_open_t *name_es_event_open_t) {
    if (!name_es_event_open_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_open_t);
    if (p) {
        memcpy(p,name_es_event_open_t,size);
    }
    offset += size;
    size = ces_write_es_event_open_t_points(p ? p+offset : p, name_es_event_open_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_open_t_points(void *p,es_event_open_t *name_es_event_open_t) {
    if (!name_es_event_open_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_open_t->file);
    offset += size;
    return offset;
}

size_t ces_write_es_event_openssh_login_t(void *p,es_event_openssh_login_t *name_es_event_openssh_login_t) {
    if (!name_es_event_openssh_login_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_openssh_login_t);
    if (p) {
        memcpy(p,name_es_event_openssh_login_t,size);
    }
    offset += size;
    size = ces_write_es_event_openssh_login_t_points(p ? p+offset : p, name_es_event_openssh_login_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_openssh_login_t_points(void *p,es_event_openssh_login_t *name_es_event_openssh_login_t) {
    if (!name_es_event_openssh_login_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_openssh_login_t->source_address.data,name_es_event_openssh_login_t->source_address.length);
    }
    offset += name_es_event_openssh_login_t->source_address.length;
    if (p) {
        memcpy(p+offset,name_es_event_openssh_login_t->username.data,name_es_event_openssh_login_t->username.length);
    }
    offset += name_es_event_openssh_login_t->username.length;
    return offset;
}

size_t ces_write_es_event_openssh_logout_t(void *p,es_event_openssh_logout_t *name_es_event_openssh_logout_t) {
    if (!name_es_event_openssh_logout_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_openssh_logout_t);
    if (p) {
        memcpy(p,name_es_event_openssh_logout_t,size);
    }
    offset += size;
    size = ces_write_es_event_openssh_logout_t_points(p ? p+offset : p, name_es_event_openssh_logout_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_openssh_logout_t_points(void *p,es_event_openssh_logout_t *name_es_event_openssh_logout_t) {
    if (!name_es_event_openssh_logout_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_openssh_logout_t->username.data,name_es_event_openssh_logout_t->username.length);
    }
    offset += name_es_event_openssh_logout_t->username.length;
    if (p) {
        memcpy(p+offset,name_es_event_openssh_logout_t->source_address.data,name_es_event_openssh_logout_t->source_address.length);
    }
    offset += name_es_event_openssh_logout_t->source_address.length;
    return offset;
}

size_t ces_write_es_event_proc_check_t(void *p,es_event_proc_check_t *name_es_event_proc_check_t) {
    if (!name_es_event_proc_check_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_proc_check_t);
    if (p) {
        memcpy(p,name_es_event_proc_check_t,size);
    }
    offset += size;
    size = ces_write_es_event_proc_check_t_points(p ? p+offset : p, name_es_event_proc_check_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_proc_check_t_points(void *p,es_event_proc_check_t *name_es_event_proc_check_t) {
    if (!name_es_event_proc_check_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_proc_check_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_proc_suspend_resume_t(void *p,es_event_proc_suspend_resume_t *name_es_event_proc_suspend_resume_t) {
    if (!name_es_event_proc_suspend_resume_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_proc_suspend_resume_t);
    if (p) {
        memcpy(p,name_es_event_proc_suspend_resume_t,size);
    }
    offset += size;
    size = ces_write_es_event_proc_suspend_resume_t_points(p ? p+offset : p, name_es_event_proc_suspend_resume_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_proc_suspend_resume_t_points(void *p,es_event_proc_suspend_resume_t *name_es_event_proc_suspend_resume_t) {
    if (!name_es_event_proc_suspend_resume_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_proc_suspend_resume_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_pty_close_t(void *p,es_event_pty_close_t *name_es_event_pty_close_t) {
    if (!name_es_event_pty_close_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_pty_close_t);
    if (p) {
        memcpy(p,name_es_event_pty_close_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_pty_grant_t(void *p,es_event_pty_grant_t *name_es_event_pty_grant_t) {
    if (!name_es_event_pty_grant_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_pty_grant_t);
    if (p) {
        memcpy(p,name_es_event_pty_grant_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_readdir_t(void *p,es_event_readdir_t *name_es_event_readdir_t) {
    if (!name_es_event_readdir_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_readdir_t);
    if (p) {
        memcpy(p,name_es_event_readdir_t,size);
    }
    offset += size;
    size = ces_write_es_event_readdir_t_points(p ? p+offset : p, name_es_event_readdir_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_readdir_t_points(void *p,es_event_readdir_t *name_es_event_readdir_t) {
    if (!name_es_event_readdir_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_readdir_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_readlink_t(void *p,es_event_readlink_t *name_es_event_readlink_t) {
    if (!name_es_event_readlink_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_readlink_t);
    if (p) {
        memcpy(p,name_es_event_readlink_t,size);
    }
    offset += size;
    size = ces_write_es_event_readlink_t_points(p ? p+offset : p, name_es_event_readlink_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_readlink_t_points(void *p,es_event_readlink_t *name_es_event_readlink_t) {
    if (!name_es_event_readlink_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_readlink_t->source);
    offset += size;
    return offset;
}

size_t ces_write_es_event_remote_thread_create_t(void *p,es_event_remote_thread_create_t *name_es_event_remote_thread_create_t) {
    if (!name_es_event_remote_thread_create_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_remote_thread_create_t);
    if (p) {
        memcpy(p,name_es_event_remote_thread_create_t,size);
    }
    offset += size;
    size = ces_write_es_event_remote_thread_create_t_points(p ? p+offset : p, name_es_event_remote_thread_create_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_remote_thread_create_t_points(void *p,es_event_remote_thread_create_t *name_es_event_remote_thread_create_t) {
    if (!name_es_event_remote_thread_create_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_remote_thread_create_t->target);
    offset += size;
    size = ces_write_es_thread_state_t(p ? p+offset : p, name_es_event_remote_thread_create_t->thread_state);
    offset += size;
    return offset;
}

size_t ces_write_es_event_remount_t(void *p,es_event_remount_t *name_es_event_remount_t) {
    if (!name_es_event_remount_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_remount_t);
    if (p) {
        memcpy(p,name_es_event_remount_t,size);
    }
    offset += size;
    size = ces_write_es_event_remount_t_points(p ? p+offset : p, name_es_event_remount_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_remount_t_points(void *p,es_event_remount_t *name_es_event_remount_t) {
    if (!name_es_event_remount_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_statfs_t(p ? p+offset : p, name_es_event_remount_t->statfs);
    offset += size;
    return offset;
}

size_t ces_write_es_event_rename_t(void *p,es_event_rename_t *name_es_event_rename_t) {
    if (!name_es_event_rename_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_rename_t);
    if (p) {
        memcpy(p,name_es_event_rename_t,size);
    }
    offset += size;
    size = ces_write_es_event_rename_t_points(p ? p+offset : p, name_es_event_rename_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_rename_t_points(void *p,es_event_rename_t *name_es_event_rename_t) {
    if (!name_es_event_rename_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_rename_t->source);
    offset += size;
    return offset;
}

size_t ces_write_es_event_screensharing_attach_t(void *p,es_event_screensharing_attach_t *name_es_event_screensharing_attach_t) {
    if (!name_es_event_screensharing_attach_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_screensharing_attach_t);
    if (p) {
        memcpy(p,name_es_event_screensharing_attach_t,size);
    }
    offset += size;
    size = ces_write_es_event_screensharing_attach_t_points(p ? p+offset : p, name_es_event_screensharing_attach_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_screensharing_attach_t_points(void *p,es_event_screensharing_attach_t *name_es_event_screensharing_attach_t) {
    if (!name_es_event_screensharing_attach_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_screensharing_attach_t->authentication_username.data,name_es_event_screensharing_attach_t->authentication_username.length);
    }
    offset += name_es_event_screensharing_attach_t->authentication_username.length;
    if (p) {
        memcpy(p+offset,name_es_event_screensharing_attach_t->session_username.data,name_es_event_screensharing_attach_t->session_username.length);
    }
    offset += name_es_event_screensharing_attach_t->session_username.length;
    if (p) {
        memcpy(p+offset,name_es_event_screensharing_attach_t->viewer_appleid.data,name_es_event_screensharing_attach_t->viewer_appleid.length);
    }
    offset += name_es_event_screensharing_attach_t->viewer_appleid.length;
    if (p) {
        memcpy(p+offset,name_es_event_screensharing_attach_t->authentication_type.data,name_es_event_screensharing_attach_t->authentication_type.length);
    }
    offset += name_es_event_screensharing_attach_t->authentication_type.length;
    if (p) {
        memcpy(p+offset,name_es_event_screensharing_attach_t->source_address.data,name_es_event_screensharing_attach_t->source_address.length);
    }
    offset += name_es_event_screensharing_attach_t->source_address.length;
    return offset;
}

size_t ces_write_es_event_screensharing_detach_t(void *p,es_event_screensharing_detach_t *name_es_event_screensharing_detach_t) {
    if (!name_es_event_screensharing_detach_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_screensharing_detach_t);
    if (p) {
        memcpy(p,name_es_event_screensharing_detach_t,size);
    }
    offset += size;
    size = ces_write_es_event_screensharing_detach_t_points(p ? p+offset : p, name_es_event_screensharing_detach_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_screensharing_detach_t_points(void *p,es_event_screensharing_detach_t *name_es_event_screensharing_detach_t) {
    if (!name_es_event_screensharing_detach_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_screensharing_detach_t->source_address.data,name_es_event_screensharing_detach_t->source_address.length);
    }
    offset += name_es_event_screensharing_detach_t->source_address.length;
    if (p) {
        memcpy(p+offset,name_es_event_screensharing_detach_t->viewer_appleid.data,name_es_event_screensharing_detach_t->viewer_appleid.length);
    }
    offset += name_es_event_screensharing_detach_t->viewer_appleid.length;
    return offset;
}

size_t ces_write_es_event_searchfs_t(void *p,es_event_searchfs_t *name_es_event_searchfs_t) {
    if (!name_es_event_searchfs_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_searchfs_t);
    if (p) {
        memcpy(p,name_es_event_searchfs_t,size);
    }
    offset += size;
    size = ces_write_es_event_searchfs_t_points(p ? p+offset : p, name_es_event_searchfs_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_searchfs_t_points(void *p,es_event_searchfs_t *name_es_event_searchfs_t) {
    if (!name_es_event_searchfs_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_searchfs_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setacl_t(void *p,es_event_setacl_t *name_es_event_setacl_t) {
    if (!name_es_event_setacl_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setacl_t);
    if (p) {
        memcpy(p,name_es_event_setacl_t,size);
    }
    offset += size;
    size = ces_write_es_event_setacl_t_points(p ? p+offset : p, name_es_event_setacl_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setacl_t_points(void *p,es_event_setacl_t *name_es_event_setacl_t) {
    if (!name_es_event_setacl_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_setacl_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setattrlist_t(void *p,es_event_setattrlist_t *name_es_event_setattrlist_t) {
    if (!name_es_event_setattrlist_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setattrlist_t);
    if (p) {
        memcpy(p,name_es_event_setattrlist_t,size);
    }
    offset += size;
    size = ces_write_es_event_setattrlist_t_points(p ? p+offset : p, name_es_event_setattrlist_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setattrlist_t_points(void *p,es_event_setattrlist_t *name_es_event_setattrlist_t) {
    if (!name_es_event_setattrlist_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_setattrlist_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setegid_t(void *p,es_event_setegid_t *name_es_event_setegid_t) {
    if (!name_es_event_setegid_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setegid_t);
    if (p) {
        memcpy(p,name_es_event_setegid_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_seteuid_t(void *p,es_event_seteuid_t *name_es_event_seteuid_t) {
    if (!name_es_event_seteuid_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_seteuid_t);
    if (p) {
        memcpy(p,name_es_event_seteuid_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_setextattr_t(void *p,es_event_setextattr_t *name_es_event_setextattr_t) {
    if (!name_es_event_setextattr_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setextattr_t);
    if (p) {
        memcpy(p,name_es_event_setextattr_t,size);
    }
    offset += size;
    size = ces_write_es_event_setextattr_t_points(p ? p+offset : p, name_es_event_setextattr_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setextattr_t_points(void *p,es_event_setextattr_t *name_es_event_setextattr_t) {
    if (!name_es_event_setextattr_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_setextattr_t->target);
    offset += size;
    if (p) {
        memcpy(p+offset,name_es_event_setextattr_t->extattr.data,name_es_event_setextattr_t->extattr.length);
    }
    offset += name_es_event_setextattr_t->extattr.length;
    return offset;
}

size_t ces_write_es_event_setflags_t(void *p,es_event_setflags_t *name_es_event_setflags_t) {
    if (!name_es_event_setflags_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setflags_t);
    if (p) {
        memcpy(p,name_es_event_setflags_t,size);
    }
    offset += size;
    size = ces_write_es_event_setflags_t_points(p ? p+offset : p, name_es_event_setflags_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setflags_t_points(void *p,es_event_setflags_t *name_es_event_setflags_t) {
    if (!name_es_event_setflags_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_setflags_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setgid_t(void *p,es_event_setgid_t *name_es_event_setgid_t) {
    if (!name_es_event_setgid_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setgid_t);
    if (p) {
        memcpy(p,name_es_event_setgid_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_setmode_t(void *p,es_event_setmode_t *name_es_event_setmode_t) {
    if (!name_es_event_setmode_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setmode_t);
    if (p) {
        memcpy(p,name_es_event_setmode_t,size);
    }
    offset += size;
    size = ces_write_es_event_setmode_t_points(p ? p+offset : p, name_es_event_setmode_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setmode_t_points(void *p,es_event_setmode_t *name_es_event_setmode_t) {
    if (!name_es_event_setmode_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_setmode_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setowner_t(void *p,es_event_setowner_t *name_es_event_setowner_t) {
    if (!name_es_event_setowner_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setowner_t);
    if (p) {
        memcpy(p,name_es_event_setowner_t,size);
    }
    offset += size;
    size = ces_write_es_event_setowner_t_points(p ? p+offset : p, name_es_event_setowner_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setowner_t_points(void *p,es_event_setowner_t *name_es_event_setowner_t) {
    if (!name_es_event_setowner_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_setowner_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_setregid_t(void *p,es_event_setregid_t *name_es_event_setregid_t) {
    if (!name_es_event_setregid_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setregid_t);
    if (p) {
        memcpy(p,name_es_event_setregid_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_setreuid_t(void *p,es_event_setreuid_t *name_es_event_setreuid_t) {
    if (!name_es_event_setreuid_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setreuid_t);
    if (p) {
        memcpy(p,name_es_event_setreuid_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_settime_t(void *p,es_event_settime_t *name_es_event_settime_t) {
    if (!name_es_event_settime_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_settime_t);
    if (p) {
        memcpy(p,name_es_event_settime_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_setuid_t(void *p,es_event_setuid_t *name_es_event_setuid_t) {
    if (!name_es_event_setuid_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_setuid_t);
    if (p) {
        memcpy(p,name_es_event_setuid_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_signal_t(void *p,es_event_signal_t *name_es_event_signal_t) {
    if (!name_es_event_signal_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_signal_t);
    if (p) {
        memcpy(p,name_es_event_signal_t,size);
    }
    offset += size;
    size = ces_write_es_event_signal_t_points(p ? p+offset : p, name_es_event_signal_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_signal_t_points(void *p,es_event_signal_t *name_es_event_signal_t) {
    if (!name_es_event_signal_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_signal_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_stat_t(void *p,es_event_stat_t *name_es_event_stat_t) {
    if (!name_es_event_stat_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_stat_t);
    if (p) {
        memcpy(p,name_es_event_stat_t,size);
    }
    offset += size;
    size = ces_write_es_event_stat_t_points(p ? p+offset : p, name_es_event_stat_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_stat_t_points(void *p,es_event_stat_t *name_es_event_stat_t) {
    if (!name_es_event_stat_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_stat_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_trace_t(void *p,es_event_trace_t *name_es_event_trace_t) {
    if (!name_es_event_trace_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_trace_t);
    if (p) {
        memcpy(p,name_es_event_trace_t,size);
    }
    offset += size;
    size = ces_write_es_event_trace_t_points(p ? p+offset : p, name_es_event_trace_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_trace_t_points(void *p,es_event_trace_t *name_es_event_trace_t) {
    if (!name_es_event_trace_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_event_trace_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_truncate_t(void *p,es_event_truncate_t *name_es_event_truncate_t) {
    if (!name_es_event_truncate_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_truncate_t);
    if (p) {
        memcpy(p,name_es_event_truncate_t,size);
    }
    offset += size;
    size = ces_write_es_event_truncate_t_points(p ? p+offset : p, name_es_event_truncate_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_truncate_t_points(void *p,es_event_truncate_t *name_es_event_truncate_t) {
    if (!name_es_event_truncate_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_truncate_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_type_t(void *p,es_event_type_t *name_es_event_type_t) {
    if (!name_es_event_type_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_type_t);
    if (p) {
        memcpy(p,name_es_event_type_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_event_uipc_bind_t(void *p,es_event_uipc_bind_t *name_es_event_uipc_bind_t) {
    if (!name_es_event_uipc_bind_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_uipc_bind_t);
    if (p) {
        memcpy(p,name_es_event_uipc_bind_t,size);
    }
    offset += size;
    size = ces_write_es_event_uipc_bind_t_points(p ? p+offset : p, name_es_event_uipc_bind_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_uipc_bind_t_points(void *p,es_event_uipc_bind_t *name_es_event_uipc_bind_t) {
    if (!name_es_event_uipc_bind_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_uipc_bind_t->filename.data,name_es_event_uipc_bind_t->filename.length);
    }
    offset += name_es_event_uipc_bind_t->filename.length;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_uipc_bind_t->dir);
    offset += size;
    return offset;
}

size_t ces_write_es_event_uipc_connect_t(void *p,es_event_uipc_connect_t *name_es_event_uipc_connect_t) {
    if (!name_es_event_uipc_connect_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_uipc_connect_t);
    if (p) {
        memcpy(p,name_es_event_uipc_connect_t,size);
    }
    offset += size;
    size = ces_write_es_event_uipc_connect_t_points(p ? p+offset : p, name_es_event_uipc_connect_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_uipc_connect_t_points(void *p,es_event_uipc_connect_t *name_es_event_uipc_connect_t) {
    if (!name_es_event_uipc_connect_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_uipc_connect_t->file);
    offset += size;
    return offset;
}

size_t ces_write_es_event_unlink_t(void *p,es_event_unlink_t *name_es_event_unlink_t) {
    if (!name_es_event_unlink_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_unlink_t);
    if (p) {
        memcpy(p,name_es_event_unlink_t,size);
    }
    offset += size;
    size = ces_write_es_event_unlink_t_points(p ? p+offset : p, name_es_event_unlink_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_unlink_t_points(void *p,es_event_unlink_t *name_es_event_unlink_t) {
    if (!name_es_event_unlink_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_unlink_t->parent_dir);
    offset += size;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_unlink_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_unmount_t(void *p,es_event_unmount_t *name_es_event_unmount_t) {
    if (!name_es_event_unmount_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_unmount_t);
    if (p) {
        memcpy(p,name_es_event_unmount_t,size);
    }
    offset += size;
    size = ces_write_es_event_unmount_t_points(p ? p+offset : p, name_es_event_unmount_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_unmount_t_points(void *p,es_event_unmount_t *name_es_event_unmount_t) {
    if (!name_es_event_unmount_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_statfs_t(p ? p+offset : p, name_es_event_unmount_t->statfs);
    offset += size;
    return offset;
}

size_t ces_write_es_event_utimes_t(void *p,es_event_utimes_t *name_es_event_utimes_t) {
    if (!name_es_event_utimes_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_utimes_t);
    if (p) {
        memcpy(p,name_es_event_utimes_t,size);
    }
    offset += size;
    size = ces_write_es_event_utimes_t_points(p ? p+offset : p, name_es_event_utimes_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_utimes_t_points(void *p,es_event_utimes_t *name_es_event_utimes_t) {
    if (!name_es_event_utimes_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_utimes_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_write_t(void *p,es_event_write_t *name_es_event_write_t) {
    if (!name_es_event_write_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_write_t);
    if (p) {
        memcpy(p,name_es_event_write_t,size);
    }
    offset += size;
    size = ces_write_es_event_write_t_points(p ? p+offset : p, name_es_event_write_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_write_t_points(void *p,es_event_write_t *name_es_event_write_t) {
    if (!name_es_event_write_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_event_write_t->target);
    offset += size;
    return offset;
}

size_t ces_write_es_event_xp_malware_detected_t(void *p,es_event_xp_malware_detected_t *name_es_event_xp_malware_detected_t) {
    if (!name_es_event_xp_malware_detected_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_xp_malware_detected_t);
    if (p) {
        memcpy(p,name_es_event_xp_malware_detected_t,size);
    }
    offset += size;
    size = ces_write_es_event_xp_malware_detected_t_points(p ? p+offset : p, name_es_event_xp_malware_detected_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_xp_malware_detected_t_points(void *p,es_event_xp_malware_detected_t *name_es_event_xp_malware_detected_t) {
    if (!name_es_event_xp_malware_detected_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_xp_malware_detected_t->malware_identifier.data,name_es_event_xp_malware_detected_t->malware_identifier.length);
    }
    offset += name_es_event_xp_malware_detected_t->malware_identifier.length;
    if (p) {
        memcpy(p+offset,name_es_event_xp_malware_detected_t->detected_path.data,name_es_event_xp_malware_detected_t->detected_path.length);
    }
    offset += name_es_event_xp_malware_detected_t->detected_path.length;
    if (p) {
        memcpy(p+offset,name_es_event_xp_malware_detected_t->incident_identifier.data,name_es_event_xp_malware_detected_t->incident_identifier.length);
    }
    offset += name_es_event_xp_malware_detected_t->incident_identifier.length;
    if (p) {
        memcpy(p+offset,name_es_event_xp_malware_detected_t->signature_version.data,name_es_event_xp_malware_detected_t->signature_version.length);
    }
    offset += name_es_event_xp_malware_detected_t->signature_version.length;
    return offset;
}

size_t ces_write_es_event_xp_malware_remediated_t(void *p,es_event_xp_malware_remediated_t *name_es_event_xp_malware_remediated_t) {
    if (!name_es_event_xp_malware_remediated_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_event_xp_malware_remediated_t);
    if (p) {
        memcpy(p,name_es_event_xp_malware_remediated_t,size);
    }
    offset += size;
    size = ces_write_es_event_xp_malware_remediated_t_points(p ? p+offset : p, name_es_event_xp_malware_remediated_t);
    offset += size;
    return offset;
}

size_t ces_write_es_event_xp_malware_remediated_t_points(void *p,es_event_xp_malware_remediated_t *name_es_event_xp_malware_remediated_t) {
    if (!name_es_event_xp_malware_remediated_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_event_xp_malware_remediated_t->action_type.data,name_es_event_xp_malware_remediated_t->action_type.length);
    }
    offset += name_es_event_xp_malware_remediated_t->action_type.length;
    if (p) {
        memcpy(p+offset,name_es_event_xp_malware_remediated_t->malware_identifier.data,name_es_event_xp_malware_remediated_t->malware_identifier.length);
    }
    offset += name_es_event_xp_malware_remediated_t->malware_identifier.length;
    if (p) {
        memcpy(p+offset,name_es_event_xp_malware_remediated_t->remediated_path.data,name_es_event_xp_malware_remediated_t->remediated_path.length);
    }
    offset += name_es_event_xp_malware_remediated_t->remediated_path.length;
    if (p) {
        memcpy(p+offset,name_es_event_xp_malware_remediated_t->result_description.data,name_es_event_xp_malware_remediated_t->result_description.length);
    }
    offset += name_es_event_xp_malware_remediated_t->result_description.length;
    if (p) {
        memcpy(p+offset,name_es_event_xp_malware_remediated_t->incident_identifier.data,name_es_event_xp_malware_remediated_t->incident_identifier.length);
    }
    offset += name_es_event_xp_malware_remediated_t->incident_identifier.length;
    size = ces_write_audit_token_t(p ? p+offset : p, name_es_event_xp_malware_remediated_t->remediated_process_audit_token);
    offset += size;
    if (p) {
        memcpy(p+offset,name_es_event_xp_malware_remediated_t->signature_version.data,name_es_event_xp_malware_remediated_t->signature_version.length);
    }
    offset += name_es_event_xp_malware_remediated_t->signature_version.length;
    return offset;
}

size_t ces_write_es_file_t(void *p,es_file_t *name_es_file_t) {
    if (!name_es_file_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_file_t);
    if (p) {
        memcpy(p,name_es_file_t,size);
    }
    offset += size;
    size = ces_write_es_file_t_points(p ? p+offset : p, name_es_file_t);
    offset += size;
    return offset;
}

size_t ces_write_es_file_t_points(void *p,es_file_t *name_es_file_t) {
    if (!name_es_file_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_file_t->path.data,name_es_file_t->path.length);
    }
    offset += name_es_file_t->path.length;
    return offset;
}

size_t ces_write_es_get_task_type_t(void *p,es_get_task_type_t *name_es_get_task_type_t) {
    if (!name_es_get_task_type_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_get_task_type_t);
    if (p) {
        memcpy(p,name_es_get_task_type_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_message_t(void *p,es_message_t *name_es_message_t) {
    if (!name_es_message_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_message_t);
    if (p) {
        memcpy(p,name_es_message_t,size);
    }
    offset += size;
    size = ces_write_es_message_t_points(p ? p+offset : p, name_es_message_t);
    offset += size;
    return offset;
}

size_t ces_write_es_message_t_points(void *p,es_message_t *name_es_message_t) {
    if (!name_es_message_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    size = ces_write_es_thread_t(p ? p+offset : p, name_es_message_t->thread);
    offset += size;
    size = ces_write_es_process_t(p ? p+offset : p, name_es_message_t->process);
    offset += size;
    return offset;
}

size_t ces_write_es_openssh_login_result_type_t(void *p,es_openssh_login_result_type_t *name_es_openssh_login_result_type_t) {
    if (!name_es_openssh_login_result_type_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_openssh_login_result_type_t);
    if (p) {
        memcpy(p,name_es_openssh_login_result_type_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_proc_check_type_t(void *p,es_proc_check_type_t *name_es_proc_check_type_t) {
    if (!name_es_proc_check_type_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_proc_check_type_t);
    if (p) {
        memcpy(p,name_es_proc_check_type_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_proc_suspend_resume_type_t(void *p,es_proc_suspend_resume_type_t *name_es_proc_suspend_resume_type_t) {
    if (!name_es_proc_suspend_resume_type_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_proc_suspend_resume_type_t);
    if (p) {
        memcpy(p,name_es_proc_suspend_resume_type_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_process_t(void *p,es_process_t *name_es_process_t) {
    if (!name_es_process_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_process_t);
    if (p) {
        memcpy(p,name_es_process_t,size);
    }
    offset += size;
    size = ces_write_es_process_t_points(p ? p+offset : p, name_es_process_t);
    offset += size;
    return offset;
}

size_t ces_write_es_process_t_points(void *p,es_process_t *name_es_process_t) {
    if (!name_es_process_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_process_t->team_id.data,name_es_process_t->team_id.length);
    }
    offset += name_es_process_t->team_id.length;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_process_t->executable);
    offset += size;
    size = ces_write_es_file_t(p ? p+offset : p, name_es_process_t->tty);
    offset += size;
    if (p) {
        memcpy(p+offset,name_es_process_t->signing_id.data,name_es_process_t->signing_id.length);
    }
    offset += name_es_process_t->signing_id.length;
    return offset;
}

size_t ces_write_es_set_or_clear_t(void *p,es_set_or_clear_t *name_es_set_or_clear_t) {
    if (!name_es_set_or_clear_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_set_or_clear_t);
    if (p) {
        memcpy(p,name_es_set_or_clear_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_string_token_t(void *p,es_string_token_t *name_es_string_token_t) {
    if (!name_es_string_token_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_string_token_t);
    if (p) {
        memcpy(p,name_es_string_token_t,size);
    }
    offset += size;
    size = ces_write_es_string_token_t_points(p ? p+offset : p, name_es_string_token_t);
    offset += size;
    return offset;
}

size_t ces_write_es_string_token_t_points(void *p,es_string_token_t *name_es_string_token_t) {
    if (!name_es_string_token_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_string_token_t->data,name_es_string_token_t->length);
    }
    offset += name_es_string_token_t->length;
    return offset;
}

size_t ces_write_es_thread_state_t(void *p,es_thread_state_t *name_es_thread_state_t) {
    if (!name_es_thread_state_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_thread_state_t);
    if (p) {
        memcpy(p,name_es_thread_state_t,size);
    }
    offset += size;
    size = ces_write_es_thread_state_t_points(p ? p+offset : p, name_es_thread_state_t);
    offset += size;
    return offset;
}

size_t ces_write_es_thread_state_t_points(void *p,es_thread_state_t *name_es_thread_state_t) {
    if (!name_es_thread_state_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_thread_state_t->state.data,name_es_thread_state_t->state.size);
    }
    offset += name_es_thread_state_t->state.size;
    return offset;
}

size_t ces_write_es_thread_t(void *p,es_thread_t *name_es_thread_t) {
    if (!name_es_thread_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_thread_t);
    if (p) {
        memcpy(p,name_es_thread_t,size);
    }
    offset += size;
    return offset;
}


size_t ces_write_es_token_t(void *p,es_token_t *name_es_token_t) {
    if (!name_es_token_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = sizeof(es_token_t);
    if (p) {
        memcpy(p,name_es_token_t,size);
    }
    offset += size;
    size = ces_write_es_token_t_points(p ? p+offset : p, name_es_token_t);
    offset += size;
    return offset;
}

size_t ces_write_es_token_t_points(void *p,es_token_t *name_es_token_t) {
    if (!name_es_token_t) {
        return 0;
    }
    size_t offset = 0;
    size_t size = 0;
    if (p) {
        memcpy(p+offset,name_es_token_t->data,name_es_token_t->size);
    }
    offset += name_es_token_t->size;
    return offset;
}

es_message_t* ces_read_es_message_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_message_t *name_es_message_t = p;
    offset += sizeof(es_message_t);
    size_t size = ces_read_es_message_t_points(p+offset,name_es_message_t);
    offset += size;
    switch (name_es_message_t->event_type) {
        case ES_EVENT_TYPE_AUTH_CHDIR:{
            size = ces_read_es_event_chdir_t_points(p+offset,&(name_es_message_t->event.chdir));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_CHROOT:{
            size = ces_read_es_event_chroot_t_points(p+offset,&(name_es_message_t->event.chroot));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_CLONE:{
            size = ces_read_es_event_clone_t_points(p+offset,&(name_es_message_t->event.clone));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_COPYFILE:{
            size = ces_read_es_event_copyfile_t_points(p+offset,&(name_es_message_t->event.copyfile));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_CREATE:{
            size = ces_read_es_event_create_t_points(p+offset,&(name_es_message_t->event.create));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_DELETEEXTATTR:{
            size = ces_read_es_event_deleteextattr_t_points(p+offset,&(name_es_message_t->event.deleteextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_EXCHANGEDATA:{
            size = ces_read_es_event_exchangedata_t_points(p+offset,&(name_es_message_t->event.exchangedata));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_EXEC:{
            size = ces_read_es_event_exec_t_points(p+offset,&(name_es_message_t->event.exec));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_FCNTL:{
            size = ces_read_es_event_fcntl_t_points(p+offset,&(name_es_message_t->event.fcntl));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE:{
            size = ces_read_es_event_file_provider_materialize_t_points(p+offset,&(name_es_message_t->event.file_provider_materialize));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE:{
            size = ces_read_es_event_file_provider_update_t_points(p+offset,&(name_es_message_t->event.file_provider_update));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_FSGETPATH:{
            size = ces_read_es_event_fsgetpath_t_points(p+offset,&(name_es_message_t->event.fsgetpath));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_GETATTRLIST:{
            size = ces_read_es_event_getattrlist_t_points(p+offset,&(name_es_message_t->event.getattrlist));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_GETEXTATTR:{
            size = ces_read_es_event_getextattr_t_points(p+offset,&(name_es_message_t->event.getextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_GET_TASK:{
            size = ces_read_es_event_get_task_t_points(p+offset,&(name_es_message_t->event.get_task));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_GET_TASK_READ:{
            size = ces_read_es_event_get_task_read_t_points(p+offset,&(name_es_message_t->event.get_task_read));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_IOKIT_OPEN:{
            size = ces_read_es_event_iokit_open_t_points(p+offset,&(name_es_message_t->event.iokit_open));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_KEXTLOAD:{
            size = ces_read_es_event_kextload_t_points(p+offset,&(name_es_message_t->event.kextload));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_LINK:{
            size = ces_read_es_event_link_t_points(p+offset,&(name_es_message_t->event.link));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_LISTEXTATTR:{
            size = ces_read_es_event_listextattr_t_points(p+offset,&(name_es_message_t->event.listextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_MMAP:{
            size = ces_read_es_event_mmap_t_points(p+offset,&(name_es_message_t->event.mmap));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_MOUNT:{
            size = ces_read_es_event_mount_t_points(p+offset,&(name_es_message_t->event.mount));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_MPROTECT:{
            size = ces_read_es_event_mprotect_t_points(p+offset,&(name_es_message_t->event.mprotect));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_OPEN:{
            size = ces_read_es_event_open_t_points(p+offset,&(name_es_message_t->event.open));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_PROC_CHECK:{
            size = ces_read_es_event_proc_check_t_points(p+offset,&(name_es_message_t->event.proc_check));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME:{
            size = ces_read_es_event_proc_suspend_resume_t_points(p+offset,&(name_es_message_t->event.proc_suspend_resume));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_READDIR:{
            size = ces_read_es_event_readdir_t_points(p+offset,&(name_es_message_t->event.readdir));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_READLINK:{
            size = ces_read_es_event_readlink_t_points(p+offset,&(name_es_message_t->event.readlink));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_REMOUNT:{
            size = ces_read_es_event_remount_t_points(p+offset,&(name_es_message_t->event.remount));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_RENAME:{
            size = ces_read_es_event_rename_t_points(p+offset,&(name_es_message_t->event.rename));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SEARCHFS:{
            size = ces_read_es_event_searchfs_t_points(p+offset,&(name_es_message_t->event.searchfs));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETACL:{
            size = ces_read_es_event_setacl_t_points(p+offset,&(name_es_message_t->event.setacl));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETATTRLIST:{
            size = ces_read_es_event_setattrlist_t_points(p+offset,&(name_es_message_t->event.setattrlist));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETEXTATTR:{
            size = ces_read_es_event_setextattr_t_points(p+offset,&(name_es_message_t->event.setextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETFLAGS:{
            size = ces_read_es_event_setflags_t_points(p+offset,&(name_es_message_t->event.setflags));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETMODE:{
            size = ces_read_es_event_setmode_t_points(p+offset,&(name_es_message_t->event.setmode));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETOWNER:{
            size = ces_read_es_event_setowner_t_points(p+offset,&(name_es_message_t->event.setowner));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SETTIME:{
            size = ces_read_es_event_settime_t_points(p+offset,&(name_es_message_t->event.settime));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_SIGNAL:{
            size = ces_read_es_event_signal_t_points(p+offset,&(name_es_message_t->event.signal));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_TRUNCATE:{
            size = ces_read_es_event_truncate_t_points(p+offset,&(name_es_message_t->event.truncate));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_UIPC_BIND:{
            size = ces_read_es_event_uipc_bind_t_points(p+offset,&(name_es_message_t->event.uipc_bind));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_UIPC_CONNECT:{
            size = ces_read_es_event_uipc_connect_t_points(p+offset,&(name_es_message_t->event.uipc_connect));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_UNLINK:{
            size = ces_read_es_event_unlink_t_points(p+offset,&(name_es_message_t->event.unlink));
            offset += size;
        }break;
        case ES_EVENT_TYPE_AUTH_UTIMES:{
            size = ces_read_es_event_utimes_t_points(p+offset,&(name_es_message_t->event.utimes));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_ACCESS:{
            size = ces_read_es_event_access_t_points(p+offset,&(name_es_message_t->event.access));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_AUTHENTICATION:{
            size = ces_read_es_event_authentication_t(p+offset,name_es_message_t->event.authentication);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD:{
            size = ces_read_es_event_btm_launch_item_add_t(p+offset,name_es_message_t->event.btm_launch_item_add);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE:{
            size = ces_read_es_event_btm_launch_item_remove_t(p+offset,name_es_message_t->event.btm_launch_item_remove);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CHDIR:{
            size = ces_read_es_event_chdir_t_points(p+offset,&(name_es_message_t->event.chdir));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CHROOT:{
            size = ces_read_es_event_chroot_t_points(p+offset,&(name_es_message_t->event.chroot));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CLONE:{
            size = ces_read_es_event_clone_t_points(p+offset,&(name_es_message_t->event.clone));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CLOSE:{
            size = ces_read_es_event_close_t_points(p+offset,&(name_es_message_t->event.close));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_COPYFILE:{
            size = ces_read_es_event_copyfile_t_points(p+offset,&(name_es_message_t->event.copyfile));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CREATE:{
            size = ces_read_es_event_create_t_points(p+offset,&(name_es_message_t->event.create));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED:{
            size = ces_read_es_event_cs_invalidated_t_points(p+offset,&(name_es_message_t->event.cs_invalidated));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR:{
            size = ces_read_es_event_deleteextattr_t_points(p+offset,&(name_es_message_t->event.deleteextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_DUP:{
            size = ces_read_es_event_dup_t_points(p+offset,&(name_es_message_t->event.dup));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA:{
            size = ces_read_es_event_exchangedata_t_points(p+offset,&(name_es_message_t->event.exchangedata));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_EXEC:{
            size = ces_read_es_event_exec_t_points(p+offset,&(name_es_message_t->event.exec));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_EXIT:{
            size = ces_read_es_event_exit_t_points(p+offset,&(name_es_message_t->event.exit));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_FCNTL:{
            size = ces_read_es_event_fcntl_t_points(p+offset,&(name_es_message_t->event.fcntl));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE:{
            size = ces_read_es_event_file_provider_materialize_t_points(p+offset,&(name_es_message_t->event.file_provider_materialize));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE:{
            size = ces_read_es_event_file_provider_update_t_points(p+offset,&(name_es_message_t->event.file_provider_update));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_FORK:{
            size = ces_read_es_event_fork_t_points(p+offset,&(name_es_message_t->event.fork));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_FSGETPATH:{
            size = ces_read_es_event_fsgetpath_t_points(p+offset,&(name_es_message_t->event.fsgetpath));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GETATTRLIST:{
            size = ces_read_es_event_getattrlist_t_points(p+offset,&(name_es_message_t->event.getattrlist));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GETEXTATTR:{
            size = ces_read_es_event_getextattr_t_points(p+offset,&(name_es_message_t->event.getextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK:{
            size = ces_read_es_event_get_task_t_points(p+offset,&(name_es_message_t->event.get_task));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT:{
            size = ces_read_es_event_get_task_inspect_t_points(p+offset,&(name_es_message_t->event.get_task_inspect));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME:{
            size = ces_read_es_event_get_task_name_t_points(p+offset,&(name_es_message_t->event.get_task_name));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_GET_TASK_READ:{
            size = ces_read_es_event_get_task_read_t_points(p+offset,&(name_es_message_t->event.get_task_read));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN:{
            size = ces_read_es_event_iokit_open_t_points(p+offset,&(name_es_message_t->event.iokit_open));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_KEXTLOAD:{
            size = ces_read_es_event_kextload_t_points(p+offset,&(name_es_message_t->event.kextload));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD:{
            size = ces_read_es_event_kextunload_t_points(p+offset,&(name_es_message_t->event.kextunload));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LINK:{
            size = ces_read_es_event_link_t_points(p+offset,&(name_es_message_t->event.link));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LISTEXTATTR:{
            size = ces_read_es_event_listextattr_t_points(p+offset,&(name_es_message_t->event.listextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN:{
            size = ces_read_es_event_login_login_t(p+offset,name_es_message_t->event.login_login);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT:{
            size = ces_read_es_event_login_logout_t(p+offset,name_es_message_t->event.login_logout);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LOOKUP:{
            size = ces_read_es_event_lookup_t_points(p+offset,&(name_es_message_t->event.lookup));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK:{
            size = ces_read_es_event_lw_session_lock_t(p+offset,name_es_message_t->event.lw_session_lock);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN:{
            size = ces_read_es_event_lw_session_login_t(p+offset,name_es_message_t->event.lw_session_login);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT:{
            size = ces_read_es_event_lw_session_logout_t(p+offset,name_es_message_t->event.lw_session_logout);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK:{
            size = ces_read_es_event_lw_session_unlock_t(p+offset,name_es_message_t->event.lw_session_unlock);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_MMAP:{
            size = ces_read_es_event_mmap_t_points(p+offset,&(name_es_message_t->event.mmap));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_MOUNT:{
            size = ces_read_es_event_mount_t_points(p+offset,&(name_es_message_t->event.mount));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_MPROTECT:{
            size = ces_read_es_event_mprotect_t_points(p+offset,&(name_es_message_t->event.mprotect));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_OPEN:{
            size = ces_read_es_event_open_t_points(p+offset,&(name_es_message_t->event.open));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN:{
            size = ces_read_es_event_openssh_login_t(p+offset,name_es_message_t->event.openssh_login);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT:{
            size = ces_read_es_event_openssh_logout_t(p+offset,name_es_message_t->event.openssh_logout);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_PROC_CHECK:{
            size = ces_read_es_event_proc_check_t_points(p+offset,&(name_es_message_t->event.proc_check));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME:{
            size = ces_read_es_event_proc_suspend_resume_t_points(p+offset,&(name_es_message_t->event.proc_suspend_resume));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_PTY_CLOSE:{
            size = ces_read_es_event_pty_close_t_points(p+offset,&(name_es_message_t->event.pty_close));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_PTY_GRANT:{
            size = ces_read_es_event_pty_grant_t_points(p+offset,&(name_es_message_t->event.pty_grant));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_READDIR:{
            size = ces_read_es_event_readdir_t_points(p+offset,&(name_es_message_t->event.readdir));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_READLINK:{
            size = ces_read_es_event_readlink_t_points(p+offset,&(name_es_message_t->event.readlink));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE:{
            size = ces_read_es_event_remote_thread_create_t_points(p+offset,&(name_es_message_t->event.remote_thread_create));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_REMOUNT:{
            size = ces_read_es_event_remount_t_points(p+offset,&(name_es_message_t->event.remount));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_RENAME:{
            size = ces_read_es_event_rename_t_points(p+offset,&(name_es_message_t->event.rename));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH:{
            size = ces_read_es_event_screensharing_attach_t(p+offset,name_es_message_t->event.screensharing_attach);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH:{
            size = ces_read_es_event_screensharing_detach_t(p+offset,name_es_message_t->event.screensharing_detach);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SEARCHFS:{
            size = ces_read_es_event_searchfs_t_points(p+offset,&(name_es_message_t->event.searchfs));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETACL:{
            size = ces_read_es_event_setacl_t_points(p+offset,&(name_es_message_t->event.setacl));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETATTRLIST:{
            size = ces_read_es_event_setattrlist_t_points(p+offset,&(name_es_message_t->event.setattrlist));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETEGID:{
            size = ces_read_es_event_setegid_t_points(p+offset,&(name_es_message_t->event.setegid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETEUID:{
            size = ces_read_es_event_seteuid_t_points(p+offset,&(name_es_message_t->event.seteuid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETEXTATTR:{
            size = ces_read_es_event_setextattr_t_points(p+offset,&(name_es_message_t->event.setextattr));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETFLAGS:{
            size = ces_read_es_event_setflags_t_points(p+offset,&(name_es_message_t->event.setflags));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETGID:{
            size = ces_read_es_event_setgid_t_points(p+offset,&(name_es_message_t->event.setgid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETMODE:{
            size = ces_read_es_event_setmode_t_points(p+offset,&(name_es_message_t->event.setmode));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETOWNER:{
            size = ces_read_es_event_setowner_t_points(p+offset,&(name_es_message_t->event.setowner));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETREGID:{
            size = ces_read_es_event_setregid_t_points(p+offset,&(name_es_message_t->event.setregid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETREUID:{
            size = ces_read_es_event_setreuid_t_points(p+offset,&(name_es_message_t->event.setreuid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETTIME:{
            size = ces_read_es_event_settime_t_points(p+offset,&(name_es_message_t->event.settime));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SETUID:{
            size = ces_read_es_event_setuid_t_points(p+offset,&(name_es_message_t->event.setuid));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_SIGNAL:{
            size = ces_read_es_event_signal_t_points(p+offset,&(name_es_message_t->event.signal));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_STAT:{
            size = ces_read_es_event_stat_t_points(p+offset,&(name_es_message_t->event.stat));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_TRACE:{
            size = ces_read_es_event_trace_t_points(p+offset,&(name_es_message_t->event.trace));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_TRUNCATE:{
            size = ces_read_es_event_truncate_t_points(p+offset,&(name_es_message_t->event.truncate));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_UIPC_BIND:{
            size = ces_read_es_event_uipc_bind_t_points(p+offset,&(name_es_message_t->event.uipc_bind));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT:{
            size = ces_read_es_event_uipc_connect_t_points(p+offset,&(name_es_message_t->event.uipc_connect));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_UNLINK:{
            size = ces_read_es_event_unlink_t_points(p+offset,&(name_es_message_t->event.unlink));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_UNMOUNT:{
            size = ces_read_es_event_unmount_t_points(p+offset,&(name_es_message_t->event.unmount));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_UTIMES:{
            size = ces_read_es_event_utimes_t_points(p+offset,&(name_es_message_t->event.utimes));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_WRITE:{
            size = ces_read_es_event_write_t_points(p+offset,&(name_es_message_t->event.write));
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED:{
            size = ces_read_es_event_xp_malware_detected_t(p+offset,name_es_message_t->event.xp_malware_detected);
            offset += size;
        }break;
        case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED:{
            size = ces_read_es_event_xp_malware_remediated_t(p+offset,name_es_message_t->event.xp_malware_remediated);
            offset += size;
        }break;
        default:
            break;
    }
    *size = offset;
    return name_es_message_t;
}

size_t ces_read_es_message_t_points(void *p,es_message_t *name_es_message_t) {
    size_t offset = 0;
    if (name_es_message_t->process) {
        size_t process_size = 0;
        name_es_message_t->process = ces_read_es_process_t(p+offset, &process_size);
        offset += process_size;
    }
    if (name_es_message_t->thread) {
        size_t thread_size = 0;
        name_es_message_t->thread = ces_read_es_thread_t(p+offset, &thread_size);
        offset += thread_size;
    }
    return offset;
}

audit_token_t* ces_read_audit_token_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    audit_token_t *name_audit_token_t = p;
    offset += sizeof(audit_token_t);
    *size = offset;
    return name_audit_token_t;
}


es_statfs_t* ces_read_es_statfs_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_statfs_t *name_es_statfs_t = p;
    offset += sizeof(es_statfs_t);
    *size = offset;
    return name_es_statfs_t;
}


es_action_type_t* ces_read_es_action_type_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_action_type_t *name_es_action_type_t = p;
    offset += sizeof(es_action_type_t);
    *size = offset;
    return name_es_action_type_t;
}


es_address_type_t* ces_read_es_address_type_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_address_type_t *name_es_address_type_t = p;
    offset += sizeof(es_address_type_t);
    *size = offset;
    return name_es_address_type_t;
}


es_authentication_type_t* ces_read_es_authentication_type_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_authentication_type_t *name_es_authentication_type_t = p;
    offset += sizeof(es_authentication_type_t);
    *size = offset;
    return name_es_authentication_type_t;
}


es_btm_item_type_t* ces_read_es_btm_item_type_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_btm_item_type_t *name_es_btm_item_type_t = p;
    offset += sizeof(es_btm_item_type_t);
    *size = offset;
    return name_es_btm_item_type_t;
}


es_btm_launch_item_t* ces_read_es_btm_launch_item_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_btm_launch_item_t *name_es_btm_launch_item_t = p;
    offset += sizeof(es_btm_launch_item_t);
    size_t size = ces_read_es_btm_launch_item_t_points(p+offset,name_es_btm_launch_item_t);
    offset += size;
    *size = offset;
    return name_es_btm_launch_item_t;
}

size_t ces_read_es_btm_launch_item_t_points(void *p,es_btm_launch_item_t *name_es_btm_launch_item_t) {
    size_t offset = 0;
    name_es_btm_launch_item_t->item_url.data = p+offset;
    offset += name_es_btm_launch_item_t->item_url.length;
    name_es_btm_launch_item_t->app_url.data = p+offset;
    offset += name_es_btm_launch_item_t->app_url.length;
    return offset;
}

es_destination_type_t* ces_read_es_destination_type_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_destination_type_t *name_es_destination_type_t = p;
    offset += sizeof(es_destination_type_t);
    *size = offset;
    return name_es_destination_type_t;
}


es_event_access_t* ces_read_es_event_access_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_access_t *name_es_event_access_t = p;
    offset += sizeof(es_event_access_t);
    size_t size = ces_read_es_event_access_t_points(p+offset,name_es_event_access_t);
    offset += size;
    *size = offset;
    return name_es_event_access_t;
}

size_t ces_read_es_event_access_t_points(void *p,es_event_access_t *name_es_event_access_t) {
    size_t offset = 0;
    if (name_es_event_access_t->target) {
        size_t target_size = 0;
        name_es_event_access_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_authentication_t* ces_read_es_event_authentication_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_authentication_t *name_es_event_authentication_t = p;
    offset += sizeof(es_event_authentication_t);
    *size = offset;
    return name_es_event_authentication_t;
}


es_event_btm_launch_item_add_t* ces_read_es_event_btm_launch_item_add_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_btm_launch_item_add_t *name_es_event_btm_launch_item_add_t = p;
    offset += sizeof(es_event_btm_launch_item_add_t);
    size_t size = ces_read_es_event_btm_launch_item_add_t_points(p+offset,name_es_event_btm_launch_item_add_t);
    offset += size;
    *size = offset;
    return name_es_event_btm_launch_item_add_t;
}

size_t ces_read_es_event_btm_launch_item_add_t_points(void *p,es_event_btm_launch_item_add_t *name_es_event_btm_launch_item_add_t) {
    size_t offset = 0;
    name_es_event_btm_launch_item_add_t->executable_path.data = p+offset;
    offset += name_es_event_btm_launch_item_add_t->executable_path.length;
    if (name_es_event_btm_launch_item_add_t->instigator) {
        size_t instigator_size = 0;
        name_es_event_btm_launch_item_add_t->instigator = ces_read_es_process_t(p+offset, &instigator_size);
        offset += instigator_size;
    }
    if (name_es_event_btm_launch_item_add_t->app) {
        size_t app_size = 0;
        name_es_event_btm_launch_item_add_t->app = ces_read_es_process_t(p+offset, &app_size);
        offset += app_size;
    }
    if (name_es_event_btm_launch_item_add_t->item) {
        size_t item_size = 0;
        name_es_event_btm_launch_item_add_t->item = ces_read_es_btm_launch_item_t(p+offset, &item_size);
        offset += item_size;
    }
    return offset;
}

es_event_btm_launch_item_remove_t* ces_read_es_event_btm_launch_item_remove_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_btm_launch_item_remove_t *name_es_event_btm_launch_item_remove_t = p;
    offset += sizeof(es_event_btm_launch_item_remove_t);
    size_t size = ces_read_es_event_btm_launch_item_remove_t_points(p+offset,name_es_event_btm_launch_item_remove_t);
    offset += size;
    *size = offset;
    return name_es_event_btm_launch_item_remove_t;
}

size_t ces_read_es_event_btm_launch_item_remove_t_points(void *p,es_event_btm_launch_item_remove_t *name_es_event_btm_launch_item_remove_t) {
    size_t offset = 0;
    if (name_es_event_btm_launch_item_remove_t->instigator) {
        size_t instigator_size = 0;
        name_es_event_btm_launch_item_remove_t->instigator = ces_read_es_process_t(p+offset, &instigator_size);
        offset += instigator_size;
    }
    if (name_es_event_btm_launch_item_remove_t->item) {
        size_t item_size = 0;
        name_es_event_btm_launch_item_remove_t->item = ces_read_es_btm_launch_item_t(p+offset, &item_size);
        offset += item_size;
    }
    if (name_es_event_btm_launch_item_remove_t->app) {
        size_t app_size = 0;
        name_es_event_btm_launch_item_remove_t->app = ces_read_es_process_t(p+offset, &app_size);
        offset += app_size;
    }
    return offset;
}

es_event_chdir_t* ces_read_es_event_chdir_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_chdir_t *name_es_event_chdir_t = p;
    offset += sizeof(es_event_chdir_t);
    size_t size = ces_read_es_event_chdir_t_points(p+offset,name_es_event_chdir_t);
    offset += size;
    *size = offset;
    return name_es_event_chdir_t;
}

size_t ces_read_es_event_chdir_t_points(void *p,es_event_chdir_t *name_es_event_chdir_t) {
    size_t offset = 0;
    if (name_es_event_chdir_t->target) {
        size_t target_size = 0;
        name_es_event_chdir_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_chroot_t* ces_read_es_event_chroot_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_chroot_t *name_es_event_chroot_t = p;
    offset += sizeof(es_event_chroot_t);
    size_t size = ces_read_es_event_chroot_t_points(p+offset,name_es_event_chroot_t);
    offset += size;
    *size = offset;
    return name_es_event_chroot_t;
}

size_t ces_read_es_event_chroot_t_points(void *p,es_event_chroot_t *name_es_event_chroot_t) {
    size_t offset = 0;
    if (name_es_event_chroot_t->target) {
        size_t target_size = 0;
        name_es_event_chroot_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_clone_t* ces_read_es_event_clone_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_clone_t *name_es_event_clone_t = p;
    offset += sizeof(es_event_clone_t);
    size_t size = ces_read_es_event_clone_t_points(p+offset,name_es_event_clone_t);
    offset += size;
    *size = offset;
    return name_es_event_clone_t;
}

size_t ces_read_es_event_clone_t_points(void *p,es_event_clone_t *name_es_event_clone_t) {
    size_t offset = 0;
    name_es_event_clone_t->target_name.data = p+offset;
    offset += name_es_event_clone_t->target_name.length;
    if (name_es_event_clone_t->target_dir) {
        size_t target_dir_size = 0;
        name_es_event_clone_t->target_dir = ces_read_es_file_t(p+offset, &target_dir_size);
        offset += target_dir_size;
    }
    if (name_es_event_clone_t->source) {
        size_t source_size = 0;
        name_es_event_clone_t->source = ces_read_es_file_t(p+offset, &source_size);
        offset += source_size;
    }
    return offset;
}

es_event_close_t* ces_read_es_event_close_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_close_t *name_es_event_close_t = p;
    offset += sizeof(es_event_close_t);
    size_t size = ces_read_es_event_close_t_points(p+offset,name_es_event_close_t);
    offset += size;
    *size = offset;
    return name_es_event_close_t;
}

size_t ces_read_es_event_close_t_points(void *p,es_event_close_t *name_es_event_close_t) {
    size_t offset = 0;
    if (name_es_event_close_t->target) {
        size_t target_size = 0;
        name_es_event_close_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_copyfile_t* ces_read_es_event_copyfile_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_copyfile_t *name_es_event_copyfile_t = p;
    offset += sizeof(es_event_copyfile_t);
    size_t size = ces_read_es_event_copyfile_t_points(p+offset,name_es_event_copyfile_t);
    offset += size;
    *size = offset;
    return name_es_event_copyfile_t;
}

size_t ces_read_es_event_copyfile_t_points(void *p,es_event_copyfile_t *name_es_event_copyfile_t) {
    size_t offset = 0;
    if (name_es_event_copyfile_t->target_file) {
        size_t target_file_size = 0;
        name_es_event_copyfile_t->target_file = ces_read_es_file_t(p+offset, &target_file_size);
        offset += target_file_size;
    }
    if (name_es_event_copyfile_t->target_dir) {
        size_t target_dir_size = 0;
        name_es_event_copyfile_t->target_dir = ces_read_es_file_t(p+offset, &target_dir_size);
        offset += target_dir_size;
    }
    name_es_event_copyfile_t->target_name.data = p+offset;
    offset += name_es_event_copyfile_t->target_name.length;
    if (name_es_event_copyfile_t->source) {
        size_t source_size = 0;
        name_es_event_copyfile_t->source = ces_read_es_file_t(p+offset, &source_size);
        offset += source_size;
    }
    return offset;
}

es_event_create_t* ces_read_es_event_create_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_create_t *name_es_event_create_t = p;
    offset += sizeof(es_event_create_t);
    *size = offset;
    return name_es_event_create_t;
}


es_event_cs_invalidated_t* ces_read_es_event_cs_invalidated_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_cs_invalidated_t *name_es_event_cs_invalidated_t = p;
    offset += sizeof(es_event_cs_invalidated_t);
    *size = offset;
    return name_es_event_cs_invalidated_t;
}


es_event_deleteextattr_t* ces_read_es_event_deleteextattr_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_deleteextattr_t *name_es_event_deleteextattr_t = p;
    offset += sizeof(es_event_deleteextattr_t);
    size_t size = ces_read_es_event_deleteextattr_t_points(p+offset,name_es_event_deleteextattr_t);
    offset += size;
    *size = offset;
    return name_es_event_deleteextattr_t;
}

size_t ces_read_es_event_deleteextattr_t_points(void *p,es_event_deleteextattr_t *name_es_event_deleteextattr_t) {
    size_t offset = 0;
    if (name_es_event_deleteextattr_t->target) {
        size_t target_size = 0;
        name_es_event_deleteextattr_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    name_es_event_deleteextattr_t->extattr.data = p+offset;
    offset += name_es_event_deleteextattr_t->extattr.length;
    return offset;
}

es_event_dup_t* ces_read_es_event_dup_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_dup_t *name_es_event_dup_t = p;
    offset += sizeof(es_event_dup_t);
    size_t size = ces_read_es_event_dup_t_points(p+offset,name_es_event_dup_t);
    offset += size;
    *size = offset;
    return name_es_event_dup_t;
}

size_t ces_read_es_event_dup_t_points(void *p,es_event_dup_t *name_es_event_dup_t) {
    size_t offset = 0;
    if (name_es_event_dup_t->target) {
        size_t target_size = 0;
        name_es_event_dup_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_exchangedata_t* ces_read_es_event_exchangedata_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_exchangedata_t *name_es_event_exchangedata_t = p;
    offset += sizeof(es_event_exchangedata_t);
    size_t size = ces_read_es_event_exchangedata_t_points(p+offset,name_es_event_exchangedata_t);
    offset += size;
    *size = offset;
    return name_es_event_exchangedata_t;
}

size_t ces_read_es_event_exchangedata_t_points(void *p,es_event_exchangedata_t *name_es_event_exchangedata_t) {
    size_t offset = 0;
    if (name_es_event_exchangedata_t->file2) {
        size_t file2_size = 0;
        name_es_event_exchangedata_t->file2 = ces_read_es_file_t(p+offset, &file2_size);
        offset += file2_size;
    }
    if (name_es_event_exchangedata_t->file1) {
        size_t file1_size = 0;
        name_es_event_exchangedata_t->file1 = ces_read_es_file_t(p+offset, &file1_size);
        offset += file1_size;
    }
    return offset;
}

es_event_exec_t* ces_read_es_event_exec_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_exec_t *name_es_event_exec_t = p;
    offset += sizeof(es_event_exec_t);
    size_t size = ces_read_es_event_exec_t_points(p+offset,name_es_event_exec_t);
    offset += size;
    *size = offset;
    return name_es_event_exec_t;
}

size_t ces_read_es_event_exec_t_points(void *p,es_event_exec_t *name_es_event_exec_t) {
    size_t offset = 0;
    if (name_es_event_exec_t->cwd) {
        size_t cwd_size = 0;
        name_es_event_exec_t->cwd = ces_read_es_file_t(p+offset, &cwd_size);
        offset += cwd_size;
    }
    if (name_es_event_exec_t->target) {
        size_t target_size = 0;
        name_es_event_exec_t->target = ces_read_es_process_t(p+offset, &target_size);
        offset += target_size;
    }
    name_es_event_exec_t->reserved0.data = p+offset;
    offset += name_es_event_exec_t->reserved0.size;
    if (name_es_event_exec_t->script) {
        size_t script_size = 0;
        name_es_event_exec_t->script = ces_read_es_file_t(p+offset, &script_size);
        offset += script_size;
    }
    return offset;
}

es_event_exit_t* ces_read_es_event_exit_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_exit_t *name_es_event_exit_t = p;
    offset += sizeof(es_event_exit_t);
    *size = offset;
    return name_es_event_exit_t;
}


es_event_fcntl_t* ces_read_es_event_fcntl_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_fcntl_t *name_es_event_fcntl_t = p;
    offset += sizeof(es_event_fcntl_t);
    size_t size = ces_read_es_event_fcntl_t_points(p+offset,name_es_event_fcntl_t);
    offset += size;
    *size = offset;
    return name_es_event_fcntl_t;
}

size_t ces_read_es_event_fcntl_t_points(void *p,es_event_fcntl_t *name_es_event_fcntl_t) {
    size_t offset = 0;
    if (name_es_event_fcntl_t->target) {
        size_t target_size = 0;
        name_es_event_fcntl_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_file_provider_materialize_t* ces_read_es_event_file_provider_materialize_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_file_provider_materialize_t *name_es_event_file_provider_materialize_t = p;
    offset += sizeof(es_event_file_provider_materialize_t);
    size_t size = ces_read_es_event_file_provider_materialize_t_points(p+offset,name_es_event_file_provider_materialize_t);
    offset += size;
    *size = offset;
    return name_es_event_file_provider_materialize_t;
}

size_t ces_read_es_event_file_provider_materialize_t_points(void *p,es_event_file_provider_materialize_t *name_es_event_file_provider_materialize_t) {
    size_t offset = 0;
    if (name_es_event_file_provider_materialize_t->source) {
        size_t source_size = 0;
        name_es_event_file_provider_materialize_t->source = ces_read_es_file_t(p+offset, &source_size);
        offset += source_size;
    }
    if (name_es_event_file_provider_materialize_t->target) {
        size_t target_size = 0;
        name_es_event_file_provider_materialize_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    if (name_es_event_file_provider_materialize_t->instigator) {
        size_t instigator_size = 0;
        name_es_event_file_provider_materialize_t->instigator = ces_read_es_process_t(p+offset, &instigator_size);
        offset += instigator_size;
    }
    return offset;
}

es_event_file_provider_update_t* ces_read_es_event_file_provider_update_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_file_provider_update_t *name_es_event_file_provider_update_t = p;
    offset += sizeof(es_event_file_provider_update_t);
    size_t size = ces_read_es_event_file_provider_update_t_points(p+offset,name_es_event_file_provider_update_t);
    offset += size;
    *size = offset;
    return name_es_event_file_provider_update_t;
}

size_t ces_read_es_event_file_provider_update_t_points(void *p,es_event_file_provider_update_t *name_es_event_file_provider_update_t) {
    size_t offset = 0;
    if (name_es_event_file_provider_update_t->source) {
        size_t source_size = 0;
        name_es_event_file_provider_update_t->source = ces_read_es_file_t(p+offset, &source_size);
        offset += source_size;
    }
    name_es_event_file_provider_update_t->target_path.data = p+offset;
    offset += name_es_event_file_provider_update_t->target_path.length;
    return offset;
}

es_event_fork_t* ces_read_es_event_fork_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_fork_t *name_es_event_fork_t = p;
    offset += sizeof(es_event_fork_t);
    size_t size = ces_read_es_event_fork_t_points(p+offset,name_es_event_fork_t);
    offset += size;
    *size = offset;
    return name_es_event_fork_t;
}

size_t ces_read_es_event_fork_t_points(void *p,es_event_fork_t *name_es_event_fork_t) {
    size_t offset = 0;
    if (name_es_event_fork_t->child) {
        size_t child_size = 0;
        name_es_event_fork_t->child = ces_read_es_process_t(p+offset, &child_size);
        offset += child_size;
    }
    return offset;
}

es_event_fsgetpath_t* ces_read_es_event_fsgetpath_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_fsgetpath_t *name_es_event_fsgetpath_t = p;
    offset += sizeof(es_event_fsgetpath_t);
    size_t size = ces_read_es_event_fsgetpath_t_points(p+offset,name_es_event_fsgetpath_t);
    offset += size;
    *size = offset;
    return name_es_event_fsgetpath_t;
}

size_t ces_read_es_event_fsgetpath_t_points(void *p,es_event_fsgetpath_t *name_es_event_fsgetpath_t) {
    size_t offset = 0;
    if (name_es_event_fsgetpath_t->target) {
        size_t target_size = 0;
        name_es_event_fsgetpath_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_get_task_inspect_t* ces_read_es_event_get_task_inspect_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_get_task_inspect_t *name_es_event_get_task_inspect_t = p;
    offset += sizeof(es_event_get_task_inspect_t);
    size_t size = ces_read_es_event_get_task_inspect_t_points(p+offset,name_es_event_get_task_inspect_t);
    offset += size;
    *size = offset;
    return name_es_event_get_task_inspect_t;
}

size_t ces_read_es_event_get_task_inspect_t_points(void *p,es_event_get_task_inspect_t *name_es_event_get_task_inspect_t) {
    size_t offset = 0;
    if (name_es_event_get_task_inspect_t->target) {
        size_t target_size = 0;
        name_es_event_get_task_inspect_t->target = ces_read_es_process_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_get_task_name_t* ces_read_es_event_get_task_name_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_get_task_name_t *name_es_event_get_task_name_t = p;
    offset += sizeof(es_event_get_task_name_t);
    size_t size = ces_read_es_event_get_task_name_t_points(p+offset,name_es_event_get_task_name_t);
    offset += size;
    *size = offset;
    return name_es_event_get_task_name_t;
}

size_t ces_read_es_event_get_task_name_t_points(void *p,es_event_get_task_name_t *name_es_event_get_task_name_t) {
    size_t offset = 0;
    if (name_es_event_get_task_name_t->target) {
        size_t target_size = 0;
        name_es_event_get_task_name_t->target = ces_read_es_process_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_get_task_read_t* ces_read_es_event_get_task_read_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_get_task_read_t *name_es_event_get_task_read_t = p;
    offset += sizeof(es_event_get_task_read_t);
    size_t size = ces_read_es_event_get_task_read_t_points(p+offset,name_es_event_get_task_read_t);
    offset += size;
    *size = offset;
    return name_es_event_get_task_read_t;
}

size_t ces_read_es_event_get_task_read_t_points(void *p,es_event_get_task_read_t *name_es_event_get_task_read_t) {
    size_t offset = 0;
    if (name_es_event_get_task_read_t->target) {
        size_t target_size = 0;
        name_es_event_get_task_read_t->target = ces_read_es_process_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_get_task_t* ces_read_es_event_get_task_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_get_task_t *name_es_event_get_task_t = p;
    offset += sizeof(es_event_get_task_t);
    size_t size = ces_read_es_event_get_task_t_points(p+offset,name_es_event_get_task_t);
    offset += size;
    *size = offset;
    return name_es_event_get_task_t;
}

size_t ces_read_es_event_get_task_t_points(void *p,es_event_get_task_t *name_es_event_get_task_t) {
    size_t offset = 0;
    if (name_es_event_get_task_t->target) {
        size_t target_size = 0;
        name_es_event_get_task_t->target = ces_read_es_process_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_getattrlist_t* ces_read_es_event_getattrlist_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_getattrlist_t *name_es_event_getattrlist_t = p;
    offset += sizeof(es_event_getattrlist_t);
    size_t size = ces_read_es_event_getattrlist_t_points(p+offset,name_es_event_getattrlist_t);
    offset += size;
    *size = offset;
    return name_es_event_getattrlist_t;
}

size_t ces_read_es_event_getattrlist_t_points(void *p,es_event_getattrlist_t *name_es_event_getattrlist_t) {
    size_t offset = 0;
    if (name_es_event_getattrlist_t->target) {
        size_t target_size = 0;
        name_es_event_getattrlist_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_getextattr_t* ces_read_es_event_getextattr_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_getextattr_t *name_es_event_getextattr_t = p;
    offset += sizeof(es_event_getextattr_t);
    size_t size = ces_read_es_event_getextattr_t_points(p+offset,name_es_event_getextattr_t);
    offset += size;
    *size = offset;
    return name_es_event_getextattr_t;
}

size_t ces_read_es_event_getextattr_t_points(void *p,es_event_getextattr_t *name_es_event_getextattr_t) {
    size_t offset = 0;
    if (name_es_event_getextattr_t->target) {
        size_t target_size = 0;
        name_es_event_getextattr_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    name_es_event_getextattr_t->extattr.data = p+offset;
    offset += name_es_event_getextattr_t->extattr.length;
    return offset;
}

es_event_iokit_open_t* ces_read_es_event_iokit_open_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_iokit_open_t *name_es_event_iokit_open_t = p;
    offset += sizeof(es_event_iokit_open_t);
    size_t size = ces_read_es_event_iokit_open_t_points(p+offset,name_es_event_iokit_open_t);
    offset += size;
    *size = offset;
    return name_es_event_iokit_open_t;
}

size_t ces_read_es_event_iokit_open_t_points(void *p,es_event_iokit_open_t *name_es_event_iokit_open_t) {
    size_t offset = 0;
    name_es_event_iokit_open_t->user_client_class.data = p+offset;
    offset += name_es_event_iokit_open_t->user_client_class.length;
    return offset;
}

es_event_kextload_t* ces_read_es_event_kextload_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_kextload_t *name_es_event_kextload_t = p;
    offset += sizeof(es_event_kextload_t);
    size_t size = ces_read_es_event_kextload_t_points(p+offset,name_es_event_kextload_t);
    offset += size;
    *size = offset;
    return name_es_event_kextload_t;
}

size_t ces_read_es_event_kextload_t_points(void *p,es_event_kextload_t *name_es_event_kextload_t) {
    size_t offset = 0;
    name_es_event_kextload_t->identifier.data = p+offset;
    offset += name_es_event_kextload_t->identifier.length;
    return offset;
}

es_event_kextunload_t* ces_read_es_event_kextunload_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_kextunload_t *name_es_event_kextunload_t = p;
    offset += sizeof(es_event_kextunload_t);
    size_t size = ces_read_es_event_kextunload_t_points(p+offset,name_es_event_kextunload_t);
    offset += size;
    *size = offset;
    return name_es_event_kextunload_t;
}

size_t ces_read_es_event_kextunload_t_points(void *p,es_event_kextunload_t *name_es_event_kextunload_t) {
    size_t offset = 0;
    name_es_event_kextunload_t->identifier.data = p+offset;
    offset += name_es_event_kextunload_t->identifier.length;
    return offset;
}

es_event_link_t* ces_read_es_event_link_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_link_t *name_es_event_link_t = p;
    offset += sizeof(es_event_link_t);
    size_t size = ces_read_es_event_link_t_points(p+offset,name_es_event_link_t);
    offset += size;
    *size = offset;
    return name_es_event_link_t;
}

size_t ces_read_es_event_link_t_points(void *p,es_event_link_t *name_es_event_link_t) {
    size_t offset = 0;
    if (name_es_event_link_t->source) {
        size_t source_size = 0;
        name_es_event_link_t->source = ces_read_es_file_t(p+offset, &source_size);
        offset += source_size;
    }
    name_es_event_link_t->target_filename.data = p+offset;
    offset += name_es_event_link_t->target_filename.length;
    if (name_es_event_link_t->target_dir) {
        size_t target_dir_size = 0;
        name_es_event_link_t->target_dir = ces_read_es_file_t(p+offset, &target_dir_size);
        offset += target_dir_size;
    }
    return offset;
}

es_event_listextattr_t* ces_read_es_event_listextattr_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_listextattr_t *name_es_event_listextattr_t = p;
    offset += sizeof(es_event_listextattr_t);
    size_t size = ces_read_es_event_listextattr_t_points(p+offset,name_es_event_listextattr_t);
    offset += size;
    *size = offset;
    return name_es_event_listextattr_t;
}

size_t ces_read_es_event_listextattr_t_points(void *p,es_event_listextattr_t *name_es_event_listextattr_t) {
    size_t offset = 0;
    if (name_es_event_listextattr_t->target) {
        size_t target_size = 0;
        name_es_event_listextattr_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_login_login_t* ces_read_es_event_login_login_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_login_login_t *name_es_event_login_login_t = p;
    offset += sizeof(es_event_login_login_t);
    size_t size = ces_read_es_event_login_login_t_points(p+offset,name_es_event_login_login_t);
    offset += size;
    *size = offset;
    return name_es_event_login_login_t;
}

size_t ces_read_es_event_login_login_t_points(void *p,es_event_login_login_t *name_es_event_login_login_t) {
    size_t offset = 0;
    name_es_event_login_login_t->failure_message.data = p+offset;
    offset += name_es_event_login_login_t->failure_message.length;
    name_es_event_login_login_t->username.data = p+offset;
    offset += name_es_event_login_login_t->username.length;
    return offset;
}

es_event_login_logout_t* ces_read_es_event_login_logout_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_login_logout_t *name_es_event_login_logout_t = p;
    offset += sizeof(es_event_login_logout_t);
    size_t size = ces_read_es_event_login_logout_t_points(p+offset,name_es_event_login_logout_t);
    offset += size;
    *size = offset;
    return name_es_event_login_logout_t;
}

size_t ces_read_es_event_login_logout_t_points(void *p,es_event_login_logout_t *name_es_event_login_logout_t) {
    size_t offset = 0;
    name_es_event_login_logout_t->username.data = p+offset;
    offset += name_es_event_login_logout_t->username.length;
    return offset;
}

es_event_lookup_t* ces_read_es_event_lookup_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_lookup_t *name_es_event_lookup_t = p;
    offset += sizeof(es_event_lookup_t);
    size_t size = ces_read_es_event_lookup_t_points(p+offset,name_es_event_lookup_t);
    offset += size;
    *size = offset;
    return name_es_event_lookup_t;
}

size_t ces_read_es_event_lookup_t_points(void *p,es_event_lookup_t *name_es_event_lookup_t) {
    size_t offset = 0;
    if (name_es_event_lookup_t->source_dir) {
        size_t source_dir_size = 0;
        name_es_event_lookup_t->source_dir = ces_read_es_file_t(p+offset, &source_dir_size);
        offset += source_dir_size;
    }
    name_es_event_lookup_t->relative_target.data = p+offset;
    offset += name_es_event_lookup_t->relative_target.length;
    return offset;
}

es_event_lw_session_lock_t* ces_read_es_event_lw_session_lock_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_lw_session_lock_t *name_es_event_lw_session_lock_t = p;
    offset += sizeof(es_event_lw_session_lock_t);
    size_t size = ces_read_es_event_lw_session_lock_t_points(p+offset,name_es_event_lw_session_lock_t);
    offset += size;
    *size = offset;
    return name_es_event_lw_session_lock_t;
}

size_t ces_read_es_event_lw_session_lock_t_points(void *p,es_event_lw_session_lock_t *name_es_event_lw_session_lock_t) {
    size_t offset = 0;
    name_es_event_lw_session_lock_t->username.data = p+offset;
    offset += name_es_event_lw_session_lock_t->username.length;
    return offset;
}

es_event_lw_session_login_t* ces_read_es_event_lw_session_login_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_lw_session_login_t *name_es_event_lw_session_login_t = p;
    offset += sizeof(es_event_lw_session_login_t);
    size_t size = ces_read_es_event_lw_session_login_t_points(p+offset,name_es_event_lw_session_login_t);
    offset += size;
    *size = offset;
    return name_es_event_lw_session_login_t;
}

size_t ces_read_es_event_lw_session_login_t_points(void *p,es_event_lw_session_login_t *name_es_event_lw_session_login_t) {
    size_t offset = 0;
    name_es_event_lw_session_login_t->username.data = p+offset;
    offset += name_es_event_lw_session_login_t->username.length;
    return offset;
}

es_event_lw_session_logout_t* ces_read_es_event_lw_session_logout_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_lw_session_logout_t *name_es_event_lw_session_logout_t = p;
    offset += sizeof(es_event_lw_session_logout_t);
    size_t size = ces_read_es_event_lw_session_logout_t_points(p+offset,name_es_event_lw_session_logout_t);
    offset += size;
    *size = offset;
    return name_es_event_lw_session_logout_t;
}

size_t ces_read_es_event_lw_session_logout_t_points(void *p,es_event_lw_session_logout_t *name_es_event_lw_session_logout_t) {
    size_t offset = 0;
    name_es_event_lw_session_logout_t->username.data = p+offset;
    offset += name_es_event_lw_session_logout_t->username.length;
    return offset;
}

es_event_lw_session_unlock_t* ces_read_es_event_lw_session_unlock_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_lw_session_unlock_t *name_es_event_lw_session_unlock_t = p;
    offset += sizeof(es_event_lw_session_unlock_t);
    size_t size = ces_read_es_event_lw_session_unlock_t_points(p+offset,name_es_event_lw_session_unlock_t);
    offset += size;
    *size = offset;
    return name_es_event_lw_session_unlock_t;
}

size_t ces_read_es_event_lw_session_unlock_t_points(void *p,es_event_lw_session_unlock_t *name_es_event_lw_session_unlock_t) {
    size_t offset = 0;
    name_es_event_lw_session_unlock_t->username.data = p+offset;
    offset += name_es_event_lw_session_unlock_t->username.length;
    return offset;
}

es_event_mmap_t* ces_read_es_event_mmap_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_mmap_t *name_es_event_mmap_t = p;
    offset += sizeof(es_event_mmap_t);
    size_t size = ces_read_es_event_mmap_t_points(p+offset,name_es_event_mmap_t);
    offset += size;
    *size = offset;
    return name_es_event_mmap_t;
}

size_t ces_read_es_event_mmap_t_points(void *p,es_event_mmap_t *name_es_event_mmap_t) {
    size_t offset = 0;
    if (name_es_event_mmap_t->source) {
        size_t source_size = 0;
        name_es_event_mmap_t->source = ces_read_es_file_t(p+offset, &source_size);
        offset += source_size;
    }
    return offset;
}

es_event_mount_t* ces_read_es_event_mount_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_mount_t *name_es_event_mount_t = p;
    offset += sizeof(es_event_mount_t);
    size_t size = ces_read_es_event_mount_t_points(p+offset,name_es_event_mount_t);
    offset += size;
    *size = offset;
    return name_es_event_mount_t;
}

size_t ces_read_es_event_mount_t_points(void *p,es_event_mount_t *name_es_event_mount_t) {
    size_t offset = 0;
    if (name_es_event_mount_t->statfs) {
        size_t statfs_size = 0;
        name_es_event_mount_t->statfs = ces_read_es_statfs_t(p+offset, &statfs_size);
        offset += statfs_size;
    }
    return offset;
}

es_event_mprotect_t* ces_read_es_event_mprotect_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_mprotect_t *name_es_event_mprotect_t = p;
    offset += sizeof(es_event_mprotect_t);
    *size = offset;
    return name_es_event_mprotect_t;
}


es_event_open_t* ces_read_es_event_open_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_open_t *name_es_event_open_t = p;
    offset += sizeof(es_event_open_t);
    size_t size = ces_read_es_event_open_t_points(p+offset,name_es_event_open_t);
    offset += size;
    *size = offset;
    return name_es_event_open_t;
}

size_t ces_read_es_event_open_t_points(void *p,es_event_open_t *name_es_event_open_t) {
    size_t offset = 0;
    if (name_es_event_open_t->file) {
        size_t file_size = 0;
        name_es_event_open_t->file = ces_read_es_file_t(p+offset, &file_size);
        offset += file_size;
    }
    return offset;
}

es_event_openssh_login_t* ces_read_es_event_openssh_login_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_openssh_login_t *name_es_event_openssh_login_t = p;
    offset += sizeof(es_event_openssh_login_t);
    size_t size = ces_read_es_event_openssh_login_t_points(p+offset,name_es_event_openssh_login_t);
    offset += size;
    *size = offset;
    return name_es_event_openssh_login_t;
}

size_t ces_read_es_event_openssh_login_t_points(void *p,es_event_openssh_login_t *name_es_event_openssh_login_t) {
    size_t offset = 0;
    name_es_event_openssh_login_t->source_address.data = p+offset;
    offset += name_es_event_openssh_login_t->source_address.length;
    name_es_event_openssh_login_t->username.data = p+offset;
    offset += name_es_event_openssh_login_t->username.length;
    return offset;
}

es_event_openssh_logout_t* ces_read_es_event_openssh_logout_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_openssh_logout_t *name_es_event_openssh_logout_t = p;
    offset += sizeof(es_event_openssh_logout_t);
    size_t size = ces_read_es_event_openssh_logout_t_points(p+offset,name_es_event_openssh_logout_t);
    offset += size;
    *size = offset;
    return name_es_event_openssh_logout_t;
}

size_t ces_read_es_event_openssh_logout_t_points(void *p,es_event_openssh_logout_t *name_es_event_openssh_logout_t) {
    size_t offset = 0;
    name_es_event_openssh_logout_t->username.data = p+offset;
    offset += name_es_event_openssh_logout_t->username.length;
    name_es_event_openssh_logout_t->source_address.data = p+offset;
    offset += name_es_event_openssh_logout_t->source_address.length;
    return offset;
}

es_event_proc_check_t* ces_read_es_event_proc_check_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_proc_check_t *name_es_event_proc_check_t = p;
    offset += sizeof(es_event_proc_check_t);
    size_t size = ces_read_es_event_proc_check_t_points(p+offset,name_es_event_proc_check_t);
    offset += size;
    *size = offset;
    return name_es_event_proc_check_t;
}

size_t ces_read_es_event_proc_check_t_points(void *p,es_event_proc_check_t *name_es_event_proc_check_t) {
    size_t offset = 0;
    if (name_es_event_proc_check_t->target) {
        size_t target_size = 0;
        name_es_event_proc_check_t->target = ces_read_es_process_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_proc_suspend_resume_t* ces_read_es_event_proc_suspend_resume_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_proc_suspend_resume_t *name_es_event_proc_suspend_resume_t = p;
    offset += sizeof(es_event_proc_suspend_resume_t);
    size_t size = ces_read_es_event_proc_suspend_resume_t_points(p+offset,name_es_event_proc_suspend_resume_t);
    offset += size;
    *size = offset;
    return name_es_event_proc_suspend_resume_t;
}

size_t ces_read_es_event_proc_suspend_resume_t_points(void *p,es_event_proc_suspend_resume_t *name_es_event_proc_suspend_resume_t) {
    size_t offset = 0;
    if (name_es_event_proc_suspend_resume_t->target) {
        size_t target_size = 0;
        name_es_event_proc_suspend_resume_t->target = ces_read_es_process_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_pty_close_t* ces_read_es_event_pty_close_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_pty_close_t *name_es_event_pty_close_t = p;
    offset += sizeof(es_event_pty_close_t);
    *size = offset;
    return name_es_event_pty_close_t;
}


es_event_pty_grant_t* ces_read_es_event_pty_grant_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_pty_grant_t *name_es_event_pty_grant_t = p;
    offset += sizeof(es_event_pty_grant_t);
    *size = offset;
    return name_es_event_pty_grant_t;
}


es_event_readdir_t* ces_read_es_event_readdir_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_readdir_t *name_es_event_readdir_t = p;
    offset += sizeof(es_event_readdir_t);
    size_t size = ces_read_es_event_readdir_t_points(p+offset,name_es_event_readdir_t);
    offset += size;
    *size = offset;
    return name_es_event_readdir_t;
}

size_t ces_read_es_event_readdir_t_points(void *p,es_event_readdir_t *name_es_event_readdir_t) {
    size_t offset = 0;
    if (name_es_event_readdir_t->target) {
        size_t target_size = 0;
        name_es_event_readdir_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_readlink_t* ces_read_es_event_readlink_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_readlink_t *name_es_event_readlink_t = p;
    offset += sizeof(es_event_readlink_t);
    size_t size = ces_read_es_event_readlink_t_points(p+offset,name_es_event_readlink_t);
    offset += size;
    *size = offset;
    return name_es_event_readlink_t;
}

size_t ces_read_es_event_readlink_t_points(void *p,es_event_readlink_t *name_es_event_readlink_t) {
    size_t offset = 0;
    if (name_es_event_readlink_t->source) {
        size_t source_size = 0;
        name_es_event_readlink_t->source = ces_read_es_file_t(p+offset, &source_size);
        offset += source_size;
    }
    return offset;
}

es_event_remote_thread_create_t* ces_read_es_event_remote_thread_create_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_remote_thread_create_t *name_es_event_remote_thread_create_t = p;
    offset += sizeof(es_event_remote_thread_create_t);
    size_t size = ces_read_es_event_remote_thread_create_t_points(p+offset,name_es_event_remote_thread_create_t);
    offset += size;
    *size = offset;
    return name_es_event_remote_thread_create_t;
}

size_t ces_read_es_event_remote_thread_create_t_points(void *p,es_event_remote_thread_create_t *name_es_event_remote_thread_create_t) {
    size_t offset = 0;
    if (name_es_event_remote_thread_create_t->target) {
        size_t target_size = 0;
        name_es_event_remote_thread_create_t->target = ces_read_es_process_t(p+offset, &target_size);
        offset += target_size;
    }
    if (name_es_event_remote_thread_create_t->thread_state) {
        size_t thread_state_size = 0;
        name_es_event_remote_thread_create_t->thread_state = ces_read_es_thread_state_t(p+offset, &thread_state_size);
        offset += thread_state_size;
    }
    return offset;
}

es_event_remount_t* ces_read_es_event_remount_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_remount_t *name_es_event_remount_t = p;
    offset += sizeof(es_event_remount_t);
    size_t size = ces_read_es_event_remount_t_points(p+offset,name_es_event_remount_t);
    offset += size;
    *size = offset;
    return name_es_event_remount_t;
}

size_t ces_read_es_event_remount_t_points(void *p,es_event_remount_t *name_es_event_remount_t) {
    size_t offset = 0;
    if (name_es_event_remount_t->statfs) {
        size_t statfs_size = 0;
        name_es_event_remount_t->statfs = ces_read_es_statfs_t(p+offset, &statfs_size);
        offset += statfs_size;
    }
    return offset;
}

es_event_rename_t* ces_read_es_event_rename_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_rename_t *name_es_event_rename_t = p;
    offset += sizeof(es_event_rename_t);
    size_t size = ces_read_es_event_rename_t_points(p+offset,name_es_event_rename_t);
    offset += size;
    *size = offset;
    return name_es_event_rename_t;
}

size_t ces_read_es_event_rename_t_points(void *p,es_event_rename_t *name_es_event_rename_t) {
    size_t offset = 0;
    if (name_es_event_rename_t->source) {
        size_t source_size = 0;
        name_es_event_rename_t->source = ces_read_es_file_t(p+offset, &source_size);
        offset += source_size;
    }
    return offset;
}

es_event_screensharing_attach_t* ces_read_es_event_screensharing_attach_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_screensharing_attach_t *name_es_event_screensharing_attach_t = p;
    offset += sizeof(es_event_screensharing_attach_t);
    size_t size = ces_read_es_event_screensharing_attach_t_points(p+offset,name_es_event_screensharing_attach_t);
    offset += size;
    *size = offset;
    return name_es_event_screensharing_attach_t;
}

size_t ces_read_es_event_screensharing_attach_t_points(void *p,es_event_screensharing_attach_t *name_es_event_screensharing_attach_t) {
    size_t offset = 0;
    name_es_event_screensharing_attach_t->authentication_username.data = p+offset;
    offset += name_es_event_screensharing_attach_t->authentication_username.length;
    name_es_event_screensharing_attach_t->session_username.data = p+offset;
    offset += name_es_event_screensharing_attach_t->session_username.length;
    name_es_event_screensharing_attach_t->viewer_appleid.data = p+offset;
    offset += name_es_event_screensharing_attach_t->viewer_appleid.length;
    name_es_event_screensharing_attach_t->authentication_type.data = p+offset;
    offset += name_es_event_screensharing_attach_t->authentication_type.length;
    name_es_event_screensharing_attach_t->source_address.data = p+offset;
    offset += name_es_event_screensharing_attach_t->source_address.length;
    return offset;
}

es_event_screensharing_detach_t* ces_read_es_event_screensharing_detach_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_screensharing_detach_t *name_es_event_screensharing_detach_t = p;
    offset += sizeof(es_event_screensharing_detach_t);
    size_t size = ces_read_es_event_screensharing_detach_t_points(p+offset,name_es_event_screensharing_detach_t);
    offset += size;
    *size = offset;
    return name_es_event_screensharing_detach_t;
}

size_t ces_read_es_event_screensharing_detach_t_points(void *p,es_event_screensharing_detach_t *name_es_event_screensharing_detach_t) {
    size_t offset = 0;
    name_es_event_screensharing_detach_t->source_address.data = p+offset;
    offset += name_es_event_screensharing_detach_t->source_address.length;
    name_es_event_screensharing_detach_t->viewer_appleid.data = p+offset;
    offset += name_es_event_screensharing_detach_t->viewer_appleid.length;
    return offset;
}

es_event_searchfs_t* ces_read_es_event_searchfs_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_searchfs_t *name_es_event_searchfs_t = p;
    offset += sizeof(es_event_searchfs_t);
    size_t size = ces_read_es_event_searchfs_t_points(p+offset,name_es_event_searchfs_t);
    offset += size;
    *size = offset;
    return name_es_event_searchfs_t;
}

size_t ces_read_es_event_searchfs_t_points(void *p,es_event_searchfs_t *name_es_event_searchfs_t) {
    size_t offset = 0;
    if (name_es_event_searchfs_t->target) {
        size_t target_size = 0;
        name_es_event_searchfs_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_setacl_t* ces_read_es_event_setacl_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setacl_t *name_es_event_setacl_t = p;
    offset += sizeof(es_event_setacl_t);
    size_t size = ces_read_es_event_setacl_t_points(p+offset,name_es_event_setacl_t);
    offset += size;
    *size = offset;
    return name_es_event_setacl_t;
}

size_t ces_read_es_event_setacl_t_points(void *p,es_event_setacl_t *name_es_event_setacl_t) {
    size_t offset = 0;
    if (name_es_event_setacl_t->target) {
        size_t target_size = 0;
        name_es_event_setacl_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_setattrlist_t* ces_read_es_event_setattrlist_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setattrlist_t *name_es_event_setattrlist_t = p;
    offset += sizeof(es_event_setattrlist_t);
    size_t size = ces_read_es_event_setattrlist_t_points(p+offset,name_es_event_setattrlist_t);
    offset += size;
    *size = offset;
    return name_es_event_setattrlist_t;
}

size_t ces_read_es_event_setattrlist_t_points(void *p,es_event_setattrlist_t *name_es_event_setattrlist_t) {
    size_t offset = 0;
    if (name_es_event_setattrlist_t->target) {
        size_t target_size = 0;
        name_es_event_setattrlist_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_setegid_t* ces_read_es_event_setegid_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setegid_t *name_es_event_setegid_t = p;
    offset += sizeof(es_event_setegid_t);
    *size = offset;
    return name_es_event_setegid_t;
}


es_event_seteuid_t* ces_read_es_event_seteuid_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_seteuid_t *name_es_event_seteuid_t = p;
    offset += sizeof(es_event_seteuid_t);
    *size = offset;
    return name_es_event_seteuid_t;
}


es_event_setextattr_t* ces_read_es_event_setextattr_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setextattr_t *name_es_event_setextattr_t = p;
    offset += sizeof(es_event_setextattr_t);
    size_t size = ces_read_es_event_setextattr_t_points(p+offset,name_es_event_setextattr_t);
    offset += size;
    *size = offset;
    return name_es_event_setextattr_t;
}

size_t ces_read_es_event_setextattr_t_points(void *p,es_event_setextattr_t *name_es_event_setextattr_t) {
    size_t offset = 0;
    if (name_es_event_setextattr_t->target) {
        size_t target_size = 0;
        name_es_event_setextattr_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    name_es_event_setextattr_t->extattr.data = p+offset;
    offset += name_es_event_setextattr_t->extattr.length;
    return offset;
}

es_event_setflags_t* ces_read_es_event_setflags_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setflags_t *name_es_event_setflags_t = p;
    offset += sizeof(es_event_setflags_t);
    size_t size = ces_read_es_event_setflags_t_points(p+offset,name_es_event_setflags_t);
    offset += size;
    *size = offset;
    return name_es_event_setflags_t;
}

size_t ces_read_es_event_setflags_t_points(void *p,es_event_setflags_t *name_es_event_setflags_t) {
    size_t offset = 0;
    if (name_es_event_setflags_t->target) {
        size_t target_size = 0;
        name_es_event_setflags_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_setgid_t* ces_read_es_event_setgid_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setgid_t *name_es_event_setgid_t = p;
    offset += sizeof(es_event_setgid_t);
    *size = offset;
    return name_es_event_setgid_t;
}


es_event_setmode_t* ces_read_es_event_setmode_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setmode_t *name_es_event_setmode_t = p;
    offset += sizeof(es_event_setmode_t);
    size_t size = ces_read_es_event_setmode_t_points(p+offset,name_es_event_setmode_t);
    offset += size;
    *size = offset;
    return name_es_event_setmode_t;
}

size_t ces_read_es_event_setmode_t_points(void *p,es_event_setmode_t *name_es_event_setmode_t) {
    size_t offset = 0;
    if (name_es_event_setmode_t->target) {
        size_t target_size = 0;
        name_es_event_setmode_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_setowner_t* ces_read_es_event_setowner_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setowner_t *name_es_event_setowner_t = p;
    offset += sizeof(es_event_setowner_t);
    size_t size = ces_read_es_event_setowner_t_points(p+offset,name_es_event_setowner_t);
    offset += size;
    *size = offset;
    return name_es_event_setowner_t;
}

size_t ces_read_es_event_setowner_t_points(void *p,es_event_setowner_t *name_es_event_setowner_t) {
    size_t offset = 0;
    if (name_es_event_setowner_t->target) {
        size_t target_size = 0;
        name_es_event_setowner_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_setregid_t* ces_read_es_event_setregid_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setregid_t *name_es_event_setregid_t = p;
    offset += sizeof(es_event_setregid_t);
    *size = offset;
    return name_es_event_setregid_t;
}


es_event_setreuid_t* ces_read_es_event_setreuid_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setreuid_t *name_es_event_setreuid_t = p;
    offset += sizeof(es_event_setreuid_t);
    *size = offset;
    return name_es_event_setreuid_t;
}


es_event_settime_t* ces_read_es_event_settime_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_settime_t *name_es_event_settime_t = p;
    offset += sizeof(es_event_settime_t);
    *size = offset;
    return name_es_event_settime_t;
}


es_event_setuid_t* ces_read_es_event_setuid_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_setuid_t *name_es_event_setuid_t = p;
    offset += sizeof(es_event_setuid_t);
    *size = offset;
    return name_es_event_setuid_t;
}


es_event_signal_t* ces_read_es_event_signal_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_signal_t *name_es_event_signal_t = p;
    offset += sizeof(es_event_signal_t);
    size_t size = ces_read_es_event_signal_t_points(p+offset,name_es_event_signal_t);
    offset += size;
    *size = offset;
    return name_es_event_signal_t;
}

size_t ces_read_es_event_signal_t_points(void *p,es_event_signal_t *name_es_event_signal_t) {
    size_t offset = 0;
    if (name_es_event_signal_t->target) {
        size_t target_size = 0;
        name_es_event_signal_t->target = ces_read_es_process_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_stat_t* ces_read_es_event_stat_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_stat_t *name_es_event_stat_t = p;
    offset += sizeof(es_event_stat_t);
    size_t size = ces_read_es_event_stat_t_points(p+offset,name_es_event_stat_t);
    offset += size;
    *size = offset;
    return name_es_event_stat_t;
}

size_t ces_read_es_event_stat_t_points(void *p,es_event_stat_t *name_es_event_stat_t) {
    size_t offset = 0;
    if (name_es_event_stat_t->target) {
        size_t target_size = 0;
        name_es_event_stat_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_trace_t* ces_read_es_event_trace_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_trace_t *name_es_event_trace_t = p;
    offset += sizeof(es_event_trace_t);
    size_t size = ces_read_es_event_trace_t_points(p+offset,name_es_event_trace_t);
    offset += size;
    *size = offset;
    return name_es_event_trace_t;
}

size_t ces_read_es_event_trace_t_points(void *p,es_event_trace_t *name_es_event_trace_t) {
    size_t offset = 0;
    if (name_es_event_trace_t->target) {
        size_t target_size = 0;
        name_es_event_trace_t->target = ces_read_es_process_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_truncate_t* ces_read_es_event_truncate_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_truncate_t *name_es_event_truncate_t = p;
    offset += sizeof(es_event_truncate_t);
    size_t size = ces_read_es_event_truncate_t_points(p+offset,name_es_event_truncate_t);
    offset += size;
    *size = offset;
    return name_es_event_truncate_t;
}

size_t ces_read_es_event_truncate_t_points(void *p,es_event_truncate_t *name_es_event_truncate_t) {
    size_t offset = 0;
    if (name_es_event_truncate_t->target) {
        size_t target_size = 0;
        name_es_event_truncate_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_type_t* ces_read_es_event_type_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_type_t *name_es_event_type_t = p;
    offset += sizeof(es_event_type_t);
    *size = offset;
    return name_es_event_type_t;
}


es_event_uipc_bind_t* ces_read_es_event_uipc_bind_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_uipc_bind_t *name_es_event_uipc_bind_t = p;
    offset += sizeof(es_event_uipc_bind_t);
    size_t size = ces_read_es_event_uipc_bind_t_points(p+offset,name_es_event_uipc_bind_t);
    offset += size;
    *size = offset;
    return name_es_event_uipc_bind_t;
}

size_t ces_read_es_event_uipc_bind_t_points(void *p,es_event_uipc_bind_t *name_es_event_uipc_bind_t) {
    size_t offset = 0;
    name_es_event_uipc_bind_t->filename.data = p+offset;
    offset += name_es_event_uipc_bind_t->filename.length;
    if (name_es_event_uipc_bind_t->dir) {
        size_t dir_size = 0;
        name_es_event_uipc_bind_t->dir = ces_read_es_file_t(p+offset, &dir_size);
        offset += dir_size;
    }
    return offset;
}

es_event_uipc_connect_t* ces_read_es_event_uipc_connect_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_uipc_connect_t *name_es_event_uipc_connect_t = p;
    offset += sizeof(es_event_uipc_connect_t);
    size_t size = ces_read_es_event_uipc_connect_t_points(p+offset,name_es_event_uipc_connect_t);
    offset += size;
    *size = offset;
    return name_es_event_uipc_connect_t;
}

size_t ces_read_es_event_uipc_connect_t_points(void *p,es_event_uipc_connect_t *name_es_event_uipc_connect_t) {
    size_t offset = 0;
    if (name_es_event_uipc_connect_t->file) {
        size_t file_size = 0;
        name_es_event_uipc_connect_t->file = ces_read_es_file_t(p+offset, &file_size);
        offset += file_size;
    }
    return offset;
}

es_event_unlink_t* ces_read_es_event_unlink_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_unlink_t *name_es_event_unlink_t = p;
    offset += sizeof(es_event_unlink_t);
    size_t size = ces_read_es_event_unlink_t_points(p+offset,name_es_event_unlink_t);
    offset += size;
    *size = offset;
    return name_es_event_unlink_t;
}

size_t ces_read_es_event_unlink_t_points(void *p,es_event_unlink_t *name_es_event_unlink_t) {
    size_t offset = 0;
    if (name_es_event_unlink_t->parent_dir) {
        size_t parent_dir_size = 0;
        name_es_event_unlink_t->parent_dir = ces_read_es_file_t(p+offset, &parent_dir_size);
        offset += parent_dir_size;
    }
    if (name_es_event_unlink_t->target) {
        size_t target_size = 0;
        name_es_event_unlink_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_unmount_t* ces_read_es_event_unmount_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_unmount_t *name_es_event_unmount_t = p;
    offset += sizeof(es_event_unmount_t);
    size_t size = ces_read_es_event_unmount_t_points(p+offset,name_es_event_unmount_t);
    offset += size;
    *size = offset;
    return name_es_event_unmount_t;
}

size_t ces_read_es_event_unmount_t_points(void *p,es_event_unmount_t *name_es_event_unmount_t) {
    size_t offset = 0;
    if (name_es_event_unmount_t->statfs) {
        size_t statfs_size = 0;
        name_es_event_unmount_t->statfs = ces_read_es_statfs_t(p+offset, &statfs_size);
        offset += statfs_size;
    }
    return offset;
}

es_event_utimes_t* ces_read_es_event_utimes_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_utimes_t *name_es_event_utimes_t = p;
    offset += sizeof(es_event_utimes_t);
    size_t size = ces_read_es_event_utimes_t_points(p+offset,name_es_event_utimes_t);
    offset += size;
    *size = offset;
    return name_es_event_utimes_t;
}

size_t ces_read_es_event_utimes_t_points(void *p,es_event_utimes_t *name_es_event_utimes_t) {
    size_t offset = 0;
    if (name_es_event_utimes_t->target) {
        size_t target_size = 0;
        name_es_event_utimes_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_write_t* ces_read_es_event_write_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_write_t *name_es_event_write_t = p;
    offset += sizeof(es_event_write_t);
    size_t size = ces_read_es_event_write_t_points(p+offset,name_es_event_write_t);
    offset += size;
    *size = offset;
    return name_es_event_write_t;
}

size_t ces_read_es_event_write_t_points(void *p,es_event_write_t *name_es_event_write_t) {
    size_t offset = 0;
    if (name_es_event_write_t->target) {
        size_t target_size = 0;
        name_es_event_write_t->target = ces_read_es_file_t(p+offset, &target_size);
        offset += target_size;
    }
    return offset;
}

es_event_xp_malware_detected_t* ces_read_es_event_xp_malware_detected_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_xp_malware_detected_t *name_es_event_xp_malware_detected_t = p;
    offset += sizeof(es_event_xp_malware_detected_t);
    size_t size = ces_read_es_event_xp_malware_detected_t_points(p+offset,name_es_event_xp_malware_detected_t);
    offset += size;
    *size = offset;
    return name_es_event_xp_malware_detected_t;
}

size_t ces_read_es_event_xp_malware_detected_t_points(void *p,es_event_xp_malware_detected_t *name_es_event_xp_malware_detected_t) {
    size_t offset = 0;
    name_es_event_xp_malware_detected_t->malware_identifier.data = p+offset;
    offset += name_es_event_xp_malware_detected_t->malware_identifier.length;
    name_es_event_xp_malware_detected_t->detected_path.data = p+offset;
    offset += name_es_event_xp_malware_detected_t->detected_path.length;
    name_es_event_xp_malware_detected_t->incident_identifier.data = p+offset;
    offset += name_es_event_xp_malware_detected_t->incident_identifier.length;
    name_es_event_xp_malware_detected_t->signature_version.data = p+offset;
    offset += name_es_event_xp_malware_detected_t->signature_version.length;
    return offset;
}

es_event_xp_malware_remediated_t* ces_read_es_event_xp_malware_remediated_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_event_xp_malware_remediated_t *name_es_event_xp_malware_remediated_t = p;
    offset += sizeof(es_event_xp_malware_remediated_t);
    size_t size = ces_read_es_event_xp_malware_remediated_t_points(p+offset,name_es_event_xp_malware_remediated_t);
    offset += size;
    *size = offset;
    return name_es_event_xp_malware_remediated_t;
}

size_t ces_read_es_event_xp_malware_remediated_t_points(void *p,es_event_xp_malware_remediated_t *name_es_event_xp_malware_remediated_t) {
    size_t offset = 0;
    name_es_event_xp_malware_remediated_t->action_type.data = p+offset;
    offset += name_es_event_xp_malware_remediated_t->action_type.length;
    name_es_event_xp_malware_remediated_t->malware_identifier.data = p+offset;
    offset += name_es_event_xp_malware_remediated_t->malware_identifier.length;
    name_es_event_xp_malware_remediated_t->remediated_path.data = p+offset;
    offset += name_es_event_xp_malware_remediated_t->remediated_path.length;
    name_es_event_xp_malware_remediated_t->result_description.data = p+offset;
    offset += name_es_event_xp_malware_remediated_t->result_description.length;
    name_es_event_xp_malware_remediated_t->incident_identifier.data = p+offset;
    offset += name_es_event_xp_malware_remediated_t->incident_identifier.length;
    if (name_es_event_xp_malware_remediated_t->remediated_process_audit_token) {
        size_t remediated_process_audit_token_size = 0;
        name_es_event_xp_malware_remediated_t->remediated_process_audit_token = ces_read_audit_token_t(p+offset, &remediated_process_audit_token_size);
        offset += remediated_process_audit_token_size;
    }
    name_es_event_xp_malware_remediated_t->signature_version.data = p+offset;
    offset += name_es_event_xp_malware_remediated_t->signature_version.length;
    return offset;
}

es_file_t* ces_read_es_file_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_file_t *name_es_file_t = p;
    offset += sizeof(es_file_t);
    size_t size = ces_read_es_file_t_points(p+offset,name_es_file_t);
    offset += size;
    *size = offset;
    return name_es_file_t;
}

size_t ces_read_es_file_t_points(void *p,es_file_t *name_es_file_t) {
    size_t offset = 0;
    name_es_file_t->path.data = p+offset;
    offset += name_es_file_t->path.length;
    return offset;
}

es_get_task_type_t* ces_read_es_get_task_type_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_get_task_type_t *name_es_get_task_type_t = p;
    offset += sizeof(es_get_task_type_t);
    *size = offset;
    return name_es_get_task_type_t;
}


es_message_t* ces_read_es_message_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_message_t *name_es_message_t = p;
    offset += sizeof(es_message_t);
    size_t size = ces_read_es_message_t_points(p+offset,name_es_message_t);
    offset += size;
    *size = offset;
    return name_es_message_t;
}

size_t ces_read_es_message_t_points(void *p,es_message_t *name_es_message_t) {
    size_t offset = 0;
    if (name_es_message_t->thread) {
        size_t thread_size = 0;
        name_es_message_t->thread = ces_read_es_thread_t(p+offset, &thread_size);
        offset += thread_size;
    }
    if (name_es_message_t->process) {
        size_t process_size = 0;
        name_es_message_t->process = ces_read_es_process_t(p+offset, &process_size);
        offset += process_size;
    }
    return offset;
}

es_openssh_login_result_type_t* ces_read_es_openssh_login_result_type_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_openssh_login_result_type_t *name_es_openssh_login_result_type_t = p;
    offset += sizeof(es_openssh_login_result_type_t);
    *size = offset;
    return name_es_openssh_login_result_type_t;
}


es_proc_check_type_t* ces_read_es_proc_check_type_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_proc_check_type_t *name_es_proc_check_type_t = p;
    offset += sizeof(es_proc_check_type_t);
    *size = offset;
    return name_es_proc_check_type_t;
}


es_proc_suspend_resume_type_t* ces_read_es_proc_suspend_resume_type_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_proc_suspend_resume_type_t *name_es_proc_suspend_resume_type_t = p;
    offset += sizeof(es_proc_suspend_resume_type_t);
    *size = offset;
    return name_es_proc_suspend_resume_type_t;
}


es_process_t* ces_read_es_process_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_process_t *name_es_process_t = p;
    offset += sizeof(es_process_t);
    size_t size = ces_read_es_process_t_points(p+offset,name_es_process_t);
    offset += size;
    *size = offset;
    return name_es_process_t;
}

size_t ces_read_es_process_t_points(void *p,es_process_t *name_es_process_t) {
    size_t offset = 0;
    name_es_process_t->team_id.data = p+offset;
    offset += name_es_process_t->team_id.length;
    if (name_es_process_t->executable) {
        size_t executable_size = 0;
        name_es_process_t->executable = ces_read_es_file_t(p+offset, &executable_size);
        offset += executable_size;
    }
    if (name_es_process_t->tty) {
        size_t tty_size = 0;
        name_es_process_t->tty = ces_read_es_file_t(p+offset, &tty_size);
        offset += tty_size;
    }
    name_es_process_t->signing_id.data = p+offset;
    offset += name_es_process_t->signing_id.length;
    return offset;
}

es_set_or_clear_t* ces_read_es_set_or_clear_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_set_or_clear_t *name_es_set_or_clear_t = p;
    offset += sizeof(es_set_or_clear_t);
    *size = offset;
    return name_es_set_or_clear_t;
}


es_string_token_t* ces_read_es_string_token_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_string_token_t *name_es_string_token_t = p;
    offset += sizeof(es_string_token_t);
    size_t size = ces_read_es_string_token_t_points(p+offset,name_es_string_token_t);
    offset += size;
    *size = offset;
    return name_es_string_token_t;
}

size_t ces_read_es_string_token_t_points(void *p,es_string_token_t *name_es_string_token_t) {
    size_t offset = 0;
    name_es_string_token_t->data = p+offset;
    offset += name_es_string_token_t->length;
    return offset;
}

es_thread_state_t* ces_read_es_thread_state_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_thread_state_t *name_es_thread_state_t = p;
    offset += sizeof(es_thread_state_t);
    size_t size = ces_read_es_thread_state_t_points(p+offset,name_es_thread_state_t);
    offset += size;
    *size = offset;
    return name_es_thread_state_t;
}

size_t ces_read_es_thread_state_t_points(void *p,es_thread_state_t *name_es_thread_state_t) {
    size_t offset = 0;
    name_es_thread_state_t->state.data = p+offset;
    offset += name_es_thread_state_t->state.size;
    return offset;
}

es_thread_t* ces_read_es_thread_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_thread_t *name_es_thread_t = p;
    offset += sizeof(es_thread_t);
    *size = offset;
    return name_es_thread_t;
}


es_token_t* ces_read_es_token_t(void* p, size_t* size) {
    if (!p) {
        return NULL;
    }
    size_t offset = 0;
    es_token_t *name_es_token_t = p;
    offset += sizeof(es_token_t);
    size_t size = ces_read_es_token_t_points(p+offset,name_es_token_t);
    offset += size;
    *size = offset;
    return name_es_token_t;
}

size_t ces_read_es_token_t_points(void *p,es_token_t *name_es_token_t) {
    size_t offset = 0;
    name_es_token_t->data = p+offset;
    offset += name_es_token_t->size;
    return offset;
}

