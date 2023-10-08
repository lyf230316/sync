//
//  EStruct.h
//  json
//
//  Created by msi on 2023/9/9.
//

#ifndef EStruct_h
#define EStruct_h
#include <EndpointSecurity/EndpointSecurity.h>

typedef struct CES_mach_msg_type_descriptor {
	natural_t pad1;
	mach_msg_size_t pad2;
	unsigned int pad3;
	mach_msg_descriptor_type_t type;
}CES_mach_msg_type_descriptor;

typedef struct CES_mach_msg_port_descriptor {
	mach_port_t name;
	mach_msg_size_t pad1;
	unsigned int pad2;
	mach_msg_type_name_t disposition;
	mach_msg_descriptor_type_t type;
}CES_mach_msg_port_descriptor;

typedef struct CES_mach_msg_ool_descriptor32 {
	uint32_t address;
	mach_msg_size_t size;
	boolean_t deallocate;
	mach_msg_copy_options_t copy;
	unsigned int pad1;
	mach_msg_descriptor_type_t type;
}CES_mach_msg_ool_descriptor32;

typedef struct CES_mach_msg_ool_descriptor64 {
	uint64_t address;
	boolean_t deallocate;
	mach_msg_copy_options_t copy;
	unsigned int pad1;
	mach_msg_descriptor_type_t type;
	mach_msg_size_t size;
}CES_mach_msg_ool_descriptor64;

typedef struct CES_mach_msg_ool_descriptor {
	boolean_t deallocate;
	mach_msg_copy_options_t copy;
	unsigned int pad1;
	mach_msg_descriptor_type_t type;
	mach_msg_size_t size;
}CES_mach_msg_ool_descriptor;

typedef struct CES_mach_msg_ool_ports_descriptor32 {
	uint32_t address;
	mach_msg_size_t count;
	boolean_t deallocate;
	mach_msg_copy_options_t copy;
	mach_msg_type_name_t disposition;
	mach_msg_descriptor_type_t type;
}CES_mach_msg_ool_ports_descriptor32;

typedef struct CES_mach_msg_ool_ports_descriptor64 {
	uint64_t address;
	boolean_t deallocate;
	mach_msg_copy_options_t copy;
	mach_msg_type_name_t disposition;
	mach_msg_descriptor_type_t type;
	mach_msg_size_t count;
}CES_mach_msg_ool_ports_descriptor64;

typedef struct CES_mach_msg_ool_ports_descriptor {
	boolean_t deallocate;
	mach_msg_copy_options_t copy;
	mach_msg_type_name_t disposition;
	mach_msg_descriptor_type_t type;
	mach_msg_size_t count;
}CES_mach_msg_ool_ports_descriptor;

typedef struct CES_mach_msg_guarded_port_descriptor32 {
	uint32_t context;
	mach_port_name_t name;
	mach_msg_guard_flags_t flags;
	mach_msg_type_name_t disposition;
	mach_msg_descriptor_type_t type;
}CES_mach_msg_guarded_port_descriptor32;

typedef struct CES_mach_msg_guarded_port_descriptor64 {
	uint64_t context;
	mach_msg_guard_flags_t flags;
	mach_msg_type_name_t disposition;
	mach_msg_descriptor_type_t type;
	mach_port_name_t name;
}CES_mach_msg_guarded_port_descriptor64;

typedef struct CES_mach_msg_guarded_port_descriptor {
	mach_port_context_t context;
	mach_msg_guard_flags_t flags;
	mach_msg_type_name_t disposition;
	mach_msg_descriptor_type_t type;
	mach_port_name_t name;
}CES_mach_msg_guarded_port_descriptor;

typedef struct CES_mach_msg_body {
	mach_msg_size_t msgh_descriptor_count;
}CES_mach_msg_body;

typedef struct CES_mach_msg_header {
	mach_msg_bits_t msgh_bits;
	mach_msg_size_t msgh_size;
	mach_port_t msgh_remote_port;
	mach_port_t msgh_local_port;
	mach_port_name_t msgh_voucher_port;
	mach_msg_id_t msgh_id;
}CES_mach_msg_header;

typedef struct CES_mach_msg_base {
	CES_mach_msg_header header;
	CES_mach_msg_body body;
}CES_mach_msg_base;

typedef struct CES_mach_msg_trailer {
	mach_msg_trailer_type_t msgh_trailer_type;
	mach_msg_trailer_size_t msgh_trailer_size;
}CES_mach_msg_trailer;

typedef struct CES_mach_msg_seqno_trailer {
	mach_msg_trailer_type_t msgh_trailer_type;
	mach_msg_trailer_size_t msgh_trailer_size;
	mach_port_seqno_t msgh_seqno;
}CES_mach_msg_seqno_trailer;

typedef struct CES_security_token {
	unsigned int[2] val;
}CES_security_token;

typedef struct CES_mach_msg_security_trailer {
	mach_msg_trailer_type_t msgh_trailer_type;
	mach_msg_trailer_size_t msgh_trailer_size;
	mach_port_seqno_t msgh_seqno;
	CES_security_token msgh_sender;
}CES_mach_msg_security_trailer;

typedef struct CES_audit_token {
	unsigned int[8] val;
}CES_audit_token;

typedef struct CES_mach_msg_audit_trailer {
	mach_msg_trailer_type_t msgh_trailer_type;
	mach_msg_trailer_size_t msgh_trailer_size;
	mach_port_seqno_t msgh_seqno;
	CES_security_token msgh_sender;
	CES_audit_token msgh_audit;
}CES_mach_msg_audit_trailer;

typedef struct CES_mach_msg_context_trailer {
	mach_msg_trailer_type_t msgh_trailer_type;
	mach_msg_trailer_size_t msgh_trailer_size;
	mach_port_seqno_t msgh_seqno;
	CES_security_token msgh_sender;
	CES_audit_token msgh_audit;
	mach_port_context_t msgh_context;
}CES_mach_msg_context_trailer;

typedef struct CES_msg_labels {
	mach_port_name_t sender;
}CES_msg_labels;

typedef struct CES_mach_msg_mac_trailer {
	mach_msg_trailer_type_t msgh_trailer_type;
	mach_msg_trailer_size_t msgh_trailer_size;
	mach_port_seqno_t msgh_seqno;
	CES_security_token msgh_sender;
	CES_audit_token msgh_audit;
	mach_port_context_t msgh_context;
	mach_msg_filter_id msgh_ad;
	CES_msg_labels msgh_labels;
}CES_mach_msg_mac_trailer;

typedef struct CES_mach_msg_empty_send {
	CES_mach_msg_header header;
}CES_mach_msg_empty_send;

typedef struct CES_mach_msg_empty_rcv {
	CES_mach_msg_header header;
	CES_mach_msg_trailer trailer;
}CES_mach_msg_empty_rcv;

typedef struct CES_event_id {
}CES_event_id;

typedef struct CES_token {
	size_t size;
	uint8_t* data;
}CES_token;

typedef struct CES_string_token {
	size_t length;
	char* data;
}CES_string_token;

typedef struct CES_muted_path {
	es_mute_path_type_t type;
	size_t event_count;
	es_event_type_t* events;
	CES_string_token path;
}CES_muted_path;

typedef struct CES_muted_paths {
	size_t count;
	es_muted_path_t* paths;
}CES_muted_paths;

typedef struct CES_muted_process {
	CES_audit_token audit_token;
	size_t event_count;
	es_event_type_t* events;
}CES_muted_process;

typedef struct CES_muted_processes {
	size_t count;
	es_muted_process_t* processes;
}CES_muted_processes;

typedef struct CES_ntsid {
	u_int8_t sid_kind;
	u_int8_t sid_authcount;
	u_int8_t[6] sid_authority;
	u_int32_t[16] sid_authorities;
}CES_ntsid;

typedef struct CES_file {
	CES_string_token path;
	bool path_truncated;
	struct stat stat;
}CES_file;

typedef struct CES_thread {
	uint64_t thread_id;
}CES_thread;

typedef struct CES_process {
	CES_audit_token audit_token;
	pid_t ppid;
	pid_t original_ppid;
	pid_t group_id;
	pid_t session_id;
	uint32_t codesigning_flags;
	bool is_platform_binary;
	bool is_es_client;
	uint8_t[20] cdhash;
	CES_string_token signing_id;
	CES_string_token team_id;
	CES_file executable;
	CES_file tty;
	struct timeval start_time;
	CES_audit_token responsible_audit_token;
	CES_audit_token parent_audit_token;
}CES_process;

typedef struct CES_thread_state {
	int flavor;
	CES_token state;
}CES_thread_state;

typedef struct CES_fd {
	int32_t fd;
	uint32_t fdtype;
}CES_fd;

typedef struct CES_btm_launch_item {
	es_btm_item_type_t item_type;
	bool legacy;
	bool managed;
	uid_t uid;
	CES_string_token item_url;
	CES_string_token app_url;
}CES_btm_launch_item;

typedef struct CES_event_exec {
	CES_process target;
}CES_event_exec;

typedef struct CES_event_open {
	int32_t fflag;
	CES_file file;
}CES_event_open;

typedef struct CES_event_kextload {
	CES_string_token identifier;
}CES_event_kextload;

typedef struct CES_event_kextunload {
	CES_string_token identifier;
}CES_event_kextunload;

typedef struct CES_event_unlink {
	CES_file target;
	CES_file parent_dir;
}CES_event_unlink;

typedef struct CES_event_mmap {
	int32_t protection;
	int32_t max_protection;
	int32_t flags;
	uint64_t file_pos;
	CES_file source;
}CES_event_mmap;

typedef struct CES_event_link {
	CES_file source;
	CES_file target_dir;
	CES_string_token target_filename;
}CES_event_link;

typedef struct CES_event_mount {
	struct statfs statfs;
}CES_event_mount;

typedef struct CES_event_unmount {
	struct statfs statfs;
}CES_event_unmount;

typedef struct CES_event_remount {
	struct statfs statfs;
}CES_event_remount;

typedef struct CES_event_fork {
	CES_process child;
}CES_event_fork;

typedef struct CES_event_mprotect {
	int32_t protection;
	user_addr_t address;
	user_size_t size;
}CES_event_mprotect;

typedef struct CES_event_signal {
	int sig;
	CES_process target;
}CES_event_signal;

typedef struct CES_event_rename {
	CES_file source;
	es_destination_type_t destination_type;
	void *destination;
}CES_event_rename;

typedef struct CES_event_setextattr {
	CES_file target;
	CES_string_token extattr;
}CES_event_setextattr;

typedef struct CES_event_getextattr {
	CES_file target;
	CES_string_token extattr;
}CES_event_getextattr;

typedef struct CES_event_deleteextattr {
	CES_file target;
	CES_string_token extattr;
}CES_event_deleteextattr;

typedef struct CES_event_setmode {
	mode_t mode;
	CES_file target;
}CES_event_setmode;

typedef struct CES_event_setflags {
	uint32_t flags;
	CES_file target;
}CES_event_setflags;

typedef struct CES_event_setowner {
	uid_t uid;
	gid_t gid;
	CES_file target;
}CES_event_setowner;

typedef struct CES_event_close {
	bool modified;
	CES_file target;
}CES_event_close;

typedef struct CES_event_create {
	es_destination_type_t destination_type;
	CES_file existing_file;
	CES_file dir;
	CES_string_token filename;
	mode_t mode;
}CES_event_create;

typedef struct CES_event_exit {
	int stat;
}CES_event_exit;

typedef struct CES_event_exchangedata {
	CES_file file1;
	CES_file file2;
}CES_event_exchangedata;

typedef struct CES_event_write {
	CES_file target;
}CES_event_write;

typedef struct CES_event_truncate {
	CES_file target;
}CES_event_truncate;

typedef struct CES_event_chdir {
	CES_file target;
}CES_event_chdir;

typedef struct CES_event_stat {
	CES_file target;
}CES_event_stat;

typedef struct CES_event_chroot {
	CES_file target;
}CES_event_chroot;

typedef struct CES_event_listextattr {
	CES_file target;
}CES_event_listextattr;

typedef struct CES_event_iokit_open {
	uint32_t user_client_type;
	CES_string_token user_client_class;
}CES_event_iokit_open;

typedef struct CES_event_get_task {
	CES_process target;
	es_get_task_type_t type;
}CES_event_get_task;

typedef struct CES_event_get_task_read {
	CES_process target;
	es_get_task_type_t type;
}CES_event_get_task_read;

typedef struct CES_event_get_task_inspect {
	CES_process target;
	es_get_task_type_t type;
}CES_event_get_task_inspect;

typedef struct CES_event_get_task_name {
	CES_process target;
	es_get_task_type_t type;
}CES_event_get_task_name;

typedef struct CES_event_getattrlist {
	struct attrlist attrlist;
	CES_file target;
}CES_event_getattrlist;

typedef struct CES_event_setattrlist {
	struct attrlist attrlist;
	CES_file target;
}CES_event_setattrlist;

typedef struct CES_event_file_provider_update {
	CES_file source;
	CES_string_token target_path;
}CES_event_file_provider_update;

typedef struct CES_event_file_provider_materialize {
	CES_process instigator;
	CES_file source;
	CES_file target;
}CES_event_file_provider_materialize;

typedef struct CES_event_readlink {
	CES_file source;
}CES_event_readlink;

typedef struct CES_event_lookup {
	CES_file source_dir;
	CES_string_token relative_target;
}CES_event_lookup;

typedef struct CES_event_access {
	int32_t mode;
	CES_file target;
}CES_event_access;

typedef struct CES_event_utimes {
	CES_file target;
	struct timespec atime;
	struct timespec mtime;
}CES_event_utimes;

typedef struct CES_event_clone {
	CES_file source;
	CES_file target_dir;
	CES_string_token target_name;
}CES_event_clone;

typedef struct CES_event_copyfile {
	CES_file source;
	CES_file target_file;
	CES_file target_dir;
	CES_string_token target_name;
	mode_t mode;
	int32_t flags;
}CES_event_copyfile;

typedef struct CES_event_fcntl {
	CES_file target;
	int32_t cmd;
}CES_event_fcntl;

typedef struct CES_event_readdir {
	CES_file target;
}CES_event_readdir;

typedef struct CES_event_fsgetpath {
	CES_file target;
}CES_event_fsgetpath;

typedef struct CES_event_settime {
}CES_event_settime;

typedef struct CES_event_dup {
	CES_file target;
}CES_event_dup;

typedef struct CES_event_uipc_bind {
	CES_file dir;
	CES_string_token filename;
	mode_t mode;
}CES_event_uipc_bind;

typedef struct CES_event_uipc_connect {
	CES_file file;
	int domain;
	int type;
	int protocol;
}CES_event_uipc_connect;

typedef struct CES_event_setacl {
	CES_file target;
	es_set_or_clear_t set_or_clear;
	acl_t _Nonnull set;
}CES_event_setacl;

typedef struct CES_event_pty_grant {
	dev_t dev;
}CES_event_pty_grant;

typedef struct CES_event_pty_close {
	dev_t dev;
}CES_event_pty_close;

typedef struct CES_event_proc_check {
	CES_process target;
	es_proc_check_type_t type;
	int flavor;
}CES_event_proc_check;

typedef struct CES_event_searchfs {
	struct attrlist attrlist;
	CES_file target;
}CES_event_searchfs;

typedef struct CES_event_proc_suspend_resume {
	CES_process target;
	es_proc_suspend_resume_type_t type;
}CES_event_proc_suspend_resume;

typedef struct CES_event_cs_invalidated {
}CES_event_cs_invalidated;

typedef struct CES_event_trace {
	CES_process target;
}CES_event_trace;

typedef struct CES_event_remote_thread_create {
	CES_process target;
	CES_thread_state thread_state;
}CES_event_remote_thread_create;

typedef struct CES_event_setuid {
	uid_t uid;
}CES_event_setuid;

typedef struct CES_event_setgid {
	uid_t gid;
}CES_event_setgid;

typedef struct CES_event_seteuid {
	uid_t euid;
}CES_event_seteuid;

typedef struct CES_event_setegid {
	uid_t egid;
}CES_event_setegid;

typedef struct CES_event_setreuid {
	uid_t ruid;
	uid_t euid;
}CES_event_setreuid;

typedef struct CES_event_setregid {
	uid_t rgid;
	uid_t egid;
}CES_event_setregid;

typedef struct CES_event_authentication_od {
	CES_process instigator;
	CES_string_token record_type;
	CES_string_token record_name;
	CES_string_token node_name;
	CES_string_token db_path;
}CES_event_authentication_od;

typedef struct CES_event_authentication_touchid {
	CES_process instigator;
	es_touchid_mode_t touchid_mode;
	bool has_uid;
	uid_t uid;
}CES_event_authentication_touchid;

typedef struct CES_event_authentication_token {
	CES_process instigator;
	CES_string_token pubkey_hash;
	CES_string_token token_id;
	CES_string_token kerberos_principal;
}CES_event_authentication_token;

typedef struct CES_event_authentication_auto_unlock {
	CES_string_token username;
	es_auto_unlock_type_t type;
}CES_event_authentication_auto_unlock;

typedef struct CES_event_authentication {
	bool success;
	es_authentication_type_t type;
}CES_event_authentication;

typedef struct CES_event_xp_malware_detected {
	CES_string_token signature_version;
	CES_string_token malware_identifier;
	CES_string_token incident_identifier;
	CES_string_token detected_path;
}CES_event_xp_malware_detected;

typedef struct CES_event_xp_malware_remediated {
	CES_string_token signature_version;
	CES_string_token malware_identifier;
	CES_string_token incident_identifier;
	CES_string_token action_type;
	bool success;
	CES_string_token result_description;
	CES_string_token remediated_path;
	CES_audit_token remediated_process_audit_token;
}CES_event_xp_malware_remediated;

typedef struct CES_event_lw_session_login {
	CES_string_token username;
	es_graphical_session_id_t graphical_session_id;
}CES_event_lw_session_login;

typedef struct CES_event_lw_session_logout {
	CES_string_token username;
	es_graphical_session_id_t graphical_session_id;
}CES_event_lw_session_logout;

typedef struct CES_event_lw_session_lock {
	CES_string_token username;
	es_graphical_session_id_t graphical_session_id;
}CES_event_lw_session_lock;

typedef struct CES_event_lw_session_unlock {
	CES_string_token username;
	es_graphical_session_id_t graphical_session_id;
}CES_event_lw_session_unlock;

typedef struct CES_event_screensharing_attach {
	bool success;
	es_address_type_t source_address_type;
	CES_string_token source_address;
	CES_string_token viewer_appleid;
	CES_string_token authentication_type;
	CES_string_token authentication_username;
	CES_string_token session_username;
	bool existing_session;
	es_graphical_session_id_t graphical_session_id;
}CES_event_screensharing_attach;

typedef struct CES_event_screensharing_detach {
	es_address_type_t source_address_type;
	CES_string_token source_address;
	CES_string_token viewer_appleid;
	es_graphical_session_id_t graphical_session_id;
}CES_event_screensharing_detach;

typedef struct CES_event_openssh_login {
	bool success;
	es_openssh_login_result_type_t result_type;
	es_address_type_t source_address_type;
	CES_string_token source_address;
	CES_string_token username;
	bool has_uid;
	uid_t uid;
}CES_event_openssh_login;

typedef struct CES_event_openssh_logout {
	es_address_type_t source_address_type;
	CES_string_token source_address;
	CES_string_token username;
	uid_t uid;
}CES_event_openssh_logout;

typedef struct CES_event_login_login {
	bool success;
	CES_string_token failure_message;
	CES_string_token username;
	bool has_uid;
	uid_t uid;
}CES_event_login_login;

typedef struct CES_event_login_logout {
	CES_string_token username;
	uid_t uid;
}CES_event_login_logout;

typedef struct CES_event_btm_launch_item_add {
	CES_process instigator;
	CES_process app;
	CES_btm_launch_item item;
	CES_string_token executable_path;
}CES_event_btm_launch_item_add;

typedef struct CES_event_btm_launch_item_remove {
	CES_process instigator;
	CES_process app;
	CES_btm_launch_item item;
}CES_event_btm_launch_item_remove;

typedef struct CES_result {
	es_result_type_t result_type;
	void *result;
}CES_result;

typedef struct CES_message {
	uint32_t version;
	struct timespec time;
	uint64_t mach_time;
	uint64_t deadline;
	CES_process process;
	uint64_t seq_num;
	es_action_type_t action_type;
	void *action;
	es_event_type_t event_type;
	void *event;
	CES_thread thread;
	uint64_t global_seq_num;
}CES_message;


#endif /* EStruct_h */
