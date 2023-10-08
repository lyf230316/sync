//
//  convert.c
//  json
//
//  Created by msi on 2023/9/9.
//

#include "convert.h"

//structStart()
ces_mach_msg_type_descriptor mach_msg_type_descriptor_t_convert(mach_msg_type_descriptor_t * _Nonnull mach_msg_type_descriptor) {
    ces_mach_msg_type_descriptor _mach_msg_type_descriptor = {0};
	//onCustom(_:_:_:)
	_mach_msg_type_descriptor.pad1 = mach_msg_type_descriptor->pad1;
	//onCustom(_:_:_:)
	_mach_msg_type_descriptor.pad2 = mach_msg_type_descriptor->pad2;
	//onCustom(_:_:_:)
	_mach_msg_type_descriptor.pad3 = mach_msg_type_descriptor->pad3;
	//onCustom(_:_:_:)
	_mach_msg_type_descriptor.type = mach_msg_type_descriptor->type;
//structEnd()
    return _mach_msg_type_descriptor;
}

//structStart()
ces_mach_msg_port_descriptor mach_msg_port_descriptor_t_convert(mach_msg_port_descriptor_t * _Nonnull mach_msg_port_descriptor) {
    ces_mach_msg_port_descriptor _mach_msg_port_descriptor = {0};
	//onCustom(_:_:_:)
	_mach_msg_port_descriptor.name = mach_msg_port_descriptor->name;
	//onCustom(_:_:_:)
	_mach_msg_port_descriptor.pad1 = mach_msg_port_descriptor->pad1;
	//onCustom(_:_:_:)
	_mach_msg_port_descriptor.pad2 = mach_msg_port_descriptor->pad2;
	//onCustom(_:_:_:)
	_mach_msg_port_descriptor.disposition = mach_msg_port_descriptor->disposition;
	//onCustom(_:_:_:)
	_mach_msg_port_descriptor.type = mach_msg_port_descriptor->type;
//structEnd()
    return _mach_msg_port_descriptor;
}

//structStart()
ces_mach_msg_ool_descriptor32 mach_msg_ool_descriptor32_t_convert(mach_msg_ool_descriptor32_t * _Nonnull mach_msg_ool_descriptor32) {
    ces_mach_msg_ool_descriptor32 _mach_msg_ool_descriptor32 = {0};
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor32.address = mach_msg_ool_descriptor32->address;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor32.size = mach_msg_ool_descriptor32->size;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor32.deallocate = mach_msg_ool_descriptor32->deallocate;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor32.copy = mach_msg_ool_descriptor32->copy;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor32.pad1 = mach_msg_ool_descriptor32->pad1;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor32.type = mach_msg_ool_descriptor32->type;
//structEnd()
    return _mach_msg_ool_descriptor32;
}

//structStart()
ces_mach_msg_ool_descriptor64 mach_msg_ool_descriptor64_t_convert(mach_msg_ool_descriptor64_t * _Nonnull mach_msg_ool_descriptor64) {
    ces_mach_msg_ool_descriptor64 _mach_msg_ool_descriptor64 = {0};
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor64.address = mach_msg_ool_descriptor64->address;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor64.deallocate = mach_msg_ool_descriptor64->deallocate;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor64.copy = mach_msg_ool_descriptor64->copy;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor64.pad1 = mach_msg_ool_descriptor64->pad1;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor64.type = mach_msg_ool_descriptor64->type;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor64.size = mach_msg_ool_descriptor64->size;
//structEnd()
    return _mach_msg_ool_descriptor64;
}

//structStart()
ces_mach_msg_ool_descriptor mach_msg_ool_descriptor_t_convert(mach_msg_ool_descriptor_t * _Nonnull mach_msg_ool_descriptor) {
    ces_mach_msg_ool_descriptor _mach_msg_ool_descriptor = {0};
	//onCustomPointer(_:_:_:)
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor.deallocate = mach_msg_ool_descriptor->deallocate;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor.copy = mach_msg_ool_descriptor->copy;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor.pad1 = mach_msg_ool_descriptor->pad1;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor.type = mach_msg_ool_descriptor->type;
	//onCustom(_:_:_:)
	_mach_msg_ool_descriptor.size = mach_msg_ool_descriptor->size;
//structEnd()
    return _mach_msg_ool_descriptor;
}

//structStart()
ces_mach_msg_ool_ports_descriptor32 mach_msg_ool_ports_descriptor32_t_convert(mach_msg_ool_ports_descriptor32_t * _Nonnull mach_msg_ool_ports_descriptor32) {
    ces_mach_msg_ool_ports_descriptor32 _mach_msg_ool_ports_descriptor32 = {0};
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor32.address = mach_msg_ool_ports_descriptor32->address;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor32.count = mach_msg_ool_ports_descriptor32->count;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor32.deallocate = mach_msg_ool_ports_descriptor32->deallocate;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor32.copy = mach_msg_ool_ports_descriptor32->copy;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor32.disposition = mach_msg_ool_ports_descriptor32->disposition;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor32.type = mach_msg_ool_ports_descriptor32->type;
//structEnd()
    return _mach_msg_ool_ports_descriptor32;
}

//structStart()
ces_mach_msg_ool_ports_descriptor64 mach_msg_ool_ports_descriptor64_t_convert(mach_msg_ool_ports_descriptor64_t * _Nonnull mach_msg_ool_ports_descriptor64) {
    ces_mach_msg_ool_ports_descriptor64 _mach_msg_ool_ports_descriptor64 = {0};
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor64.address = mach_msg_ool_ports_descriptor64->address;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor64.deallocate = mach_msg_ool_ports_descriptor64->deallocate;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor64.copy = mach_msg_ool_ports_descriptor64->copy;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor64.disposition = mach_msg_ool_ports_descriptor64->disposition;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor64.type = mach_msg_ool_ports_descriptor64->type;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor64.count = mach_msg_ool_ports_descriptor64->count;
//structEnd()
    return _mach_msg_ool_ports_descriptor64;
}

//structStart()
ces_mach_msg_ool_ports_descriptor mach_msg_ool_ports_descriptor_t_convert(mach_msg_ool_ports_descriptor_t * _Nonnull mach_msg_ool_ports_descriptor) {
    ces_mach_msg_ool_ports_descriptor _mach_msg_ool_ports_descriptor = {0};
	//onCustomPointer(_:_:_:)
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor.deallocate = mach_msg_ool_ports_descriptor->deallocate;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor.copy = mach_msg_ool_ports_descriptor->copy;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor.disposition = mach_msg_ool_ports_descriptor->disposition;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor.type = mach_msg_ool_ports_descriptor->type;
	//onCustom(_:_:_:)
	_mach_msg_ool_ports_descriptor.count = mach_msg_ool_ports_descriptor->count;
//structEnd()
    return _mach_msg_ool_ports_descriptor;
}

//structStart()
ces_mach_msg_guarded_port_descriptor32 mach_msg_guarded_port_descriptor32_t_convert(mach_msg_guarded_port_descriptor32_t * _Nonnull mach_msg_guarded_port_descriptor32) {
    ces_mach_msg_guarded_port_descriptor32 _mach_msg_guarded_port_descriptor32 = {0};
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor32.context = mach_msg_guarded_port_descriptor32->context;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor32.name = mach_msg_guarded_port_descriptor32->name;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor32.flags = mach_msg_guarded_port_descriptor32->flags;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor32.disposition = mach_msg_guarded_port_descriptor32->disposition;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor32.type = mach_msg_guarded_port_descriptor32->type;
//structEnd()
    return _mach_msg_guarded_port_descriptor32;
}

//structStart()
ces_mach_msg_guarded_port_descriptor64 mach_msg_guarded_port_descriptor64_t_convert(mach_msg_guarded_port_descriptor64_t * _Nonnull mach_msg_guarded_port_descriptor64) {
    ces_mach_msg_guarded_port_descriptor64 _mach_msg_guarded_port_descriptor64 = {0};
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor64.context = mach_msg_guarded_port_descriptor64->context;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor64.flags = mach_msg_guarded_port_descriptor64->flags;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor64.disposition = mach_msg_guarded_port_descriptor64->disposition;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor64.type = mach_msg_guarded_port_descriptor64->type;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor64.name = mach_msg_guarded_port_descriptor64->name;
//structEnd()
    return _mach_msg_guarded_port_descriptor64;
}

//structStart()
ces_mach_msg_guarded_port_descriptor mach_msg_guarded_port_descriptor_t_convert(mach_msg_guarded_port_descriptor_t * _Nonnull mach_msg_guarded_port_descriptor) {
    ces_mach_msg_guarded_port_descriptor _mach_msg_guarded_port_descriptor = {0};
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor.context = mach_msg_guarded_port_descriptor->context;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor.flags = mach_msg_guarded_port_descriptor->flags;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor.disposition = mach_msg_guarded_port_descriptor->disposition;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor.type = mach_msg_guarded_port_descriptor->type;
	//onCustom(_:_:_:)
	_mach_msg_guarded_port_descriptor.name = mach_msg_guarded_port_descriptor->name;
//structEnd()
    return _mach_msg_guarded_port_descriptor;
}

//structStart()
ces_mach_msg_body mach_msg_body_t_convert(mach_msg_body_t * _Nonnull mach_msg_body) {
    ces_mach_msg_body _mach_msg_body = {0};
	//onCustom(_:_:_:)
	_mach_msg_body.msgh_descriptor_count = mach_msg_body->msgh_descriptor_count;
//structEnd()
    return _mach_msg_body;
}

//structStart()
ces_mach_msg_header mach_msg_header_t_convert(mach_msg_header_t * _Nonnull mach_msg_header) {
    ces_mach_msg_header _mach_msg_header = {0};
	//onCustom(_:_:_:)
	_mach_msg_header.msgh_bits = mach_msg_header->msgh_bits;
	//onCustom(_:_:_:)
	_mach_msg_header.msgh_size = mach_msg_header->msgh_size;
	//onCustom(_:_:_:)
	_mach_msg_header.msgh_remote_port = mach_msg_header->msgh_remote_port;
	//onCustom(_:_:_:)
	_mach_msg_header.msgh_local_port = mach_msg_header->msgh_local_port;
	//onCustom(_:_:_:)
	_mach_msg_header.msgh_voucher_port = mach_msg_header->msgh_voucher_port;
	//onCustom(_:_:_:)
	_mach_msg_header.msgh_id = mach_msg_header->msgh_id;
//structEnd()
    return _mach_msg_header;
}

//structStart()
ces_mach_msg_base mach_msg_base_t_convert(mach_msg_base_t * _Nonnull mach_msg_base) {
    ces_mach_msg_base _mach_msg_base = {0};
	//onCustomStruct(_:_:_:)
	_mach_msg_base.header = mach_msg_header_t_convert(&(mach_msg_base->header));
	//onCustomStruct(_:_:_:)
	_mach_msg_base.body = mach_msg_body_t_convert(&(mach_msg_base->body));
//structEnd()
    return _mach_msg_base;
}

//structStart()
ces_mach_msg_trailer mach_msg_trailer_t_convert(mach_msg_trailer_t * _Nonnull mach_msg_trailer) {
    ces_mach_msg_trailer _mach_msg_trailer = {0};
	//onCustom(_:_:_:)
	_mach_msg_trailer.msgh_trailer_type = mach_msg_trailer->msgh_trailer_type;
	//onCustom(_:_:_:)
	_mach_msg_trailer.msgh_trailer_size = mach_msg_trailer->msgh_trailer_size;
//structEnd()
    return _mach_msg_trailer;
}

//structStart()
ces_mach_msg_seqno_trailer mach_msg_seqno_trailer_t_convert(mach_msg_seqno_trailer_t * _Nonnull mach_msg_seqno_trailer) {
    ces_mach_msg_seqno_trailer _mach_msg_seqno_trailer = {0};
	//onCustom(_:_:_:)
	_mach_msg_seqno_trailer.msgh_trailer_type = mach_msg_seqno_trailer->msgh_trailer_type;
	//onCustom(_:_:_:)
	_mach_msg_seqno_trailer.msgh_trailer_size = mach_msg_seqno_trailer->msgh_trailer_size;
	//onCustom(_:_:_:)
	_mach_msg_seqno_trailer.msgh_seqno = mach_msg_seqno_trailer->msgh_seqno;
//structEnd()
    return _mach_msg_seqno_trailer;
}

//structStart()
ces_security_token security_token_t_convert(security_token_t * _Nonnull security_token) {
    ces_security_token _security_token = {0};
	//onCustom(_:_:_:)
	memcpy(_security_token.val,security_token->val,sizeof(unsigned int) * 2);
//structEnd()
    return _security_token;
}

//structStart()
ces_mach_msg_security_trailer mach_msg_security_trailer_t_convert(mach_msg_security_trailer_t * _Nonnull mach_msg_security_trailer) {
    ces_mach_msg_security_trailer _mach_msg_security_trailer = {0};
	//onCustom(_:_:_:)
	_mach_msg_security_trailer.msgh_trailer_type = mach_msg_security_trailer->msgh_trailer_type;
	//onCustom(_:_:_:)
	_mach_msg_security_trailer.msgh_trailer_size = mach_msg_security_trailer->msgh_trailer_size;
	//onCustom(_:_:_:)
	_mach_msg_security_trailer.msgh_seqno = mach_msg_security_trailer->msgh_seqno;
	//onCustomStruct(_:_:_:)
	_mach_msg_security_trailer.msgh_sender = security_token_t_convert(&(mach_msg_security_trailer->msgh_sender));
//structEnd()
    return _mach_msg_security_trailer;
}

//structStart()
ces_audit_token audit_token_t_convert(audit_token_t * _Nonnull audit_token) {
    ces_audit_token _audit_token = {0};
	//onCustom(_:_:_:)
	memcpy(_audit_token.val,audit_token->val,sizeof(unsigned int) * 8);
//structEnd()
    return _audit_token;
}

//structStart()
ces_mach_msg_audit_trailer mach_msg_audit_trailer_t_convert(mach_msg_audit_trailer_t * _Nonnull mach_msg_audit_trailer) {
    ces_mach_msg_audit_trailer _mach_msg_audit_trailer = {0};
	//onCustom(_:_:_:)
	_mach_msg_audit_trailer.msgh_trailer_type = mach_msg_audit_trailer->msgh_trailer_type;
	//onCustom(_:_:_:)
	_mach_msg_audit_trailer.msgh_trailer_size = mach_msg_audit_trailer->msgh_trailer_size;
	//onCustom(_:_:_:)
	_mach_msg_audit_trailer.msgh_seqno = mach_msg_audit_trailer->msgh_seqno;
	//onCustomStruct(_:_:_:)
	_mach_msg_audit_trailer.msgh_sender = security_token_t_convert(&(mach_msg_audit_trailer->msgh_sender));
	//onCustomStruct(_:_:_:)
	_mach_msg_audit_trailer.msgh_audit = audit_token_t_convert(&(mach_msg_audit_trailer->msgh_audit));
//structEnd()
    return _mach_msg_audit_trailer;
}

//structStart()
ces_mach_msg_context_trailer mach_msg_context_trailer_t_convert(mach_msg_context_trailer_t * _Nonnull mach_msg_context_trailer) {
    ces_mach_msg_context_trailer _mach_msg_context_trailer = {0};
	//onCustom(_:_:_:)
	_mach_msg_context_trailer.msgh_trailer_type = mach_msg_context_trailer->msgh_trailer_type;
	//onCustom(_:_:_:)
	_mach_msg_context_trailer.msgh_trailer_size = mach_msg_context_trailer->msgh_trailer_size;
	//onCustom(_:_:_:)
	_mach_msg_context_trailer.msgh_seqno = mach_msg_context_trailer->msgh_seqno;
	//onCustomStruct(_:_:_:)
	_mach_msg_context_trailer.msgh_sender = security_token_t_convert(&(mach_msg_context_trailer->msgh_sender));
	//onCustomStruct(_:_:_:)
	_mach_msg_context_trailer.msgh_audit = audit_token_t_convert(&(mach_msg_context_trailer->msgh_audit));
	//onCustom(_:_:_:)
	_mach_msg_context_trailer.msgh_context = mach_msg_context_trailer->msgh_context;
//structEnd()
    return _mach_msg_context_trailer;
}

//structStart()
ces_msg_labels msg_labels_t_convert(msg_labels_t * _Nonnull msg_labels) {
    ces_msg_labels _msg_labels = {0};
	//onCustom(_:_:_:)
	_msg_labels.sender = msg_labels->sender;
//structEnd()
    return _msg_labels;
}

//structStart()
ces_mach_msg_mac_trailer mach_msg_mac_trailer_t_convert(mach_msg_mac_trailer_t * _Nonnull mach_msg_mac_trailer) {
    ces_mach_msg_mac_trailer _mach_msg_mac_trailer = {0};
	//onCustom(_:_:_:)
	_mach_msg_mac_trailer.msgh_trailer_type = mach_msg_mac_trailer->msgh_trailer_type;
	//onCustom(_:_:_:)
	_mach_msg_mac_trailer.msgh_trailer_size = mach_msg_mac_trailer->msgh_trailer_size;
	//onCustom(_:_:_:)
	_mach_msg_mac_trailer.msgh_seqno = mach_msg_mac_trailer->msgh_seqno;
	//onCustomStruct(_:_:_:)
	_mach_msg_mac_trailer.msgh_sender = security_token_t_convert(&(mach_msg_mac_trailer->msgh_sender));
	//onCustomStruct(_:_:_:)
	_mach_msg_mac_trailer.msgh_audit = audit_token_t_convert(&(mach_msg_mac_trailer->msgh_audit));
	//onCustom(_:_:_:)
	_mach_msg_mac_trailer.msgh_context = mach_msg_mac_trailer->msgh_context;
	//onCustom(_:_:_:)
	_mach_msg_mac_trailer.msgh_ad = mach_msg_mac_trailer->msgh_ad;
	//onCustomStruct(_:_:_:)
	_mach_msg_mac_trailer.msgh_labels = msg_labels_t_convert(&(mach_msg_mac_trailer->msgh_labels));
//structEnd()
    return _mach_msg_mac_trailer;
}

//structStart()
ces_mach_msg_empty_send mach_msg_empty_send_t_convert(mach_msg_empty_send_t * _Nonnull mach_msg_empty_send) {
    ces_mach_msg_empty_send _mach_msg_empty_send = {0};
	//onCustomStruct(_:_:_:)
	_mach_msg_empty_send.header = mach_msg_header_t_convert(&(mach_msg_empty_send->header));
//structEnd()
    return _mach_msg_empty_send;
}

//structStart()
ces_mach_msg_empty_rcv mach_msg_empty_rcv_t_convert(mach_msg_empty_rcv_t * _Nonnull mach_msg_empty_rcv) {
    ces_mach_msg_empty_rcv _mach_msg_empty_rcv = {0};
	//onCustomStruct(_:_:_:)
	_mach_msg_empty_rcv.header = mach_msg_header_t_convert(&(mach_msg_empty_rcv->header));
	//onCustomStruct(_:_:_:)
	_mach_msg_empty_rcv.trailer = mach_msg_trailer_t_convert(&(mach_msg_empty_rcv->trailer));
//structEnd()
    return _mach_msg_empty_rcv;
}

//structStart()
ces_event_id es_event_id_t_convert(es_event_id_t * _Nonnull event_id) {
    ces_event_id _event_id = {0};
//structEnd()
    return _event_id;
}

//structStart()
ces_token es_token_t_convert(es_token_t * _Nonnull token) {
    ces_token _token = {0};
	//onCustom(_:_:_:)
	_token.size = token->size;
	//ocSizeOfArray(_:_:_:count:)
//structEnd()
    return _token;
}

//structStart()
ces_string_token es_string_token_t_convert(es_string_token_t * _Nonnull string_token) {
    ces_string_token _string_token = {0};
	//onCustom(_:_:_:)
	_string_token.length = string_token->length;
	//ocSizeOfArray(_:_:_:count:)
//structEnd()
    return _string_token;
}

//structStart()
ces_muted_path es_muted_path_t_convert(es_muted_path_t * _Nonnull muted_path) {
    ces_muted_path _muted_path = {0};
	//onCustom(_:_:_:)
	_muted_path.type = muted_path->type;
	//onCustom(_:_:_:)
	_muted_path.event_count = muted_path->event_count;
	//ocSizeOfArray(_:_:_:count:)
	//onCustomStruct(_:_:_:)
	_muted_path.path = es_string_token_t_convert(&(muted_path->path));
//structEnd()
    return _muted_path;
}

//structStart()
ces_muted_paths es_muted_paths_t_convert(es_muted_paths_t * _Nonnull muted_paths) {
    ces_muted_paths _muted_paths = {0};
	//onCustom(_:_:_:)
	_muted_paths.count = muted_paths->count;
	//ocSizeOfArray(_:_:_:count:)
	_muted_paths.paths = muted_paths->paths;
//structEnd()
    return _muted_paths;
}

//structStart()
ces_muted_process es_muted_process_t_convert(es_muted_process_t * _Nonnull muted_process) {
    ces_muted_process _muted_process = {0};
	//onCustomStruct(_:_:_:)
	_muted_process.audit_token = audit_token_t_convert(&(muted_process->audit_token));
	//onCustom(_:_:_:)
	_muted_process.event_count = muted_process->event_count;
	//ocSizeOfArray(_:_:_:count:)
//structEnd()
    return _muted_process;
}

//structStart()
ces_muted_processes es_muted_processes_t_convert(es_muted_processes_t * _Nonnull muted_processes) {
    ces_muted_processes _muted_processes = {0};
	//onCustom(_:_:_:)
	_muted_processes.count = muted_processes->count;
	//ocSizeOfArray(_:_:_:count:)
	_muted_processes.processes = muted_processes->processes;
//structEnd()
    return _muted_processes;
}

//structStart()
ces_ntsid ntsid_t_convert(ntsid_t * _Nonnull ntsid) {
    ces_ntsid _ntsid = {0};
	//onCustom(_:_:_:)
	_ntsid.sid_kind = ntsid->sid_kind;
	//onCustom(_:_:_:)
	_ntsid.sid_authcount = ntsid->sid_authcount;
	//onCustom(_:_:_:)
	memcpy(_ntsid.sid_authority,ntsid->sid_authority,sizeof(u_int8_t) * 6);
	//onCustom(_:_:_:)
	memcpy(_ntsid.sid_authorities,ntsid->sid_authorities,sizeof(u_int32_t) * 16);
//structEnd()
    return _ntsid;
}

//structStart()
ces_file es_file_t_convert(es_file_t * _Nonnull file) {
    ces_file _file = {0};
	//onCustomStruct(_:_:_:)
	_file.path = es_string_token_t_convert(&(file->path));
	//onCustom(_:_:_:)
	_file.path_truncated = file->path_truncated;
	//onCustom(_:_:_:)
	_file.stat = file->stat;
//structEnd()
    return _file;
}

//structStart()
ces_thread es_thread_t_convert(es_thread_t * _Nonnull thread) {
    ces_thread _thread = {0};
	//onCustom(_:_:_:)
	_thread.thread_id = thread->thread_id;
//structEnd()
    return _thread;
}

//structStart()
ces_process es_process_t_convert(es_process_t * _Nonnull process) {
    ces_process _process = {0};
	//onCustomStruct(_:_:_:)
	_process.audit_token = audit_token_t_convert(&(process->audit_token));
	//onCustom(_:_:_:)
	_process.ppid = process->ppid;
	//onCustom(_:_:_:)
	_process.original_ppid = process->original_ppid;
	//onCustom(_:_:_:)
	_process.group_id = process->group_id;
	//onCustom(_:_:_:)
	_process.session_id = process->session_id;
	//onCustom(_:_:_:)
	_process.codesigning_flags = process->codesigning_flags;
	//onCustom(_:_:_:)
	_process.is_platform_binary = process->is_platform_binary;
	//onCustom(_:_:_:)
	_process.is_es_client = process->is_es_client;
	//onCustom(_:_:_:)
	memcpy(_process.cdhash,process->cdhash,sizeof(uint8_t) * 20);
	//onCustomStruct(_:_:_:)
	_process.signing_id = es_string_token_t_convert(&(process->signing_id));
	//onCustomStruct(_:_:_:)
	_process.team_id = es_string_token_t_convert(&(process->team_id));
	//onCustomStructPointer(_:_:_:ext:)
	_process.executable = es_file_t_convert(process->executable);
	//onCustomStructPointer(_:_:_:ext:)
	_process.tty = es_file_t_convert(process->tty);
	//onCustom(_:_:_:)
	_process.start_time = process->start_time;
	//onCustomStruct(_:_:_:)
	_process.responsible_audit_token = audit_token_t_convert(&(process->responsible_audit_token));
	//onCustomStruct(_:_:_:)
	_process.parent_audit_token = audit_token_t_convert(&(process->parent_audit_token));
//structEnd()
    return _process;
}

//structStart()
ces_thread_state es_thread_state_t_convert(es_thread_state_t * _Nonnull thread_state) {
    ces_thread_state _thread_state = {0};
	//onCustom(_:_:_:)
	_thread_state.flavor = thread_state->flavor;
	//onCustomStruct(_:_:_:)
	_thread_state.state = es_token_t_convert(&(thread_state->state));
//structEnd()
    return _thread_state;
}

//structStart()
ces_fd es_fd_t_convert(es_fd_t * _Nonnull fd) {
    ces_fd _fd = {0};
	//onCustom(_:_:_:)
	_fd.fd = fd->fd;
	//onCustom(_:_:_:)
	_fd.fdtype = fd->fdtype;
//structEnd()
    return _fd;
}

//structStart()
ces_btm_launch_item es_btm_launch_item_t_convert(es_btm_launch_item_t * _Nonnull btm_launch_item) {
    ces_btm_launch_item _btm_launch_item = {0};
	//onCustom(_:_:_:)
	_btm_launch_item.item_type = btm_launch_item->item_type;
	//onCustom(_:_:_:)
	_btm_launch_item.legacy = btm_launch_item->legacy;
	//onCustom(_:_:_:)
	_btm_launch_item.managed = btm_launch_item->managed;
	//onCustom(_:_:_:)
	_btm_launch_item.uid = btm_launch_item->uid;
	//onCustomStruct(_:_:_:)
	_btm_launch_item.item_url = es_string_token_t_convert(&(btm_launch_item->item_url));
	//onCustomStruct(_:_:_:)
	_btm_launch_item.app_url = es_string_token_t_convert(&(btm_launch_item->app_url));
//structEnd()
    return _btm_launch_item;
}

//structStart()
ces_event_exec es_event_exec_t_convert(es_event_exec_t * _Nonnull event_exec) {
    ces_event_exec _event_exec = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_exec.target = es_process_t_convert(event_exec->target);
//structEnd()
    return _event_exec;
}

//structStart()
ces_event_open es_event_open_t_convert(es_event_open_t * _Nonnull event_open) {
    ces_event_open _event_open = {0};
	//onCustom(_:_:_:)
	_event_open.fflag = event_open->fflag;
	//onCustomStructPointer(_:_:_:ext:)
	_event_open.file = es_file_t_convert(event_open->file);
//structEnd()
    return _event_open;
}

//structStart()
ces_event_kextload es_event_kextload_t_convert(es_event_kextload_t * _Nonnull event_kextload) {
    ces_event_kextload _event_kextload = {0};
	//onCustomStruct(_:_:_:)
	_event_kextload.identifier = es_string_token_t_convert(&(event_kextload->identifier));
//structEnd()
    return _event_kextload;
}

//structStart()
ces_event_kextunload es_event_kextunload_t_convert(es_event_kextunload_t * _Nonnull event_kextunload) {
    ces_event_kextunload _event_kextunload = {0};
	//onCustomStruct(_:_:_:)
	_event_kextunload.identifier = es_string_token_t_convert(&(event_kextunload->identifier));
//structEnd()
    return _event_kextunload;
}

//structStart()
ces_event_unlink es_event_unlink_t_convert(es_event_unlink_t * _Nonnull event_unlink) {
    ces_event_unlink _event_unlink = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_unlink.target = es_file_t_convert(event_unlink->target);
	//onCustomStructPointer(_:_:_:ext:)
	_event_unlink.parent_dir = es_file_t_convert(event_unlink->parent_dir);
//structEnd()
    return _event_unlink;
}

//structStart()
ces_event_mmap es_event_mmap_t_convert(es_event_mmap_t * _Nonnull event_mmap) {
    ces_event_mmap _event_mmap = {0};
	//onCustom(_:_:_:)
	_event_mmap.protection = event_mmap->protection;
	//onCustom(_:_:_:)
	_event_mmap.max_protection = event_mmap->max_protection;
	//onCustom(_:_:_:)
	_event_mmap.flags = event_mmap->flags;
	//onCustom(_:_:_:)
	_event_mmap.file_pos = event_mmap->file_pos;
	//onCustomStructPointer(_:_:_:ext:)
	_event_mmap.source = es_file_t_convert(event_mmap->source);
//structEnd()
    return _event_mmap;
}

//structStart()
ces_event_link es_event_link_t_convert(es_event_link_t * _Nonnull event_link) {
    ces_event_link _event_link = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_link.source = es_file_t_convert(event_link->source);
	//onCustomStructPointer(_:_:_:ext:)
	_event_link.target_dir = es_file_t_convert(event_link->target_dir);
	//onCustomStruct(_:_:_:)
	_event_link.target_filename = es_string_token_t_convert(&(event_link->target_filename));
//structEnd()
    return _event_link;
}

//structStart()
ces_event_mount es_event_mount_t_convert(es_event_mount_t * _Nonnull event_mount) {
    ces_event_mount _event_mount = {0};
	//onCustomPointer(_:_:_:)
	_event_mount.statfs = *event_mount->statfs;
//structEnd()
    return _event_mount;
}

//structStart()
ces_event_unmount es_event_unmount_t_convert(es_event_unmount_t * _Nonnull event_unmount) {
    ces_event_unmount _event_unmount = {0};
	//onCustomPointer(_:_:_:)
	_event_unmount.statfs = *event_unmount->statfs;
//structEnd()
    return _event_unmount;
}

//structStart()
ces_event_remount es_event_remount_t_convert(es_event_remount_t * _Nonnull event_remount) {
    ces_event_remount _event_remount = {0};
	//onCustomPointer(_:_:_:)
	_event_remount.statfs = *event_remount->statfs;
//structEnd()
    return _event_remount;
}

//structStart()
ces_event_fork es_event_fork_t_convert(es_event_fork_t * _Nonnull event_fork) {
    ces_event_fork _event_fork = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_fork.child = es_process_t_convert(event_fork->child);
//structEnd()
    return _event_fork;
}

//structStart()
ces_event_mprotect es_event_mprotect_t_convert(es_event_mprotect_t * _Nonnull event_mprotect) {
    ces_event_mprotect _event_mprotect = {0};
	//onCustom(_:_:_:)
	_event_mprotect.protection = event_mprotect->protection;
	//onCustom(_:_:_:)
	_event_mprotect.address = event_mprotect->address;
	//onCustom(_:_:_:)
	_event_mprotect.size = event_mprotect->size;
//structEnd()
    return _event_mprotect;
}

//structStart()
ces_event_signal es_event_signal_t_convert(es_event_signal_t * _Nonnull event_signal) {
    ces_event_signal _event_signal = {0};
	//onCustom(_:_:_:)
	_event_signal.sig = event_signal->sig;
	//onCustomStructPointer(_:_:_:ext:)
	_event_signal.target = es_process_t_convert(event_signal->target);
//structEnd()
    return _event_signal;
}

//structStart()
ces_event_rename es_event_rename_t_convert(es_event_rename_t * _Nonnull event_rename) {
    ces_event_rename _event_rename = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_rename.source = es_file_t_convert(event_rename->source);
	//onCustom(_:_:_:)
	_event_rename.destination_type = event_rename->destination_type;
//structEnd()
    return _event_rename;
}

//structStart()
ces_event_setextattr es_event_setextattr_t_convert(es_event_setextattr_t * _Nonnull event_setextattr) {
    ces_event_setextattr _event_setextattr = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_setextattr.target = es_file_t_convert(event_setextattr->target);
	//onCustomStruct(_:_:_:)
	_event_setextattr.extattr = es_string_token_t_convert(&(event_setextattr->extattr));
//structEnd()
    return _event_setextattr;
}

//structStart()
ces_event_getextattr es_event_getextattr_t_convert(es_event_getextattr_t * _Nonnull event_getextattr) {
    ces_event_getextattr _event_getextattr = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_getextattr.target = es_file_t_convert(event_getextattr->target);
	//onCustomStruct(_:_:_:)
	_event_getextattr.extattr = es_string_token_t_convert(&(event_getextattr->extattr));
//structEnd()
    return _event_getextattr;
}

//structStart()
ces_event_deleteextattr es_event_deleteextattr_t_convert(es_event_deleteextattr_t * _Nonnull event_deleteextattr) {
    ces_event_deleteextattr _event_deleteextattr = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_deleteextattr.target = es_file_t_convert(event_deleteextattr->target);
	//onCustomStruct(_:_:_:)
	_event_deleteextattr.extattr = es_string_token_t_convert(&(event_deleteextattr->extattr));
//structEnd()
    return _event_deleteextattr;
}

//structStart()
ces_event_setmode es_event_setmode_t_convert(es_event_setmode_t * _Nonnull event_setmode) {
    ces_event_setmode _event_setmode = {0};
	//onCustom(_:_:_:)
	_event_setmode.mode = event_setmode->mode;
	//onCustomStructPointer(_:_:_:ext:)
	_event_setmode.target = es_file_t_convert(event_setmode->target);
//structEnd()
    return _event_setmode;
}

//structStart()
ces_event_setflags es_event_setflags_t_convert(es_event_setflags_t * _Nonnull event_setflags) {
    ces_event_setflags _event_setflags = {0};
	//onCustom(_:_:_:)
	_event_setflags.flags = event_setflags->flags;
	//onCustomStructPointer(_:_:_:ext:)
	_event_setflags.target = es_file_t_convert(event_setflags->target);
//structEnd()
    return _event_setflags;
}

//structStart()
ces_event_setowner es_event_setowner_t_convert(es_event_setowner_t * _Nonnull event_setowner) {
    ces_event_setowner _event_setowner = {0};
	//onCustom(_:_:_:)
	_event_setowner.uid = event_setowner->uid;
	//onCustom(_:_:_:)
	_event_setowner.gid = event_setowner->gid;
	//onCustomStructPointer(_:_:_:ext:)
	_event_setowner.target = es_file_t_convert(event_setowner->target);
//structEnd()
    return _event_setowner;
}

//structStart()
ces_event_close es_event_close_t_convert(es_event_close_t * _Nonnull event_close) {
    ces_event_close _event_close = {0};
	//onCustom(_:_:_:)
	_event_close.modified = event_close->modified;
	//onCustomStructPointer(_:_:_:ext:)
	_event_close.target = es_file_t_convert(event_close->target);
//structEnd()
    return _event_close;
}

//structStart()
ces_event_create es_event_create_t_convert(es_event_create_t * _Nonnull event_create) {
    ces_event_create _event_create = {0};
	//onCustom(_:_:_:)
	_event_create.destination_type = event_create->destination_type;
	//onCustomStructPointer(_:_:_:ext:)
	_event_create_t_destination.existing_file = es_file_t_convert(event_create->destination.existing_file);
	//onCustomStructPointer(_:_:_:ext:)
	.new_pathdir = es_file_t_convert(event_create->destination.new_path.dir);
	//onCustomStruct(_:_:_:)
	_event_create_t_destination_new_path.filename = es_string_token_t_convert(&(event_create->destination.new_path.filename));
	//onCustom(_:_:_:)
	_event_create_t_destination_new_path.mode = event_create->destination.new_path.mode;
//structEnd()
    return _event_create;
}

//structStart()
ces_event_exit es_event_exit_t_convert(es_event_exit_t * _Nonnull event_exit) {
    ces_event_exit _event_exit = {0};
	//onCustom(_:_:_:)
	_event_exit.stat = event_exit->stat;
//structEnd()
    return _event_exit;
}

//structStart()
ces_event_exchangedata es_event_exchangedata_t_convert(es_event_exchangedata_t * _Nonnull event_exchangedata) {
    ces_event_exchangedata _event_exchangedata = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_exchangedata.file1 = es_file_t_convert(event_exchangedata->file1);
	//onCustomStructPointer(_:_:_:ext:)
	_event_exchangedata.file2 = es_file_t_convert(event_exchangedata->file2);
//structEnd()
    return _event_exchangedata;
}

//structStart()
ces_event_write es_event_write_t_convert(es_event_write_t * _Nonnull event_write) {
    ces_event_write _event_write = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_write.target = es_file_t_convert(event_write->target);
//structEnd()
    return _event_write;
}

//structStart()
ces_event_truncate es_event_truncate_t_convert(es_event_truncate_t * _Nonnull event_truncate) {
    ces_event_truncate _event_truncate = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_truncate.target = es_file_t_convert(event_truncate->target);
//structEnd()
    return _event_truncate;
}

//structStart()
ces_event_chdir es_event_chdir_t_convert(es_event_chdir_t * _Nonnull event_chdir) {
    ces_event_chdir _event_chdir = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_chdir.target = es_file_t_convert(event_chdir->target);
//structEnd()
    return _event_chdir;
}

//structStart()
ces_event_stat es_event_stat_t_convert(es_event_stat_t * _Nonnull event_stat) {
    ces_event_stat _event_stat = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_stat.target = es_file_t_convert(event_stat->target);
//structEnd()
    return _event_stat;
}

//structStart()
ces_event_chroot es_event_chroot_t_convert(es_event_chroot_t * _Nonnull event_chroot) {
    ces_event_chroot _event_chroot = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_chroot.target = es_file_t_convert(event_chroot->target);
//structEnd()
    return _event_chroot;
}

//structStart()
ces_event_listextattr es_event_listextattr_t_convert(es_event_listextattr_t * _Nonnull event_listextattr) {
    ces_event_listextattr _event_listextattr = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_listextattr.target = es_file_t_convert(event_listextattr->target);
//structEnd()
    return _event_listextattr;
}

//structStart()
ces_event_iokit_open es_event_iokit_open_t_convert(es_event_iokit_open_t * _Nonnull event_iokit_open) {
    ces_event_iokit_open _event_iokit_open = {0};
	//onCustom(_:_:_:)
	_event_iokit_open.user_client_type = event_iokit_open->user_client_type;
	//onCustomStruct(_:_:_:)
	_event_iokit_open.user_client_class = es_string_token_t_convert(&(event_iokit_open->user_client_class));
//structEnd()
    return _event_iokit_open;
}

//structStart()
ces_event_get_task es_event_get_task_t_convert(es_event_get_task_t * _Nonnull event_get_task) {
    ces_event_get_task _event_get_task = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_get_task.target = es_process_t_convert(event_get_task->target);
	//onCustom(_:_:_:)
	_event_get_task.type = event_get_task->type;
//structEnd()
    return _event_get_task;
}

//structStart()
ces_event_get_task_read es_event_get_task_read_t_convert(es_event_get_task_read_t * _Nonnull event_get_task_read) {
    ces_event_get_task_read _event_get_task_read = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_get_task_read.target = es_process_t_convert(event_get_task_read->target);
	//onCustom(_:_:_:)
	_event_get_task_read.type = event_get_task_read->type;
//structEnd()
    return _event_get_task_read;
}

//structStart()
ces_event_get_task_inspect es_event_get_task_inspect_t_convert(es_event_get_task_inspect_t * _Nonnull event_get_task_inspect) {
    ces_event_get_task_inspect _event_get_task_inspect = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_get_task_inspect.target = es_process_t_convert(event_get_task_inspect->target);
	//onCustom(_:_:_:)
	_event_get_task_inspect.type = event_get_task_inspect->type;
//structEnd()
    return _event_get_task_inspect;
}

//structStart()
ces_event_get_task_name es_event_get_task_name_t_convert(es_event_get_task_name_t * _Nonnull event_get_task_name) {
    ces_event_get_task_name _event_get_task_name = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_get_task_name.target = es_process_t_convert(event_get_task_name->target);
	//onCustom(_:_:_:)
	_event_get_task_name.type = event_get_task_name->type;
//structEnd()
    return _event_get_task_name;
}

//structStart()
ces_event_getattrlist es_event_getattrlist_t_convert(es_event_getattrlist_t * _Nonnull event_getattrlist) {
    ces_event_getattrlist _event_getattrlist = {0};
	//onCustom(_:_:_:)
	_event_getattrlist.attrlist = event_getattrlist->attrlist;
	//onCustomStructPointer(_:_:_:ext:)
	_event_getattrlist.target = es_file_t_convert(event_getattrlist->target);
//structEnd()
    return _event_getattrlist;
}

//structStart()
ces_event_setattrlist es_event_setattrlist_t_convert(es_event_setattrlist_t * _Nonnull event_setattrlist) {
    ces_event_setattrlist _event_setattrlist = {0};
	//onCustom(_:_:_:)
	_event_setattrlist.attrlist = event_setattrlist->attrlist;
	//onCustomStructPointer(_:_:_:ext:)
	_event_setattrlist.target = es_file_t_convert(event_setattrlist->target);
//structEnd()
    return _event_setattrlist;
}

//structStart()
ces_event_file_provider_update es_event_file_provider_update_t_convert(es_event_file_provider_update_t * _Nonnull event_file_provider_update) {
    ces_event_file_provider_update _event_file_provider_update = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_file_provider_update.source = es_file_t_convert(event_file_provider_update->source);
	//onCustomStruct(_:_:_:)
	_event_file_provider_update.target_path = es_string_token_t_convert(&(event_file_provider_update->target_path));
//structEnd()
    return _event_file_provider_update;
}

//structStart()
ces_event_file_provider_materialize es_event_file_provider_materialize_t_convert(es_event_file_provider_materialize_t * _Nonnull event_file_provider_materialize) {
    ces_event_file_provider_materialize _event_file_provider_materialize = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_file_provider_materialize.instigator = es_process_t_convert(event_file_provider_materialize->instigator);
	//onCustomStructPointer(_:_:_:ext:)
	_event_file_provider_materialize.source = es_file_t_convert(event_file_provider_materialize->source);
	//onCustomStructPointer(_:_:_:ext:)
	_event_file_provider_materialize.target = es_file_t_convert(event_file_provider_materialize->target);
//structEnd()
    return _event_file_provider_materialize;
}

//structStart()
ces_event_readlink es_event_readlink_t_convert(es_event_readlink_t * _Nonnull event_readlink) {
    ces_event_readlink _event_readlink = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_readlink.source = es_file_t_convert(event_readlink->source);
//structEnd()
    return _event_readlink;
}

//structStart()
ces_event_lookup es_event_lookup_t_convert(es_event_lookup_t * _Nonnull event_lookup) {
    ces_event_lookup _event_lookup = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_lookup.source_dir = es_file_t_convert(event_lookup->source_dir);
	//onCustomStruct(_:_:_:)
	_event_lookup.relative_target = es_string_token_t_convert(&(event_lookup->relative_target));
//structEnd()
    return _event_lookup;
}

//structStart()
ces_event_access es_event_access_t_convert(es_event_access_t * _Nonnull event_access) {
    ces_event_access _event_access = {0};
	//onCustom(_:_:_:)
	_event_access.mode = event_access->mode;
	//onCustomStructPointer(_:_:_:ext:)
	_event_access.target = es_file_t_convert(event_access->target);
//structEnd()
    return _event_access;
}

//structStart()
ces_event_utimes es_event_utimes_t_convert(es_event_utimes_t * _Nonnull event_utimes) {
    ces_event_utimes _event_utimes = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_utimes.target = es_file_t_convert(event_utimes->target);
	//onCustom(_:_:_:)
	_event_utimes.atime = event_utimes->atime;
	//onCustom(_:_:_:)
	_event_utimes.mtime = event_utimes->mtime;
//structEnd()
    return _event_utimes;
}

//structStart()
ces_event_clone es_event_clone_t_convert(es_event_clone_t * _Nonnull event_clone) {
    ces_event_clone _event_clone = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_clone.source = es_file_t_convert(event_clone->source);
	//onCustomStructPointer(_:_:_:ext:)
	_event_clone.target_dir = es_file_t_convert(event_clone->target_dir);
	//onCustomStruct(_:_:_:)
	_event_clone.target_name = es_string_token_t_convert(&(event_clone->target_name));
//structEnd()
    return _event_clone;
}

//structStart()
ces_event_copyfile es_event_copyfile_t_convert(es_event_copyfile_t * _Nonnull event_copyfile) {
    ces_event_copyfile _event_copyfile = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_copyfile.source = es_file_t_convert(event_copyfile->source);
	//onCustomStructPointer(_:_:_:ext:)
	_event_copyfile.target_file = es_file_t_convert(event_copyfile->target_file);
	//onCustomStructPointer(_:_:_:ext:)
	_event_copyfile.target_dir = es_file_t_convert(event_copyfile->target_dir);
	//onCustomStruct(_:_:_:)
	_event_copyfile.target_name = es_string_token_t_convert(&(event_copyfile->target_name));
	//onCustom(_:_:_:)
	_event_copyfile.mode = event_copyfile->mode;
	//onCustom(_:_:_:)
	_event_copyfile.flags = event_copyfile->flags;
//structEnd()
    return _event_copyfile;
}

//structStart()
ces_event_fcntl es_event_fcntl_t_convert(es_event_fcntl_t * _Nonnull event_fcntl) {
    ces_event_fcntl _event_fcntl = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_fcntl.target = es_file_t_convert(event_fcntl->target);
	//onCustom(_:_:_:)
	_event_fcntl.cmd = event_fcntl->cmd;
//structEnd()
    return _event_fcntl;
}

//structStart()
ces_event_readdir es_event_readdir_t_convert(es_event_readdir_t * _Nonnull event_readdir) {
    ces_event_readdir _event_readdir = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_readdir.target = es_file_t_convert(event_readdir->target);
//structEnd()
    return _event_readdir;
}

//structStart()
ces_event_fsgetpath es_event_fsgetpath_t_convert(es_event_fsgetpath_t * _Nonnull event_fsgetpath) {
    ces_event_fsgetpath _event_fsgetpath = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_fsgetpath.target = es_file_t_convert(event_fsgetpath->target);
//structEnd()
    return _event_fsgetpath;
}

//structStart()
ces_event_settime es_event_settime_t_convert(es_event_settime_t * _Nonnull event_settime) {
    ces_event_settime _event_settime = {0};
//structEnd()
    return _event_settime;
}

//structStart()
ces_event_dup es_event_dup_t_convert(es_event_dup_t * _Nonnull event_dup) {
    ces_event_dup _event_dup = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_dup.target = es_file_t_convert(event_dup->target);
//structEnd()
    return _event_dup;
}

//structStart()
ces_event_uipc_bind es_event_uipc_bind_t_convert(es_event_uipc_bind_t * _Nonnull event_uipc_bind) {
    ces_event_uipc_bind _event_uipc_bind = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_uipc_bind.dir = es_file_t_convert(event_uipc_bind->dir);
	//onCustomStruct(_:_:_:)
	_event_uipc_bind.filename = es_string_token_t_convert(&(event_uipc_bind->filename));
	//onCustom(_:_:_:)
	_event_uipc_bind.mode = event_uipc_bind->mode;
//structEnd()
    return _event_uipc_bind;
}

//structStart()
ces_event_uipc_connect es_event_uipc_connect_t_convert(es_event_uipc_connect_t * _Nonnull event_uipc_connect) {
    ces_event_uipc_connect _event_uipc_connect = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_uipc_connect.file = es_file_t_convert(event_uipc_connect->file);
	//onCustom(_:_:_:)
	_event_uipc_connect.domain = event_uipc_connect->domain;
	//onCustom(_:_:_:)
	_event_uipc_connect.type = event_uipc_connect->type;
	//onCustom(_:_:_:)
	_event_uipc_connect.protocol = event_uipc_connect->protocol;
//structEnd()
    return _event_uipc_connect;
}

//structStart()
ces_event_setacl es_event_setacl_t_convert(es_event_setacl_t * _Nonnull event_setacl) {
    ces_event_setacl _event_setacl = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_setacl.target = es_file_t_convert(event_setacl->target);
	//onCustom(_:_:_:)
	_event_setacl.set_or_clear = event_setacl->set_or_clear;
	//onCustom(_:_:_:)
	_event_setacl_t_acl.set = event_setacl->acl.set;
//structEnd()
    return _event_setacl;
}

//structStart()
ces_event_pty_grant es_event_pty_grant_t_convert(es_event_pty_grant_t * _Nonnull event_pty_grant) {
    ces_event_pty_grant _event_pty_grant = {0};
	//onCustom(_:_:_:)
	_event_pty_grant.dev = event_pty_grant->dev;
//structEnd()
    return _event_pty_grant;
}

//structStart()
ces_event_pty_close es_event_pty_close_t_convert(es_event_pty_close_t * _Nonnull event_pty_close) {
    ces_event_pty_close _event_pty_close = {0};
	//onCustom(_:_:_:)
	_event_pty_close.dev = event_pty_close->dev;
//structEnd()
    return _event_pty_close;
}

//structStart()
ces_event_proc_check es_event_proc_check_t_convert(es_event_proc_check_t * _Nonnull event_proc_check) {
    ces_event_proc_check _event_proc_check = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_proc_check.target = es_process_t_convert(event_proc_check->target);
	//onCustom(_:_:_:)
	_event_proc_check.type = event_proc_check->type;
	//onCustom(_:_:_:)
	_event_proc_check.flavor = event_proc_check->flavor;
//structEnd()
    return _event_proc_check;
}

//structStart()
ces_event_searchfs es_event_searchfs_t_convert(es_event_searchfs_t * _Nonnull event_searchfs) {
    ces_event_searchfs _event_searchfs = {0};
	//onCustom(_:_:_:)
	_event_searchfs.attrlist = event_searchfs->attrlist;
	//onCustomStructPointer(_:_:_:ext:)
	_event_searchfs.target = es_file_t_convert(event_searchfs->target);
//structEnd()
    return _event_searchfs;
}

//structStart()
ces_event_proc_suspend_resume es_event_proc_suspend_resume_t_convert(es_event_proc_suspend_resume_t * _Nonnull event_proc_suspend_resume) {
    ces_event_proc_suspend_resume _event_proc_suspend_resume = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_proc_suspend_resume.target = es_process_t_convert(event_proc_suspend_resume->target);
	//onCustom(_:_:_:)
	_event_proc_suspend_resume.type = event_proc_suspend_resume->type;
//structEnd()
    return _event_proc_suspend_resume;
}

//structStart()
ces_event_cs_invalidated es_event_cs_invalidated_t_convert(es_event_cs_invalidated_t * _Nonnull event_cs_invalidated) {
    ces_event_cs_invalidated _event_cs_invalidated = {0};
//structEnd()
    return _event_cs_invalidated;
}

//structStart()
ces_event_trace es_event_trace_t_convert(es_event_trace_t * _Nonnull event_trace) {
    ces_event_trace _event_trace = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_trace.target = es_process_t_convert(event_trace->target);
//structEnd()
    return _event_trace;
}

//structStart()
ces_event_remote_thread_create es_event_remote_thread_create_t_convert(es_event_remote_thread_create_t * _Nonnull event_remote_thread_create) {
    ces_event_remote_thread_create _event_remote_thread_create = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_remote_thread_create.target = es_process_t_convert(event_remote_thread_create->target);
	//onCustomStructPointer(_:_:_:ext:)
	_event_remote_thread_create.thread_state = es_thread_state_t_convert(event_remote_thread_create->thread_state);
//structEnd()
    return _event_remote_thread_create;
}

//structStart()
ces_event_setuid es_event_setuid_t_convert(es_event_setuid_t * _Nonnull event_setuid) {
    ces_event_setuid _event_setuid = {0};
	//onCustom(_:_:_:)
	_event_setuid.uid = event_setuid->uid;
//structEnd()
    return _event_setuid;
}

//structStart()
ces_event_setgid es_event_setgid_t_convert(es_event_setgid_t * _Nonnull event_setgid) {
    ces_event_setgid _event_setgid = {0};
	//onCustom(_:_:_:)
	_event_setgid.gid = event_setgid->gid;
//structEnd()
    return _event_setgid;
}

//structStart()
ces_event_seteuid es_event_seteuid_t_convert(es_event_seteuid_t * _Nonnull event_seteuid) {
    ces_event_seteuid _event_seteuid = {0};
	//onCustom(_:_:_:)
	_event_seteuid.euid = event_seteuid->euid;
//structEnd()
    return _event_seteuid;
}

//structStart()
ces_event_setegid es_event_setegid_t_convert(es_event_setegid_t * _Nonnull event_setegid) {
    ces_event_setegid _event_setegid = {0};
	//onCustom(_:_:_:)
	_event_setegid.egid = event_setegid->egid;
//structEnd()
    return _event_setegid;
}

//structStart()
ces_event_setreuid es_event_setreuid_t_convert(es_event_setreuid_t * _Nonnull event_setreuid) {
    ces_event_setreuid _event_setreuid = {0};
	//onCustom(_:_:_:)
	_event_setreuid.ruid = event_setreuid->ruid;
	//onCustom(_:_:_:)
	_event_setreuid.euid = event_setreuid->euid;
//structEnd()
    return _event_setreuid;
}

//structStart()
ces_event_setregid es_event_setregid_t_convert(es_event_setregid_t * _Nonnull event_setregid) {
    ces_event_setregid _event_setregid = {0};
	//onCustom(_:_:_:)
	_event_setregid.rgid = event_setregid->rgid;
	//onCustom(_:_:_:)
	_event_setregid.egid = event_setregid->egid;
//structEnd()
    return _event_setregid;
}

//structStart()
ces_event_authentication_od es_event_authentication_od_t_convert(es_event_authentication_od_t * _Nonnull event_authentication_od) {
    ces_event_authentication_od _event_authentication_od = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_authentication_od.instigator = es_process_t_convert(event_authentication_od->instigator);
	//onCustomStruct(_:_:_:)
	_event_authentication_od.record_type = es_string_token_t_convert(&(event_authentication_od->record_type));
	//onCustomStruct(_:_:_:)
	_event_authentication_od.record_name = es_string_token_t_convert(&(event_authentication_od->record_name));
	//onCustomStruct(_:_:_:)
	_event_authentication_od.node_name = es_string_token_t_convert(&(event_authentication_od->node_name));
	//onCustomStruct(_:_:_:)
	_event_authentication_od.db_path = es_string_token_t_convert(&(event_authentication_od->db_path));
//structEnd()
    return _event_authentication_od;
}

//structStart()
ces_event_authentication_touchid es_event_authentication_touchid_t_convert(es_event_authentication_touchid_t * _Nonnull event_authentication_touchid) {
    ces_event_authentication_touchid _event_authentication_touchid = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_authentication_touchid.instigator = es_process_t_convert(event_authentication_touchid->instigator);
	//onCustom(_:_:_:)
	_event_authentication_touchid.touchid_mode = event_authentication_touchid->touchid_mode;
	//onCustom(_:_:_:)
	_event_authentication_touchid.has_uid = event_authentication_touchid->has_uid;
	//onCustom(_:_:_:)
	_event_authentication_touchid_t_uid.uid = event_authentication_touchid->uid.uid;
//structEnd()
    return _event_authentication_touchid;
}

//structStart()
ces_event_authentication_token es_event_authentication_token_t_convert(es_event_authentication_token_t * _Nonnull event_authentication_token) {
    ces_event_authentication_token _event_authentication_token = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_authentication_token.instigator = es_process_t_convert(event_authentication_token->instigator);
	//onCustomStruct(_:_:_:)
	_event_authentication_token.pubkey_hash = es_string_token_t_convert(&(event_authentication_token->pubkey_hash));
	//onCustomStruct(_:_:_:)
	_event_authentication_token.token_id = es_string_token_t_convert(&(event_authentication_token->token_id));
	//onCustomStruct(_:_:_:)
	_event_authentication_token.kerberos_principal = es_string_token_t_convert(&(event_authentication_token->kerberos_principal));
//structEnd()
    return _event_authentication_token;
}

//structStart()
ces_event_authentication_auto_unlock es_event_authentication_auto_unlock_t_convert(es_event_authentication_auto_unlock_t * _Nonnull event_authentication_auto_unlock) {
    ces_event_authentication_auto_unlock _event_authentication_auto_unlock = {0};
	//onCustomStruct(_:_:_:)
	_event_authentication_auto_unlock.username = es_string_token_t_convert(&(event_authentication_auto_unlock->username));
	//onCustom(_:_:_:)
	_event_authentication_auto_unlock.type = event_authentication_auto_unlock->type;
//structEnd()
    return _event_authentication_auto_unlock;
}

//structStart()
ces_event_authentication es_event_authentication_t_convert(es_event_authentication_t * _Nonnull event_authentication) {
    ces_event_authentication _event_authentication = {0};
	//onCustom(_:_:_:)
	_event_authentication.success = event_authentication->success;
	//onCustom(_:_:_:)
	_event_authentication.type = event_authentication->type;
//structEnd()
    return _event_authentication;
}

//structStart()
ces_event_xp_malware_detected es_event_xp_malware_detected_t_convert(es_event_xp_malware_detected_t * _Nonnull event_xp_malware_detected) {
    ces_event_xp_malware_detected _event_xp_malware_detected = {0};
	//onCustomStruct(_:_:_:)
	_event_xp_malware_detected.signature_version = es_string_token_t_convert(&(event_xp_malware_detected->signature_version));
	//onCustomStruct(_:_:_:)
	_event_xp_malware_detected.malware_identifier = es_string_token_t_convert(&(event_xp_malware_detected->malware_identifier));
	//onCustomStruct(_:_:_:)
	_event_xp_malware_detected.incident_identifier = es_string_token_t_convert(&(event_xp_malware_detected->incident_identifier));
	//onCustomStruct(_:_:_:)
	_event_xp_malware_detected.detected_path = es_string_token_t_convert(&(event_xp_malware_detected->detected_path));
//structEnd()
    return _event_xp_malware_detected;
}

//structStart()
ces_event_xp_malware_remediated es_event_xp_malware_remediated_t_convert(es_event_xp_malware_remediated_t * _Nonnull event_xp_malware_remediated) {
    ces_event_xp_malware_remediated _event_xp_malware_remediated = {0};
	//onCustomStruct(_:_:_:)
	_event_xp_malware_remediated.signature_version = es_string_token_t_convert(&(event_xp_malware_remediated->signature_version));
	//onCustomStruct(_:_:_:)
	_event_xp_malware_remediated.malware_identifier = es_string_token_t_convert(&(event_xp_malware_remediated->malware_identifier));
	//onCustomStruct(_:_:_:)
	_event_xp_malware_remediated.incident_identifier = es_string_token_t_convert(&(event_xp_malware_remediated->incident_identifier));
	//onCustomStruct(_:_:_:)
	_event_xp_malware_remediated.action_type = es_string_token_t_convert(&(event_xp_malware_remediated->action_type));
	//onCustom(_:_:_:)
	_event_xp_malware_remediated.success = event_xp_malware_remediated->success;
	//onCustomStruct(_:_:_:)
	_event_xp_malware_remediated.result_description = es_string_token_t_convert(&(event_xp_malware_remediated->result_description));
	//onCustomStruct(_:_:_:)
	_event_xp_malware_remediated.remediated_path = es_string_token_t_convert(&(event_xp_malware_remediated->remediated_path));
	//onCustomStructPointer(_:_:_:ext:)
	_event_xp_malware_remediated.remediated_process_audit_token = audit_token_t_convert(event_xp_malware_remediated->remediated_process_audit_token);
//structEnd()
    return _event_xp_malware_remediated;
}

//structStart()
ces_event_lw_session_login es_event_lw_session_login_t_convert(es_event_lw_session_login_t * _Nonnull event_lw_session_login) {
    ces_event_lw_session_login _event_lw_session_login = {0};
	//onCustomStruct(_:_:_:)
	_event_lw_session_login.username = es_string_token_t_convert(&(event_lw_session_login->username));
	//onCustom(_:_:_:)
	_event_lw_session_login.graphical_session_id = event_lw_session_login->graphical_session_id;
//structEnd()
    return _event_lw_session_login;
}

//structStart()
ces_event_lw_session_logout es_event_lw_session_logout_t_convert(es_event_lw_session_logout_t * _Nonnull event_lw_session_logout) {
    ces_event_lw_session_logout _event_lw_session_logout = {0};
	//onCustomStruct(_:_:_:)
	_event_lw_session_logout.username = es_string_token_t_convert(&(event_lw_session_logout->username));
	//onCustom(_:_:_:)
	_event_lw_session_logout.graphical_session_id = event_lw_session_logout->graphical_session_id;
//structEnd()
    return _event_lw_session_logout;
}

//structStart()
ces_event_lw_session_lock es_event_lw_session_lock_t_convert(es_event_lw_session_lock_t * _Nonnull event_lw_session_lock) {
    ces_event_lw_session_lock _event_lw_session_lock = {0};
	//onCustomStruct(_:_:_:)
	_event_lw_session_lock.username = es_string_token_t_convert(&(event_lw_session_lock->username));
	//onCustom(_:_:_:)
	_event_lw_session_lock.graphical_session_id = event_lw_session_lock->graphical_session_id;
//structEnd()
    return _event_lw_session_lock;
}

//structStart()
ces_event_lw_session_unlock es_event_lw_session_unlock_t_convert(es_event_lw_session_unlock_t * _Nonnull event_lw_session_unlock) {
    ces_event_lw_session_unlock _event_lw_session_unlock = {0};
	//onCustomStruct(_:_:_:)
	_event_lw_session_unlock.username = es_string_token_t_convert(&(event_lw_session_unlock->username));
	//onCustom(_:_:_:)
	_event_lw_session_unlock.graphical_session_id = event_lw_session_unlock->graphical_session_id;
//structEnd()
    return _event_lw_session_unlock;
}

//structStart()
ces_event_screensharing_attach es_event_screensharing_attach_t_convert(es_event_screensharing_attach_t * _Nonnull event_screensharing_attach) {
    ces_event_screensharing_attach _event_screensharing_attach = {0};
	//onCustom(_:_:_:)
	_event_screensharing_attach.success = event_screensharing_attach->success;
	//onCustom(_:_:_:)
	_event_screensharing_attach.source_address_type = event_screensharing_attach->source_address_type;
	//onCustomStruct(_:_:_:)
	_event_screensharing_attach.source_address = es_string_token_t_convert(&(event_screensharing_attach->source_address));
	//onCustomStruct(_:_:_:)
	_event_screensharing_attach.viewer_appleid = es_string_token_t_convert(&(event_screensharing_attach->viewer_appleid));
	//onCustomStruct(_:_:_:)
	_event_screensharing_attach.authentication_type = es_string_token_t_convert(&(event_screensharing_attach->authentication_type));
	//onCustomStruct(_:_:_:)
	_event_screensharing_attach.authentication_username = es_string_token_t_convert(&(event_screensharing_attach->authentication_username));
	//onCustomStruct(_:_:_:)
	_event_screensharing_attach.session_username = es_string_token_t_convert(&(event_screensharing_attach->session_username));
	//onCustom(_:_:_:)
	_event_screensharing_attach.existing_session = event_screensharing_attach->existing_session;
	//onCustom(_:_:_:)
	_event_screensharing_attach.graphical_session_id = event_screensharing_attach->graphical_session_id;
//structEnd()
    return _event_screensharing_attach;
}

//structStart()
ces_event_screensharing_detach es_event_screensharing_detach_t_convert(es_event_screensharing_detach_t * _Nonnull event_screensharing_detach) {
    ces_event_screensharing_detach _event_screensharing_detach = {0};
	//onCustom(_:_:_:)
	_event_screensharing_detach.source_address_type = event_screensharing_detach->source_address_type;
	//onCustomStruct(_:_:_:)
	_event_screensharing_detach.source_address = es_string_token_t_convert(&(event_screensharing_detach->source_address));
	//onCustomStruct(_:_:_:)
	_event_screensharing_detach.viewer_appleid = es_string_token_t_convert(&(event_screensharing_detach->viewer_appleid));
	//onCustom(_:_:_:)
	_event_screensharing_detach.graphical_session_id = event_screensharing_detach->graphical_session_id;
//structEnd()
    return _event_screensharing_detach;
}

//structStart()
ces_event_openssh_login es_event_openssh_login_t_convert(es_event_openssh_login_t * _Nonnull event_openssh_login) {
    ces_event_openssh_login _event_openssh_login = {0};
	//onCustom(_:_:_:)
	_event_openssh_login.success = event_openssh_login->success;
	//onCustom(_:_:_:)
	_event_openssh_login.result_type = event_openssh_login->result_type;
	//onCustom(_:_:_:)
	_event_openssh_login.source_address_type = event_openssh_login->source_address_type;
	//onCustomStruct(_:_:_:)
	_event_openssh_login.source_address = es_string_token_t_convert(&(event_openssh_login->source_address));
	//onCustomStruct(_:_:_:)
	_event_openssh_login.username = es_string_token_t_convert(&(event_openssh_login->username));
	//onCustom(_:_:_:)
	_event_openssh_login.has_uid = event_openssh_login->has_uid;
	//onCustom(_:_:_:)
	_event_openssh_login_t_uid.uid = event_openssh_login->uid.uid;
//structEnd()
    return _event_openssh_login;
}

//structStart()
ces_event_openssh_logout es_event_openssh_logout_t_convert(es_event_openssh_logout_t * _Nonnull event_openssh_logout) {
    ces_event_openssh_logout _event_openssh_logout = {0};
	//onCustom(_:_:_:)
	_event_openssh_logout.source_address_type = event_openssh_logout->source_address_type;
	//onCustomStruct(_:_:_:)
	_event_openssh_logout.source_address = es_string_token_t_convert(&(event_openssh_logout->source_address));
	//onCustomStruct(_:_:_:)
	_event_openssh_logout.username = es_string_token_t_convert(&(event_openssh_logout->username));
	//onCustom(_:_:_:)
	_event_openssh_logout.uid = event_openssh_logout->uid;
//structEnd()
    return _event_openssh_logout;
}

//structStart()
ces_event_login_login es_event_login_login_t_convert(es_event_login_login_t * _Nonnull event_login_login) {
    ces_event_login_login _event_login_login = {0};
	//onCustom(_:_:_:)
	_event_login_login.success = event_login_login->success;
	//onCustomStruct(_:_:_:)
	_event_login_login.failure_message = es_string_token_t_convert(&(event_login_login->failure_message));
	//onCustomStruct(_:_:_:)
	_event_login_login.username = es_string_token_t_convert(&(event_login_login->username));
	//onCustom(_:_:_:)
	_event_login_login.has_uid = event_login_login->has_uid;
	//onCustom(_:_:_:)
	_event_login_login_t_uid.uid = event_login_login->uid.uid;
//structEnd()
    return _event_login_login;
}

//structStart()
ces_event_login_logout es_event_login_logout_t_convert(es_event_login_logout_t * _Nonnull event_login_logout) {
    ces_event_login_logout _event_login_logout = {0};
	//onCustomStruct(_:_:_:)
	_event_login_logout.username = es_string_token_t_convert(&(event_login_logout->username));
	//onCustom(_:_:_:)
	_event_login_logout.uid = event_login_logout->uid;
//structEnd()
    return _event_login_logout;
}

//structStart()
ces_event_btm_launch_item_add es_event_btm_launch_item_add_t_convert(es_event_btm_launch_item_add_t * _Nonnull event_btm_launch_item_add) {
    ces_event_btm_launch_item_add _event_btm_launch_item_add = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_btm_launch_item_add.instigator = es_process_t_convert(event_btm_launch_item_add->instigator);
	//onCustomStructPointer(_:_:_:ext:)
	_event_btm_launch_item_add.app = es_process_t_convert(event_btm_launch_item_add->app);
	//onCustomStructPointer(_:_:_:ext:)
	_event_btm_launch_item_add.item = es_btm_launch_item_t_convert(event_btm_launch_item_add->item);
	//onCustomStruct(_:_:_:)
	_event_btm_launch_item_add.executable_path = es_string_token_t_convert(&(event_btm_launch_item_add->executable_path));
//structEnd()
    return _event_btm_launch_item_add;
}

//structStart()
ces_event_btm_launch_item_remove es_event_btm_launch_item_remove_t_convert(es_event_btm_launch_item_remove_t * _Nonnull event_btm_launch_item_remove) {
    ces_event_btm_launch_item_remove _event_btm_launch_item_remove = {0};
	//onCustomStructPointer(_:_:_:ext:)
	_event_btm_launch_item_remove.instigator = es_process_t_convert(event_btm_launch_item_remove->instigator);
	//onCustomStructPointer(_:_:_:ext:)
	_event_btm_launch_item_remove.app = es_process_t_convert(event_btm_launch_item_remove->app);
	//onCustomStructPointer(_:_:_:ext:)
	_event_btm_launch_item_remove.item = es_btm_launch_item_t_convert(event_btm_launch_item_remove->item);
//structEnd()
    return _event_btm_launch_item_remove;
}

//structStart()
ces_result es_result_t_convert(es_result_t * _Nonnull result) {
    ces_result _result = {0};
	//onCustom(_:_:_:)
	_result.result_type = result->result_type;
//structEnd()
    return _result;
}

//structStart()
ces_message es_message_t_convert(es_message_t * _Nonnull message) {
    ces_message _message = {0};
	//onCustom(_:_:_:)
	_message.version = message->version;
	//onCustom(_:_:_:)
	_message.time = message->time;
	//onCustom(_:_:_:)
	_message.mach_time = message->mach_time;
	//onCustom(_:_:_:)
	_message.deadline = message->deadline;
	//onCustomStructPointer(_:_:_:ext:)
	_message.process = es_process_t_convert(message->process);
	//onCustom(_:_:_:)
	_message.seq_num = message->seq_num;
	//onCustom(_:_:_:)
	_message.action_type = message->action_type;
	//onCustom(_:_:_:)
	_message.event_type = message->event_type;
	//onCustomStructPointer(_:_:_:ext:)
	_message.thread = es_thread_t_convert(message->thread);
	//onCustom(_:_:_:)
	_message.global_seq_num = message->global_seq_num;
//structEnd()
    return _message;
}

