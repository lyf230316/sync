//
//  convert.h
//  json
//
//  Created by msi on 2023/9/9.
//

#ifndef convert_h
#define convert_h

#include <stdio.h>
#include <string.h>
#include <EndpointSecurity/EndpointSecurity.h>

//structStart()
typedef struct ces_mach_msg_type_descriptor {
	//onCustom(_:_:_:)
	natural_t pad1;
	//onCustom(_:_:_:)
	mach_msg_size_t pad2;
	//onCustom(_:_:_:)
	unsigned int pad3;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
//structEnd()
}ces_mach_msg_type_descriptor;

//structStart()
typedef struct ces_mach_msg_port_descriptor {
	//onCustom(_:_:_:)
	mach_port_t name;
	//onCustom(_:_:_:)
	mach_msg_size_t pad1;
	//onCustom(_:_:_:)
	unsigned int pad2;
	//onCustom(_:_:_:)
	mach_msg_type_name_t disposition;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
//structEnd()
}ces_mach_msg_port_descriptor;

//structStart()
typedef struct ces_mach_msg_ool_descriptor32 {
	//onCustom(_:_:_:)
	uint32_t address;
	//onCustom(_:_:_:)
	mach_msg_size_t size;
	//onCustom(_:_:_:)
	boolean_t deallocate;
	//onCustom(_:_:_:)
	mach_msg_copy_options_t copy;
	//onCustom(_:_:_:)
	unsigned int pad1;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
//structEnd()
}ces_mach_msg_ool_descriptor32;

//structStart()
typedef struct ces_mach_msg_ool_descriptor64 {
	//onCustom(_:_:_:)
	uint64_t address;
	//onCustom(_:_:_:)
	boolean_t deallocate;
	//onCustom(_:_:_:)
	mach_msg_copy_options_t copy;
	//onCustom(_:_:_:)
	unsigned int pad1;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
	//onCustom(_:_:_:)
	mach_msg_size_t size;
//structEnd()
}ces_mach_msg_ool_descriptor64;

//structStart()
typedef struct ces_mach_msg_ool_descriptor {
	//onCustomPointer(_:_:_:)
	//onCustom(_:_:_:)
	boolean_t deallocate;
	//onCustom(_:_:_:)
	mach_msg_copy_options_t copy;
	//onCustom(_:_:_:)
	unsigned int pad1;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
	//onCustom(_:_:_:)
	mach_msg_size_t size;
//structEnd()
}ces_mach_msg_ool_descriptor;

//structStart()
typedef struct ces_mach_msg_ool_ports_descriptor32 {
	//onCustom(_:_:_:)
	uint32_t address;
	//onCustom(_:_:_:)
	mach_msg_size_t count;
	//onCustom(_:_:_:)
	boolean_t deallocate;
	//onCustom(_:_:_:)
	mach_msg_copy_options_t copy;
	//onCustom(_:_:_:)
	mach_msg_type_name_t disposition;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
//structEnd()
}ces_mach_msg_ool_ports_descriptor32;

//structStart()
typedef struct ces_mach_msg_ool_ports_descriptor64 {
	//onCustom(_:_:_:)
	uint64_t address;
	//onCustom(_:_:_:)
	boolean_t deallocate;
	//onCustom(_:_:_:)
	mach_msg_copy_options_t copy;
	//onCustom(_:_:_:)
	mach_msg_type_name_t disposition;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
	//onCustom(_:_:_:)
	mach_msg_size_t count;
//structEnd()
}ces_mach_msg_ool_ports_descriptor64;

//structStart()
typedef struct ces_mach_msg_ool_ports_descriptor {
	//onCustomPointer(_:_:_:)
	//onCustom(_:_:_:)
	boolean_t deallocate;
	//onCustom(_:_:_:)
	mach_msg_copy_options_t copy;
	//onCustom(_:_:_:)
	mach_msg_type_name_t disposition;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
	//onCustom(_:_:_:)
	mach_msg_size_t count;
//structEnd()
}ces_mach_msg_ool_ports_descriptor;

//structStart()
typedef struct ces_mach_msg_guarded_port_descriptor32 {
	//onCustom(_:_:_:)
	uint32_t context;
	//onCustom(_:_:_:)
	mach_port_name_t name;
	//onCustom(_:_:_:)
	mach_msg_guard_flags_t flags;
	//onCustom(_:_:_:)
	mach_msg_type_name_t disposition;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
//structEnd()
}ces_mach_msg_guarded_port_descriptor32;

//structStart()
typedef struct ces_mach_msg_guarded_port_descriptor64 {
	//onCustom(_:_:_:)
	uint64_t context;
	//onCustom(_:_:_:)
	mach_msg_guard_flags_t flags;
	//onCustom(_:_:_:)
	mach_msg_type_name_t disposition;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
	//onCustom(_:_:_:)
	mach_port_name_t name;
//structEnd()
}ces_mach_msg_guarded_port_descriptor64;

//structStart()
typedef struct ces_mach_msg_guarded_port_descriptor {
	//onCustom(_:_:_:)
	mach_port_context_t context;
	//onCustom(_:_:_:)
	mach_msg_guard_flags_t flags;
	//onCustom(_:_:_:)
	mach_msg_type_name_t disposition;
	//onCustom(_:_:_:)
	mach_msg_descriptor_type_t type;
	//onCustom(_:_:_:)
	mach_port_name_t name;
//structEnd()
}ces_mach_msg_guarded_port_descriptor;

//structStart()
typedef struct ces_mach_msg_body {
	//onCustom(_:_:_:)
	mach_msg_size_t msgh_descriptor_count;
//structEnd()
}ces_mach_msg_body;

//structStart()
typedef struct ces_mach_msg_header {
	//onCustom(_:_:_:)
	mach_msg_bits_t msgh_bits;
	//onCustom(_:_:_:)
	mach_msg_size_t msgh_size;
	//onCustom(_:_:_:)
	mach_port_t msgh_remote_port;
	//onCustom(_:_:_:)
	mach_port_t msgh_local_port;
	//onCustom(_:_:_:)
	mach_port_name_t msgh_voucher_port;
	//onCustom(_:_:_:)
	mach_msg_id_t msgh_id;
//structEnd()
}ces_mach_msg_header;

//structStart()
typedef struct ces_mach_msg_base {
	//onCustomStruct(_:_:_:)
	ces_mach_msg_header header;
	//onCustomStruct(_:_:_:)
	ces_mach_msg_body body;
//structEnd()
}ces_mach_msg_base;

//structStart()
typedef struct ces_mach_msg_trailer {
	//onCustom(_:_:_:)
	mach_msg_trailer_type_t msgh_trailer_type;
	//onCustom(_:_:_:)
	mach_msg_trailer_size_t msgh_trailer_size;
//structEnd()
}ces_mach_msg_trailer;

//structStart()
typedef struct ces_mach_msg_seqno_trailer {
	//onCustom(_:_:_:)
	mach_msg_trailer_type_t msgh_trailer_type;
	//onCustom(_:_:_:)
	mach_msg_trailer_size_t msgh_trailer_size;
	//onCustom(_:_:_:)
	mach_port_seqno_t msgh_seqno;
//structEnd()
}ces_mach_msg_seqno_trailer;

//structStart()
typedef struct ces_security_token {
	//onCustom(_:_:_:)
	unsigned int val[2];
//structEnd()
}ces_security_token;

//structStart()
typedef struct ces_mach_msg_security_trailer {
	//onCustom(_:_:_:)
	mach_msg_trailer_type_t msgh_trailer_type;
	//onCustom(_:_:_:)
	mach_msg_trailer_size_t msgh_trailer_size;
	//onCustom(_:_:_:)
	mach_port_seqno_t msgh_seqno;
	//onCustomStruct(_:_:_:)
	ces_security_token msgh_sender;
//structEnd()
}ces_mach_msg_security_trailer;

//structStart()
typedef struct ces_audit_token {
	//onCustom(_:_:_:)
	unsigned int val[8];
//structEnd()
}ces_audit_token;

//structStart()
typedef struct ces_mach_msg_audit_trailer {
	//onCustom(_:_:_:)
	mach_msg_trailer_type_t msgh_trailer_type;
	//onCustom(_:_:_:)
	mach_msg_trailer_size_t msgh_trailer_size;
	//onCustom(_:_:_:)
	mach_port_seqno_t msgh_seqno;
	//onCustomStruct(_:_:_:)
	ces_security_token msgh_sender;
	//onCustomStruct(_:_:_:)
	ces_audit_token msgh_audit;
//structEnd()
}ces_mach_msg_audit_trailer;

//structStart()
typedef struct ces_mach_msg_context_trailer {
	//onCustom(_:_:_:)
	mach_msg_trailer_type_t msgh_trailer_type;
	//onCustom(_:_:_:)
	mach_msg_trailer_size_t msgh_trailer_size;
	//onCustom(_:_:_:)
	mach_port_seqno_t msgh_seqno;
	//onCustomStruct(_:_:_:)
	ces_security_token msgh_sender;
	//onCustomStruct(_:_:_:)
	ces_audit_token msgh_audit;
	//onCustom(_:_:_:)
	mach_port_context_t msgh_context;
//structEnd()
}ces_mach_msg_context_trailer;

//structStart()
typedef struct ces_msg_labels {
	//onCustom(_:_:_:)
	mach_port_name_t sender;
//structEnd()
}ces_msg_labels;

//structStart()
typedef struct ces_mach_msg_mac_trailer {
	//onCustom(_:_:_:)
	mach_msg_trailer_type_t msgh_trailer_type;
	//onCustom(_:_:_:)
	mach_msg_trailer_size_t msgh_trailer_size;
	//onCustom(_:_:_:)
	mach_port_seqno_t msgh_seqno;
	//onCustomStruct(_:_:_:)
	ces_security_token msgh_sender;
	//onCustomStruct(_:_:_:)
	ces_audit_token msgh_audit;
	//onCustom(_:_:_:)
	mach_port_context_t msgh_context;
	//onCustom(_:_:_:)
	mach_msg_filter_id msgh_ad;
	//onCustomStruct(_:_:_:)
	ces_msg_labels msgh_labels;
//structEnd()
}ces_mach_msg_mac_trailer;

//structStart()
typedef struct ces_mach_msg_empty_send {
	//onCustomStruct(_:_:_:)
	ces_mach_msg_header header;
//structEnd()
}ces_mach_msg_empty_send;

//structStart()
typedef struct ces_mach_msg_empty_rcv {
	//onCustomStruct(_:_:_:)
	ces_mach_msg_header header;
	//onCustomStruct(_:_:_:)
	ces_mach_msg_trailer trailer;
//structEnd()
}ces_mach_msg_empty_rcv;

//structStart()
typedef struct ces_event_id {
//structEnd()
}ces_event_id;

//structStart()
typedef struct ces_token {
	//onCustom(_:_:_:)
	size_t size;
	//ocSizeOfArray(_:_:_:count:)
	uint8_t* _Nonnull data;
//structEnd()
}ces_token;

//structStart()
typedef struct ces_string_token {
	//onCustom(_:_:_:)
	size_t length;
	//ocSizeOfArray(_:_:_:count:)
	char* _Nonnull data;
//structEnd()
}ces_string_token;

//structStart()
typedef struct ces_muted_path {
	//onCustom(_:_:_:)
	es_mute_path_type_t type;
	//onCustom(_:_:_:)
	size_t event_count;
	//ocSizeOfArray(_:_:_:count:)
	es_event_type_t* _Nonnull events;
	//onCustomStruct(_:_:_:)
	ces_string_token path;
//structEnd()
}ces_muted_path;

//structStart()
typedef struct ces_muted_paths {
	//onCustom(_:_:_:)
	size_t count;
	//ocSizeOfArray(_:_:_:count:)
	es_muted_path_t* _Nonnull paths;
//structEnd()
}ces_muted_paths;

//structStart()
typedef struct ces_muted_process {
	//onCustomStruct(_:_:_:)
	ces_audit_token audit_token;
	//onCustom(_:_:_:)
	size_t event_count;
	//ocSizeOfArray(_:_:_:count:)
	es_event_type_t* _Nonnull events;
//structEnd()
}ces_muted_process;

//structStart()
typedef struct ces_muted_processes {
	//onCustom(_:_:_:)
	size_t count;
	//ocSizeOfArray(_:_:_:count:)
	es_muted_process_t* _Nonnull processes;
//structEnd()
}ces_muted_processes;

//structStart()
typedef struct ces_ntsid {
	//onCustom(_:_:_:)
	u_int8_t sid_kind;
	//onCustom(_:_:_:)
	u_int8_t sid_authcount;
	//onCustom(_:_:_:)
	u_int8_t sid_authority[6];
	//onCustom(_:_:_:)
	u_int32_t sid_authorities[16];
//structEnd()
}ces_ntsid;

//structStart()
typedef struct ces_file {
	//onCustomStruct(_:_:_:)
	ces_string_token path;
	//onCustom(_:_:_:)
	bool path_truncated;
	//onCustom(_:_:_:)
	struct stat stat;
//structEnd()
}ces_file;

//structStart()
typedef struct ces_thread {
	//onCustom(_:_:_:)
	uint64_t thread_id;
//structEnd()
}ces_thread;

//structStart()
typedef struct ces_process {
	//onCustomStruct(_:_:_:)
	ces_audit_token audit_token;
	//onCustom(_:_:_:)
	pid_t ppid;
	//onCustom(_:_:_:)
	pid_t original_ppid;
	//onCustom(_:_:_:)
	pid_t group_id;
	//onCustom(_:_:_:)
	pid_t session_id;
	//onCustom(_:_:_:)
	uint32_t codesigning_flags;
	//onCustom(_:_:_:)
	bool is_platform_binary;
	//onCustom(_:_:_:)
	bool is_es_client;
	//onCustom(_:_:_:)
	uint8_t cdhash[20];
	//onCustomStruct(_:_:_:)
	ces_string_token signing_id;
	//onCustomStruct(_:_:_:)
	ces_string_token team_id;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file executable;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file tty;
	//onCustom(_:_:_:)
	struct timeval start_time;
	//onCustomStruct(_:_:_:)
	ces_audit_token responsible_audit_token;
	//onCustomStruct(_:_:_:)
	ces_audit_token parent_audit_token;
//structEnd()
}ces_process;

//structStart()
typedef struct ces_thread_state {
	//onCustom(_:_:_:)
	int flavor;
	//onCustomStruct(_:_:_:)
	ces_token state;
//structEnd()
}ces_thread_state;

//structStart()
typedef struct ces_fd {
	//onCustom(_:_:_:)
	int32_t fd;
	//onCustom(_:_:_:)
	uint32_t fdtype;
//structEnd()
}ces_fd;

//structStart()
typedef struct ces_btm_launch_item {
	//onCustom(_:_:_:)
	es_btm_item_type_t item_type;
	//onCustom(_:_:_:)
	bool legacy;
	//onCustom(_:_:_:)
	bool managed;
	//onCustom(_:_:_:)
	uid_t uid;
	//onCustomStruct(_:_:_:)
	ces_string_token item_url;
	//onCustomStruct(_:_:_:)
	ces_string_token app_url;
//structEnd()
}ces_btm_launch_item;

//structStart()
typedef struct ces_event_exec {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process target;
//structEnd()
}ces_event_exec;

//structStart()
typedef struct ces_event_open {
	//onCustom(_:_:_:)
	int32_t fflag;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file file;
//structEnd()
}ces_event_open;

//structStart()
typedef struct ces_event_kextload {
	//onCustomStruct(_:_:_:)
	ces_string_token identifier;
//structEnd()
}ces_event_kextload;

//structStart()
typedef struct ces_event_kextunload {
	//onCustomStruct(_:_:_:)
	ces_string_token identifier;
//structEnd()
}ces_event_kextunload;

//structStart()
typedef struct ces_event_unlink {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file parent_dir;
//structEnd()
}ces_event_unlink;

//structStart()
typedef struct ces_event_mmap {
	//onCustom(_:_:_:)
	int32_t protection;
	//onCustom(_:_:_:)
	int32_t max_protection;
	//onCustom(_:_:_:)
	int32_t flags;
	//onCustom(_:_:_:)
	uint64_t file_pos;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file source;
//structEnd()
}ces_event_mmap;

//structStart()
typedef struct ces_event_link {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file source;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target_dir;
	//onCustomStruct(_:_:_:)
	ces_string_token target_filename;
//structEnd()
}ces_event_link;

//structStart()
typedef struct ces_event_mount {
	//onCustomPointer(_:_:_:)
	struct statfs statfs;
//structEnd()
}ces_event_mount;

//structStart()
typedef struct ces_event_unmount {
	//onCustomPointer(_:_:_:)
	struct statfs statfs;
//structEnd()
}ces_event_unmount;

//structStart()
typedef struct ces_event_remount {
	//onCustomPointer(_:_:_:)
	struct statfs statfs;
//structEnd()
}ces_event_remount;

//structStart()
typedef struct ces_event_fork {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process child;
//structEnd()
}ces_event_fork;

//structStart()
typedef struct ces_event_mprotect {
	//onCustom(_:_:_:)
	int32_t protection;
	//onCustom(_:_:_:)
	user_addr_t address;
	//onCustom(_:_:_:)
	user_size_t size;
//structEnd()
}ces_event_mprotect;

//structStart()
typedef struct ces_event_signal {
	//onCustom(_:_:_:)
	int sig;
	//onCustomStructPointer(_:_:_:ext:)
	ces_process target;
//structEnd()
}ces_event_signal;

//structStart()
typedef struct ces_event_rename {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file source;
	//onCustom(_:_:_:)
	es_destination_type_t destination_type;
	void * _Nonnull destination;
//structEnd()
}ces_event_rename;

//structStart()
typedef struct ces_event_setextattr {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
	//onCustomStruct(_:_:_:)
	ces_string_token extattr;
//structEnd()
}ces_event_setextattr;

//structStart()
typedef struct ces_event_getextattr {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
	//onCustomStruct(_:_:_:)
	ces_string_token extattr;
//structEnd()
}ces_event_getextattr;

//structStart()
typedef struct ces_event_deleteextattr {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
	//onCustomStruct(_:_:_:)
	ces_string_token extattr;
//structEnd()
}ces_event_deleteextattr;

//structStart()
typedef struct ces_event_setmode {
	//onCustom(_:_:_:)
	mode_t mode;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_setmode;

//structStart()
typedef struct ces_event_setflags {
	//onCustom(_:_:_:)
	uint32_t flags;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_setflags;

//structStart()
typedef struct ces_event_setowner {
	//onCustom(_:_:_:)
	uid_t uid;
	//onCustom(_:_:_:)
	gid_t gid;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_setowner;

//structStart()
typedef struct ces_event_close {
	//onCustom(_:_:_:)
	bool modified;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_close;

//structStart()
typedef struct ces_event_create {
	//onCustom(_:_:_:)
	es_destination_type_t destination_type;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file existing_file;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file dir;
	//onCustomStruct(_:_:_:)
	ces_string_token filename;
	//onCustom(_:_:_:)
	mode_t mode;
//structEnd()
}ces_event_create;

//structStart()
typedef struct ces_event_exit {
	//onCustom(_:_:_:)
	int stat;
//structEnd()
}ces_event_exit;

//structStart()
typedef struct ces_event_exchangedata {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file file1;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file file2;
//structEnd()
}ces_event_exchangedata;

//structStart()
typedef struct ces_event_write {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_write;

//structStart()
typedef struct ces_event_truncate {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_truncate;

//structStart()
typedef struct ces_event_chdir {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_chdir;

//structStart()
typedef struct ces_event_stat {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_stat;

//structStart()
typedef struct ces_event_chroot {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_chroot;

//structStart()
typedef struct ces_event_listextattr {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_listextattr;

//structStart()
typedef struct ces_event_iokit_open {
	//onCustom(_:_:_:)
	uint32_t user_client_type;
	//onCustomStruct(_:_:_:)
	ces_string_token user_client_class;
//structEnd()
}ces_event_iokit_open;

//structStart()
typedef struct ces_event_get_task {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process target;
	//onCustom(_:_:_:)
	es_get_task_type_t type;
//structEnd()
}ces_event_get_task;

//structStart()
typedef struct ces_event_get_task_read {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process target;
	//onCustom(_:_:_:)
	es_get_task_type_t type;
//structEnd()
}ces_event_get_task_read;

//structStart()
typedef struct ces_event_get_task_inspect {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process target;
	//onCustom(_:_:_:)
	es_get_task_type_t type;
//structEnd()
}ces_event_get_task_inspect;

//structStart()
typedef struct ces_event_get_task_name {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process target;
	//onCustom(_:_:_:)
	es_get_task_type_t type;
//structEnd()
}ces_event_get_task_name;

//structStart()
typedef struct ces_event_getattrlist {
	//onCustom(_:_:_:)
	struct attrlist attrlist;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_getattrlist;

//structStart()
typedef struct ces_event_setattrlist {
	//onCustom(_:_:_:)
	struct attrlist attrlist;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_setattrlist;

//structStart()
typedef struct ces_event_file_provider_update {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file source;
	//onCustomStruct(_:_:_:)
	ces_string_token target_path;
//structEnd()
}ces_event_file_provider_update;

//structStart()
typedef struct ces_event_file_provider_materialize {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process instigator;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file source;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_file_provider_materialize;

//structStart()
typedef struct ces_event_readlink {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file source;
//structEnd()
}ces_event_readlink;

//structStart()
typedef struct ces_event_lookup {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file source_dir;
	//onCustomStruct(_:_:_:)
	ces_string_token relative_target;
//structEnd()
}ces_event_lookup;

//structStart()
typedef struct ces_event_access {
	//onCustom(_:_:_:)
	int32_t mode;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_access;

//structStart()
typedef struct ces_event_utimes {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
	//onCustom(_:_:_:)
	struct timespec atime;
	//onCustom(_:_:_:)
	struct timespec mtime;
//structEnd()
}ces_event_utimes;

//structStart()
typedef struct ces_event_clone {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file source;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target_dir;
	//onCustomStruct(_:_:_:)
	ces_string_token target_name;
//structEnd()
}ces_event_clone;

//structStart()
typedef struct ces_event_copyfile {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file source;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target_file;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target_dir;
	//onCustomStruct(_:_:_:)
	ces_string_token target_name;
	//onCustom(_:_:_:)
	mode_t mode;
	//onCustom(_:_:_:)
	int32_t flags;
//structEnd()
}ces_event_copyfile;

//structStart()
typedef struct ces_event_fcntl {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
	//onCustom(_:_:_:)
	int32_t cmd;
//structEnd()
}ces_event_fcntl;

//structStart()
typedef struct ces_event_readdir {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_readdir;

//structStart()
typedef struct ces_event_fsgetpath {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_fsgetpath;

//structStart()
typedef struct ces_event_settime {
//structEnd()
}ces_event_settime;

//structStart()
typedef struct ces_event_dup {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_dup;

//structStart()
typedef struct ces_event_uipc_bind {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file dir;
	//onCustomStruct(_:_:_:)
	ces_string_token filename;
	//onCustom(_:_:_:)
	mode_t mode;
//structEnd()
}ces_event_uipc_bind;

//structStart()
typedef struct ces_event_uipc_connect {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file file;
	//onCustom(_:_:_:)
	int domain;
	//onCustom(_:_:_:)
	int type;
	//onCustom(_:_:_:)
	int protocol;
//structEnd()
}ces_event_uipc_connect;

//structStart()
typedef struct ces_event_setacl {
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
	//onCustom(_:_:_:)
	es_set_or_clear_t set_or_clear;
	//onCustom(_:_:_:)
	acl_t _Nonnull set;
//structEnd()
}ces_event_setacl;

//structStart()
typedef struct ces_event_pty_grant {
	//onCustom(_:_:_:)
	dev_t dev;
//structEnd()
}ces_event_pty_grant;

//structStart()
typedef struct ces_event_pty_close {
	//onCustom(_:_:_:)
	dev_t dev;
//structEnd()
}ces_event_pty_close;

//structStart()
typedef struct ces_event_proc_check {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process target;
	//onCustom(_:_:_:)
	es_proc_check_type_t type;
	//onCustom(_:_:_:)
	int flavor;
//structEnd()
}ces_event_proc_check;

//structStart()
typedef struct ces_event_searchfs {
	//onCustom(_:_:_:)
	struct attrlist attrlist;
	//onCustomStructPointer(_:_:_:ext:)
	ces_file target;
//structEnd()
}ces_event_searchfs;

//structStart()
typedef struct ces_event_proc_suspend_resume {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process target;
	//onCustom(_:_:_:)
	es_proc_suspend_resume_type_t type;
//structEnd()
}ces_event_proc_suspend_resume;

//structStart()
typedef struct ces_event_cs_invalidated {
//structEnd()
}ces_event_cs_invalidated;

//structStart()
typedef struct ces_event_trace {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process target;
//structEnd()
}ces_event_trace;

//structStart()
typedef struct ces_event_remote_thread_create {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process target;
	//onCustomStructPointer(_:_:_:ext:)
	ces_thread_state thread_state;
//structEnd()
}ces_event_remote_thread_create;

//structStart()
typedef struct ces_event_setuid {
	//onCustom(_:_:_:)
	uid_t uid;
//structEnd()
}ces_event_setuid;

//structStart()
typedef struct ces_event_setgid {
	//onCustom(_:_:_:)
	uid_t gid;
//structEnd()
}ces_event_setgid;

//structStart()
typedef struct ces_event_seteuid {
	//onCustom(_:_:_:)
	uid_t euid;
//structEnd()
}ces_event_seteuid;

//structStart()
typedef struct ces_event_setegid {
	//onCustom(_:_:_:)
	uid_t egid;
//structEnd()
}ces_event_setegid;

//structStart()
typedef struct ces_event_setreuid {
	//onCustom(_:_:_:)
	uid_t ruid;
	//onCustom(_:_:_:)
	uid_t euid;
//structEnd()
}ces_event_setreuid;

//structStart()
typedef struct ces_event_setregid {
	//onCustom(_:_:_:)
	uid_t rgid;
	//onCustom(_:_:_:)
	uid_t egid;
//structEnd()
}ces_event_setregid;

//structStart()
typedef struct ces_event_authentication_od {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process instigator;
	//onCustomStruct(_:_:_:)
	ces_string_token record_type;
	//onCustomStruct(_:_:_:)
	ces_string_token record_name;
	//onCustomStruct(_:_:_:)
	ces_string_token node_name;
	//onCustomStruct(_:_:_:)
	ces_string_token db_path;
//structEnd()
}ces_event_authentication_od;

//structStart()
typedef struct ces_event_authentication_touchid {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process instigator;
	//onCustom(_:_:_:)
	es_touchid_mode_t touchid_mode;
	//onCustom(_:_:_:)
	bool has_uid;
	//onCustom(_:_:_:)
	uid_t uid;
//structEnd()
}ces_event_authentication_touchid;

//structStart()
typedef struct ces_event_authentication_token {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process instigator;
	//onCustomStruct(_:_:_:)
	ces_string_token pubkey_hash;
	//onCustomStruct(_:_:_:)
	ces_string_token token_id;
	//onCustomStruct(_:_:_:)
	ces_string_token kerberos_principal;
//structEnd()
}ces_event_authentication_token;

//structStart()
typedef struct ces_event_authentication_auto_unlock {
	//onCustomStruct(_:_:_:)
	ces_string_token username;
	//onCustom(_:_:_:)
	es_auto_unlock_type_t type;
//structEnd()
}ces_event_authentication_auto_unlock;

//structStart()
typedef struct ces_event_authentication {
	//onCustom(_:_:_:)
	bool success;
	//onCustom(_:_:_:)
	es_authentication_type_t type;
//structEnd()
}ces_event_authentication;

//structStart()
typedef struct ces_event_xp_malware_detected {
	//onCustomStruct(_:_:_:)
	ces_string_token signature_version;
	//onCustomStruct(_:_:_:)
	ces_string_token malware_identifier;
	//onCustomStruct(_:_:_:)
	ces_string_token incident_identifier;
	//onCustomStruct(_:_:_:)
	ces_string_token detected_path;
//structEnd()
}ces_event_xp_malware_detected;

//structStart()
typedef struct ces_event_xp_malware_remediated {
	//onCustomStruct(_:_:_:)
	ces_string_token signature_version;
	//onCustomStruct(_:_:_:)
	ces_string_token malware_identifier;
	//onCustomStruct(_:_:_:)
	ces_string_token incident_identifier;
	//onCustomStruct(_:_:_:)
	ces_string_token action_type;
	//onCustom(_:_:_:)
	bool success;
	//onCustomStruct(_:_:_:)
	ces_string_token result_description;
	//onCustomStruct(_:_:_:)
	ces_string_token remediated_path;
	//onCustomStructPointer(_:_:_:ext:)
	ces_audit_token remediated_process_audit_token;
//structEnd()
}ces_event_xp_malware_remediated;

//structStart()
typedef struct ces_event_lw_session_login {
	//onCustomStruct(_:_:_:)
	ces_string_token username;
	//onCustom(_:_:_:)
	es_graphical_session_id_t graphical_session_id;
//structEnd()
}ces_event_lw_session_login;

//structStart()
typedef struct ces_event_lw_session_logout {
	//onCustomStruct(_:_:_:)
	ces_string_token username;
	//onCustom(_:_:_:)
	es_graphical_session_id_t graphical_session_id;
//structEnd()
}ces_event_lw_session_logout;

//structStart()
typedef struct ces_event_lw_session_lock {
	//onCustomStruct(_:_:_:)
	ces_string_token username;
	//onCustom(_:_:_:)
	es_graphical_session_id_t graphical_session_id;
//structEnd()
}ces_event_lw_session_lock;

//structStart()
typedef struct ces_event_lw_session_unlock {
	//onCustomStruct(_:_:_:)
	ces_string_token username;
	//onCustom(_:_:_:)
	es_graphical_session_id_t graphical_session_id;
//structEnd()
}ces_event_lw_session_unlock;

//structStart()
typedef struct ces_event_screensharing_attach {
	//onCustom(_:_:_:)
	bool success;
	//onCustom(_:_:_:)
	es_address_type_t source_address_type;
	//onCustomStruct(_:_:_:)
	ces_string_token source_address;
	//onCustomStruct(_:_:_:)
	ces_string_token viewer_appleid;
	//onCustomStruct(_:_:_:)
	ces_string_token authentication_type;
	//onCustomStruct(_:_:_:)
	ces_string_token authentication_username;
	//onCustomStruct(_:_:_:)
	ces_string_token session_username;
	//onCustom(_:_:_:)
	bool existing_session;
	//onCustom(_:_:_:)
	es_graphical_session_id_t graphical_session_id;
//structEnd()
}ces_event_screensharing_attach;

//structStart()
typedef struct ces_event_screensharing_detach {
	//onCustom(_:_:_:)
	es_address_type_t source_address_type;
	//onCustomStruct(_:_:_:)
	ces_string_token source_address;
	//onCustomStruct(_:_:_:)
	ces_string_token viewer_appleid;
	//onCustom(_:_:_:)
	es_graphical_session_id_t graphical_session_id;
//structEnd()
}ces_event_screensharing_detach;

//structStart()
typedef struct ces_event_openssh_login {
	//onCustom(_:_:_:)
	bool success;
	//onCustom(_:_:_:)
	es_openssh_login_result_type_t result_type;
	//onCustom(_:_:_:)
	es_address_type_t source_address_type;
	//onCustomStruct(_:_:_:)
	ces_string_token source_address;
	//onCustomStruct(_:_:_:)
	ces_string_token username;
	//onCustom(_:_:_:)
	bool has_uid;
	//onCustom(_:_:_:)
	uid_t uid;
//structEnd()
}ces_event_openssh_login;

//structStart()
typedef struct ces_event_openssh_logout {
	//onCustom(_:_:_:)
	es_address_type_t source_address_type;
	//onCustomStruct(_:_:_:)
	ces_string_token source_address;
	//onCustomStruct(_:_:_:)
	ces_string_token username;
	//onCustom(_:_:_:)
	uid_t uid;
//structEnd()
}ces_event_openssh_logout;

//structStart()
typedef struct ces_event_login_login {
	//onCustom(_:_:_:)
	bool success;
	//onCustomStruct(_:_:_:)
	ces_string_token failure_message;
	//onCustomStruct(_:_:_:)
	ces_string_token username;
	//onCustom(_:_:_:)
	bool has_uid;
	//onCustom(_:_:_:)
	uid_t uid;
//structEnd()
}ces_event_login_login;

//structStart()
typedef struct ces_event_login_logout {
	//onCustomStruct(_:_:_:)
	ces_string_token username;
	//onCustom(_:_:_:)
	uid_t uid;
//structEnd()
}ces_event_login_logout;

//structStart()
typedef struct ces_event_btm_launch_item_add {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process instigator;
	//onCustomStructPointer(_:_:_:ext:)
	ces_process app;
	//onCustomStructPointer(_:_:_:ext:)
	ces_btm_launch_item item;
	//onCustomStruct(_:_:_:)
	ces_string_token executable_path;
//structEnd()
}ces_event_btm_launch_item_add;

//structStart()
typedef struct ces_event_btm_launch_item_remove {
	//onCustomStructPointer(_:_:_:ext:)
	ces_process instigator;
	//onCustomStructPointer(_:_:_:ext:)
	ces_process app;
	//onCustomStructPointer(_:_:_:ext:)
	ces_btm_launch_item item;
//structEnd()
}ces_event_btm_launch_item_remove;

//structStart()
typedef struct ces_result {
	//onCustom(_:_:_:)
	es_result_type_t result_type;
	void * _Nonnull result;
//structEnd()
}ces_result;

//structStart()
typedef struct ces_message {
	//onCustom(_:_:_:)
	uint32_t version;
	//onCustom(_:_:_:)
	struct timespec time;
	//onCustom(_:_:_:)
	uint64_t mach_time;
	//onCustom(_:_:_:)
	uint64_t deadline;
	//onCustomStructPointer(_:_:_:ext:)
	ces_process process;
	//onCustom(_:_:_:)
	uint64_t seq_num;
	//onCustom(_:_:_:)
	es_action_type_t action_type;
	void * _Nonnull action;
	//onCustom(_:_:_:)
	es_event_type_t event_type;
	void * _Nonnull event;
	//onCustomStructPointer(_:_:_:ext:)
	ces_thread thread;
	//onCustom(_:_:_:)
	uint64_t global_seq_num;
//structEnd()
}ces_message;

//structStart()
ces_mach_msg_type_descriptor mach_msg_type_descriptor_t_convert(mach_msg_type_descriptor_t * _Nonnull mach_msg_type_descriptor);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_port_descriptor mach_msg_port_descriptor_t_convert(mach_msg_port_descriptor_t * _Nonnull mach_msg_port_descriptor);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_ool_descriptor32 mach_msg_ool_descriptor32_t_convert(mach_msg_ool_descriptor32_t * _Nonnull mach_msg_ool_descriptor32);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_ool_descriptor64 mach_msg_ool_descriptor64_t_convert(mach_msg_ool_descriptor64_t * _Nonnull mach_msg_ool_descriptor64);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_ool_descriptor mach_msg_ool_descriptor_t_convert(mach_msg_ool_descriptor_t * _Nonnull mach_msg_ool_descriptor);
	//onCustomPointer(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_ool_ports_descriptor32 mach_msg_ool_ports_descriptor32_t_convert(mach_msg_ool_ports_descriptor32_t * _Nonnull mach_msg_ool_ports_descriptor32);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_ool_ports_descriptor64 mach_msg_ool_ports_descriptor64_t_convert(mach_msg_ool_ports_descriptor64_t * _Nonnull mach_msg_ool_ports_descriptor64);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_ool_ports_descriptor mach_msg_ool_ports_descriptor_t_convert(mach_msg_ool_ports_descriptor_t * _Nonnull mach_msg_ool_ports_descriptor);
	//onCustomPointer(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_guarded_port_descriptor32 mach_msg_guarded_port_descriptor32_t_convert(mach_msg_guarded_port_descriptor32_t * _Nonnull mach_msg_guarded_port_descriptor32);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_guarded_port_descriptor64 mach_msg_guarded_port_descriptor64_t_convert(mach_msg_guarded_port_descriptor64_t * _Nonnull mach_msg_guarded_port_descriptor64);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_guarded_port_descriptor mach_msg_guarded_port_descriptor_t_convert(mach_msg_guarded_port_descriptor_t * _Nonnull mach_msg_guarded_port_descriptor);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_body mach_msg_body_t_convert(mach_msg_body_t * _Nonnull mach_msg_body);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_header mach_msg_header_t_convert(mach_msg_header_t * _Nonnull mach_msg_header);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_base mach_msg_base_t_convert(mach_msg_base_t * _Nonnull mach_msg_base);
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_trailer mach_msg_trailer_t_convert(mach_msg_trailer_t * _Nonnull mach_msg_trailer);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_seqno_trailer mach_msg_seqno_trailer_t_convert(mach_msg_seqno_trailer_t * _Nonnull mach_msg_seqno_trailer);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_security_token security_token_t_convert(security_token_t * _Nonnull security_token);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_security_trailer mach_msg_security_trailer_t_convert(mach_msg_security_trailer_t * _Nonnull mach_msg_security_trailer);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_audit_token audit_token_t_convert(audit_token_t * _Nonnull audit_token);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_audit_trailer mach_msg_audit_trailer_t_convert(mach_msg_audit_trailer_t * _Nonnull mach_msg_audit_trailer);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_context_trailer mach_msg_context_trailer_t_convert(mach_msg_context_trailer_t * _Nonnull mach_msg_context_trailer);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_msg_labels msg_labels_t_convert(msg_labels_t * _Nonnull msg_labels);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_mac_trailer mach_msg_mac_trailer_t_convert(mach_msg_mac_trailer_t * _Nonnull mach_msg_mac_trailer);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_empty_send mach_msg_empty_send_t_convert(mach_msg_empty_send_t * _Nonnull mach_msg_empty_send);
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_mach_msg_empty_rcv mach_msg_empty_rcv_t_convert(mach_msg_empty_rcv_t * _Nonnull mach_msg_empty_rcv);
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_id es_event_id_t_convert(es_event_id_t * _Nonnull event_id);
//structEnd()

//structStart()
ces_token es_token_t_convert(es_token_t * _Nonnull token);
	//onCustom(_:_:_:)
	//ocSizeOfArray(_:_:_:count:)
//structEnd()

//structStart()
ces_string_token es_string_token_t_convert(es_string_token_t * _Nonnull string_token);
	//onCustom(_:_:_:)
	//ocSizeOfArray(_:_:_:count:)
//structEnd()

//structStart()
ces_muted_path es_muted_path_t_convert(es_muted_path_t * _Nonnull muted_path);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//ocSizeOfArray(_:_:_:count:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_muted_paths es_muted_paths_t_convert(es_muted_paths_t * _Nonnull muted_paths);
	//onCustom(_:_:_:)
	//ocSizeOfArray(_:_:_:count:)
//structEnd()

//structStart()
ces_muted_process es_muted_process_t_convert(es_muted_process_t * _Nonnull muted_process);
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
	//ocSizeOfArray(_:_:_:count:)
//structEnd()

//structStart()
ces_muted_processes es_muted_processes_t_convert(es_muted_processes_t * _Nonnull muted_processes);
	//onCustom(_:_:_:)
	//ocSizeOfArray(_:_:_:count:)
//structEnd()

//structStart()
ces_ntsid ntsid_t_convert(ntsid_t * _Nonnull ntsid);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_file es_file_t_convert(es_file_t * _Nonnull file);
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_thread es_thread_t_convert(es_thread_t * _Nonnull thread);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_process es_process_t_convert(es_process_t * _Nonnull process);
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_thread_state es_thread_state_t_convert(es_thread_state_t * _Nonnull thread_state);
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_fd es_fd_t_convert(es_fd_t * _Nonnull fd);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_btm_launch_item es_btm_launch_item_t_convert(es_btm_launch_item_t * _Nonnull btm_launch_item);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_exec es_event_exec_t_convert(es_event_exec_t * _Nonnull event_exec);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_open es_event_open_t_convert(es_event_open_t * _Nonnull event_open);
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_kextload es_event_kextload_t_convert(es_event_kextload_t * _Nonnull event_kextload);
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_kextunload es_event_kextunload_t_convert(es_event_kextunload_t * _Nonnull event_kextunload);
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_unlink es_event_unlink_t_convert(es_event_unlink_t * _Nonnull event_unlink);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_mmap es_event_mmap_t_convert(es_event_mmap_t * _Nonnull event_mmap);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_link es_event_link_t_convert(es_event_link_t * _Nonnull event_link);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_mount es_event_mount_t_convert(es_event_mount_t * _Nonnull event_mount);
	//onCustomPointer(_:_:_:)
//structEnd()

//structStart()
ces_event_unmount es_event_unmount_t_convert(es_event_unmount_t * _Nonnull event_unmount);
	//onCustomPointer(_:_:_:)
//structEnd()

//structStart()
ces_event_remount es_event_remount_t_convert(es_event_remount_t * _Nonnull event_remount);
	//onCustomPointer(_:_:_:)
//structEnd()

//structStart()
ces_event_fork es_event_fork_t_convert(es_event_fork_t * _Nonnull event_fork);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_mprotect es_event_mprotect_t_convert(es_event_mprotect_t * _Nonnull event_mprotect);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_signal es_event_signal_t_convert(es_event_signal_t * _Nonnull event_signal);
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_rename es_event_rename_t_convert(es_event_rename_t * _Nonnull event_rename);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_setextattr es_event_setextattr_t_convert(es_event_setextattr_t * _Nonnull event_setextattr);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_getextattr es_event_getextattr_t_convert(es_event_getextattr_t * _Nonnull event_getextattr);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_deleteextattr es_event_deleteextattr_t_convert(es_event_deleteextattr_t * _Nonnull event_deleteextattr);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_setmode es_event_setmode_t_convert(es_event_setmode_t * _Nonnull event_setmode);
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_setflags es_event_setflags_t_convert(es_event_setflags_t * _Nonnull event_setflags);
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_setowner es_event_setowner_t_convert(es_event_setowner_t * _Nonnull event_setowner);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_close es_event_close_t_convert(es_event_close_t * _Nonnull event_close);
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_create es_event_create_t_convert(es_event_create_t * _Nonnull event_create);
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_exit es_event_exit_t_convert(es_event_exit_t * _Nonnull event_exit);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_exchangedata es_event_exchangedata_t_convert(es_event_exchangedata_t * _Nonnull event_exchangedata);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_write es_event_write_t_convert(es_event_write_t * _Nonnull event_write);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_truncate es_event_truncate_t_convert(es_event_truncate_t * _Nonnull event_truncate);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_chdir es_event_chdir_t_convert(es_event_chdir_t * _Nonnull event_chdir);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_stat es_event_stat_t_convert(es_event_stat_t * _Nonnull event_stat);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_chroot es_event_chroot_t_convert(es_event_chroot_t * _Nonnull event_chroot);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_listextattr es_event_listextattr_t_convert(es_event_listextattr_t * _Nonnull event_listextattr);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_iokit_open es_event_iokit_open_t_convert(es_event_iokit_open_t * _Nonnull event_iokit_open);
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_get_task es_event_get_task_t_convert(es_event_get_task_t * _Nonnull event_get_task);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_get_task_read es_event_get_task_read_t_convert(es_event_get_task_read_t * _Nonnull event_get_task_read);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_get_task_inspect es_event_get_task_inspect_t_convert(es_event_get_task_inspect_t * _Nonnull event_get_task_inspect);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_get_task_name es_event_get_task_name_t_convert(es_event_get_task_name_t * _Nonnull event_get_task_name);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_getattrlist es_event_getattrlist_t_convert(es_event_getattrlist_t * _Nonnull event_getattrlist);
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_setattrlist es_event_setattrlist_t_convert(es_event_setattrlist_t * _Nonnull event_setattrlist);
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_file_provider_update es_event_file_provider_update_t_convert(es_event_file_provider_update_t * _Nonnull event_file_provider_update);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_file_provider_materialize es_event_file_provider_materialize_t_convert(es_event_file_provider_materialize_t * _Nonnull event_file_provider_materialize);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_readlink es_event_readlink_t_convert(es_event_readlink_t * _Nonnull event_readlink);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_lookup es_event_lookup_t_convert(es_event_lookup_t * _Nonnull event_lookup);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_access es_event_access_t_convert(es_event_access_t * _Nonnull event_access);
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_utimes es_event_utimes_t_convert(es_event_utimes_t * _Nonnull event_utimes);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_clone es_event_clone_t_convert(es_event_clone_t * _Nonnull event_clone);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_copyfile es_event_copyfile_t_convert(es_event_copyfile_t * _Nonnull event_copyfile);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_fcntl es_event_fcntl_t_convert(es_event_fcntl_t * _Nonnull event_fcntl);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_readdir es_event_readdir_t_convert(es_event_readdir_t * _Nonnull event_readdir);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_fsgetpath es_event_fsgetpath_t_convert(es_event_fsgetpath_t * _Nonnull event_fsgetpath);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_settime es_event_settime_t_convert(es_event_settime_t * _Nonnull event_settime);
//structEnd()

//structStart()
ces_event_dup es_event_dup_t_convert(es_event_dup_t * _Nonnull event_dup);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_uipc_bind es_event_uipc_bind_t_convert(es_event_uipc_bind_t * _Nonnull event_uipc_bind);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_uipc_connect es_event_uipc_connect_t_convert(es_event_uipc_connect_t * _Nonnull event_uipc_connect);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_setacl es_event_setacl_t_convert(es_event_setacl_t * _Nonnull event_setacl);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_pty_grant es_event_pty_grant_t_convert(es_event_pty_grant_t * _Nonnull event_pty_grant);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_pty_close es_event_pty_close_t_convert(es_event_pty_close_t * _Nonnull event_pty_close);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_proc_check es_event_proc_check_t_convert(es_event_proc_check_t * _Nonnull event_proc_check);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_searchfs es_event_searchfs_t_convert(es_event_searchfs_t * _Nonnull event_searchfs);
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_proc_suspend_resume es_event_proc_suspend_resume_t_convert(es_event_proc_suspend_resume_t * _Nonnull event_proc_suspend_resume);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_cs_invalidated es_event_cs_invalidated_t_convert(es_event_cs_invalidated_t * _Nonnull event_cs_invalidated);
//structEnd()

//structStart()
ces_event_trace es_event_trace_t_convert(es_event_trace_t * _Nonnull event_trace);
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_remote_thread_create es_event_remote_thread_create_t_convert(es_event_remote_thread_create_t * _Nonnull event_remote_thread_create);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_setuid es_event_setuid_t_convert(es_event_setuid_t * _Nonnull event_setuid);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_setgid es_event_setgid_t_convert(es_event_setgid_t * _Nonnull event_setgid);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_seteuid es_event_seteuid_t_convert(es_event_seteuid_t * _Nonnull event_seteuid);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_setegid es_event_setegid_t_convert(es_event_setegid_t * _Nonnull event_setegid);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_setreuid es_event_setreuid_t_convert(es_event_setreuid_t * _Nonnull event_setreuid);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_setregid es_event_setregid_t_convert(es_event_setregid_t * _Nonnull event_setregid);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_authentication_od es_event_authentication_od_t_convert(es_event_authentication_od_t * _Nonnull event_authentication_od);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_authentication_touchid es_event_authentication_touchid_t_convert(es_event_authentication_touchid_t * _Nonnull event_authentication_touchid);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_authentication_token es_event_authentication_token_t_convert(es_event_authentication_token_t * _Nonnull event_authentication_token);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_authentication_auto_unlock es_event_authentication_auto_unlock_t_convert(es_event_authentication_auto_unlock_t * _Nonnull event_authentication_auto_unlock);
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_authentication es_event_authentication_t_convert(es_event_authentication_t * _Nonnull event_authentication);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_xp_malware_detected es_event_xp_malware_detected_t_convert(es_event_xp_malware_detected_t * _Nonnull event_xp_malware_detected);
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_xp_malware_remediated es_event_xp_malware_remediated_t_convert(es_event_xp_malware_remediated_t * _Nonnull event_xp_malware_remediated);
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_event_lw_session_login es_event_lw_session_login_t_convert(es_event_lw_session_login_t * _Nonnull event_lw_session_login);
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_lw_session_logout es_event_lw_session_logout_t_convert(es_event_lw_session_logout_t * _Nonnull event_lw_session_logout);
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_lw_session_lock es_event_lw_session_lock_t_convert(es_event_lw_session_lock_t * _Nonnull event_lw_session_lock);
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_lw_session_unlock es_event_lw_session_unlock_t_convert(es_event_lw_session_unlock_t * _Nonnull event_lw_session_unlock);
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_screensharing_attach es_event_screensharing_attach_t_convert(es_event_screensharing_attach_t * _Nonnull event_screensharing_attach);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_screensharing_detach es_event_screensharing_detach_t_convert(es_event_screensharing_detach_t * _Nonnull event_screensharing_detach);
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_openssh_login es_event_openssh_login_t_convert(es_event_openssh_login_t * _Nonnull event_openssh_login);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_openssh_logout es_event_openssh_logout_t_convert(es_event_openssh_logout_t * _Nonnull event_openssh_logout);
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_login_login es_event_login_login_t_convert(es_event_login_login_t * _Nonnull event_login_login);
	//onCustom(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_login_logout es_event_login_logout_t_convert(es_event_login_logout_t * _Nonnull event_login_logout);
	//onCustomStruct(_:_:_:)
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_event_btm_launch_item_add es_event_btm_launch_item_add_t_convert(es_event_btm_launch_item_add_t * _Nonnull event_btm_launch_item_add);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStruct(_:_:_:)
//structEnd()

//structStart()
ces_event_btm_launch_item_remove es_event_btm_launch_item_remove_t_convert(es_event_btm_launch_item_remove_t * _Nonnull event_btm_launch_item_remove);
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustomStructPointer(_:_:_:ext:)
//structEnd()

//structStart()
ces_result es_result_t_convert(es_result_t * _Nonnull result);
	//onCustom(_:_:_:)
//structEnd()

//structStart()
ces_message es_message_t_convert(es_message_t * _Nonnull message);
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustom(_:_:_:)
	//onCustomStructPointer(_:_:_:ext:)
	//onCustom(_:_:_:)
//structEnd()



#endif /* convert_h */
