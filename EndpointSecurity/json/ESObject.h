
//
//  ESObject.h
//  json
//
//  Created by msi on 2023/9/9.
//

#import <Foundation/Foundation.h>
#import <EndpointSecurity/EndpointSecurity.h>

NS_ASSUME_NONNULL_BEGIN

//structStart()
@interface ESMachMsgTypeDescriptor : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)natural_t pad1; //natural_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_size_t pad2; //mach_msg_size_t
//onCustom(_:_:_:)
@property(nonatomic, assign)unsigned int pad3; //unsigned int
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//structEnd()
@end

//structStart()
@interface ESMachMsgPortDescriptor : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_t name; //mach_port_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_size_t pad1; //mach_msg_size_t
//onCustom(_:_:_:)
@property(nonatomic, assign)unsigned int pad2; //unsigned int
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_type_name_t disposition; //mach_msg_type_name_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//structEnd()
@end

//structStart()
@interface ESMachMsgOolDescriptor32 : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uint32_t address; //uint32_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_size_t size; //mach_msg_size_t
//onCustom(_:_:_:)
@property(nonatomic, assign)boolean_t deallocate; //boolean_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_copy_options_t copy; //mach_msg_copy_options_t
//onCustom(_:_:_:)
@property(nonatomic, assign)unsigned int pad1; //unsigned int
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//structEnd()
@end

//structStart()
@interface ESMachMsgOolDescriptor64 : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uint64_t address; //uint64_t
//onCustom(_:_:_:)
@property(nonatomic, assign)boolean_t deallocate; //boolean_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_copy_options_t copy; //mach_msg_copy_options_t
//onCustom(_:_:_:)
@property(nonatomic, assign)unsigned int pad1; //unsigned int
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_size_t size; //mach_msg_size_t
//structEnd()
@end

//structStart()
@interface ESMachMsgOolDescriptor : NSObject
//onCustomPointer(_:_:_:)
//onCustom(_:_:_:)
@property(nonatomic, assign)boolean_t deallocate; //boolean_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_copy_options_t copy; //mach_msg_copy_options_t
//onCustom(_:_:_:)
@property(nonatomic, assign)unsigned int pad1; //unsigned int
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_size_t size; //mach_msg_size_t
//structEnd()
@end

//structStart()
@interface ESMachMsgOolPortsDescriptor32 : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uint32_t address; //uint32_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_size_t count; //mach_msg_size_t
//onCustom(_:_:_:)
@property(nonatomic, assign)boolean_t deallocate; //boolean_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_copy_options_t copy; //mach_msg_copy_options_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_type_name_t disposition; //mach_msg_type_name_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//structEnd()
@end

//structStart()
@interface ESMachMsgOolPortsDescriptor64 : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uint64_t address; //uint64_t
//onCustom(_:_:_:)
@property(nonatomic, assign)boolean_t deallocate; //boolean_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_copy_options_t copy; //mach_msg_copy_options_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_type_name_t disposition; //mach_msg_type_name_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_size_t count; //mach_msg_size_t
//structEnd()
@end

//structStart()
@interface ESMachMsgOolPortsDescriptor : NSObject
//onCustomPointer(_:_:_:)
//onCustom(_:_:_:)
@property(nonatomic, assign)boolean_t deallocate; //boolean_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_copy_options_t copy; //mach_msg_copy_options_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_type_name_t disposition; //mach_msg_type_name_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_size_t count; //mach_msg_size_t
//structEnd()
@end

//structStart()
@interface ESMachMsgGuardedPortDescriptor32 : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uint32_t context; //uint32_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_name_t name; //mach_port_name_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_guard_flags_t flags; //mach_msg_guard_flags_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_type_name_t disposition; //mach_msg_type_name_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//structEnd()
@end

//structStart()
@interface ESMachMsgGuardedPortDescriptor64 : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uint64_t context; //uint64_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_guard_flags_t flags; //mach_msg_guard_flags_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_type_name_t disposition; //mach_msg_type_name_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_name_t name; //mach_port_name_t
//structEnd()
@end

//structStart()
@interface ESMachMsgGuardedPortDescriptor : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_context_t context; //mach_port_context_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_guard_flags_t flags; //mach_msg_guard_flags_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_type_name_t disposition; //mach_msg_type_name_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_descriptor_type_t type; //mach_msg_descriptor_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_name_t name; //mach_port_name_t
//structEnd()
@end

//structStart()
@interface ESMachMsgBody : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_size_t msgh_descriptor_count; //mach_msg_size_t
//structEnd()
@end

//structStart()
@interface ESMachMsgHeader : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_bits_t msgh_bits; //mach_msg_bits_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_size_t msgh_size; //mach_msg_size_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_t msgh_remote_port; //mach_port_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_t msgh_local_port; //mach_port_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_name_t msgh_voucher_port; //mach_port_name_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_id_t msgh_id; //mach_msg_id_t
//structEnd()
@end

//structStart()
@interface ESMachMsgBase : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESMachMsgHeader* header;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESMachMsgBody* body;
//structEnd()
@end

//structStart()
@interface ESMachMsgTrailer : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_type_t msgh_trailer_type; //mach_msg_trailer_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_size_t msgh_trailer_size; //mach_msg_trailer_size_t
//structEnd()
@end

//structStart()
@interface ESMachMsgSeqnoTrailer : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_type_t msgh_trailer_type; //mach_msg_trailer_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_size_t msgh_trailer_size; //mach_msg_trailer_size_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_seqno_t msgh_seqno; //mach_port_seqno_t
//structEnd()
@end

//structStart()
@interface ESSecurityToken : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)NSArray* val; //unsigned int[2]
//structEnd()
@end

//structStart()
@interface ESMachMsgSecurityTrailer : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_type_t msgh_trailer_type; //mach_msg_trailer_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_size_t msgh_trailer_size; //mach_msg_trailer_size_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_seqno_t msgh_seqno; //mach_port_seqno_t
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESSecurityToken* msgh_sender;
//structEnd()
@end

//structStart()
@interface ESAuditToken : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)NSArray* val; //unsigned int[8]
//structEnd()
@end

//structStart()
@interface ESMachMsgAuditTrailer : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_type_t msgh_trailer_type; //mach_msg_trailer_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_size_t msgh_trailer_size; //mach_msg_trailer_size_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_seqno_t msgh_seqno; //mach_port_seqno_t
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESSecurityToken* msgh_sender;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESAuditToken* msgh_audit;
//structEnd()
@end

//structStart()
@interface ESMachMsgContextTrailer : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_type_t msgh_trailer_type; //mach_msg_trailer_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_size_t msgh_trailer_size; //mach_msg_trailer_size_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_seqno_t msgh_seqno; //mach_port_seqno_t
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESSecurityToken* msgh_sender;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESAuditToken* msgh_audit;
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_context_t msgh_context; //mach_port_context_t
//structEnd()
@end

//structStart()
@interface ESMsgLabels : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_name_t sender; //mach_port_name_t
//structEnd()
@end

//structStart()
@interface ESMachMsgMacTrailer : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_type_t msgh_trailer_type; //mach_msg_trailer_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_trailer_size_t msgh_trailer_size; //mach_msg_trailer_size_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_seqno_t msgh_seqno; //mach_port_seqno_t
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESSecurityToken* msgh_sender;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESAuditToken* msgh_audit;
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_port_context_t msgh_context; //mach_port_context_t
//onCustom(_:_:_:)
@property(nonatomic, assign)mach_msg_filter_id msgh_ad; //mach_msg_filter_id
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESMsgLabels* msgh_labels;
//structEnd()
@end

//structStart()
@interface ESMachMsgEmptySend : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESMachMsgHeader* header;
//structEnd()
@end

//structStart()
@interface ESMachMsgEmptyRcv : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESMachMsgHeader* header;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESMachMsgTrailer* trailer;
//structEnd()
@end

//structStart()
@interface ESEventId : NSObject
//structEnd()
@end

//structStart()
@interface ESToken : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)size_t size; //size_t
//ocSizeOfArray(_:_:_:count:)
//uint8_t data
@property(nonatomic, strong)NSData* data;
//structEnd()
@end

//structStart()
@interface ESStringToken : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)size_t length; //size_t
//ocSizeOfArray(_:_:_:count:)
//char data
@property(nonatomic, strong)NSData* data;
//structEnd()
@end

//structStart()
@interface ESMutedPath : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)es_mute_path_type_t type; //es_mute_path_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)size_t event_count; //size_t
//ocSizeOfArray(_:_:_:count:)
//es_event_type_t events
@property(nonatomic, strong)NSArray* events;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* path;
//structEnd()
@end

//structStart()
@interface ESMutedPaths : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)size_t count; //size_t
//ocSizeOfArray(_:_:_:count:)
//es_muted_path_t paths
@property(nonatomic, strong)NSArray* paths;
//structEnd()
@end

//structStart()
@interface ESMutedProcess : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESAuditToken* audit_token;
//onCustom(_:_:_:)
@property(nonatomic, assign)size_t event_count; //size_t
//ocSizeOfArray(_:_:_:count:)
//es_event_type_t events
@property(nonatomic, strong)NSArray* events;
//structEnd()
@end

//structStart()
@interface ESMutedProcesses : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)size_t count; //size_t
	//ocSizeOfArray(_:_:_:count:)
//es_muted_process_t processes
	@property(nonatomic, strong)NSArray* processes;
//structEnd()
@end

//structStart()
@interface ESNtsid : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)u_int8_t sid_kind; //u_int8_t
//onCustom(_:_:_:)
@property(nonatomic, assign)u_int8_t sid_authcount; //u_int8_t
//onCustom(_:_:_:)
@property(nonatomic, assign)NSArray* sid_authority; //u_int8_t[6]
//onCustom(_:_:_:)
@property(nonatomic, assign)NSArray* sid_authorities; //u_int32_t[16]
//structEnd()
@end

//structStart()
@interface ESFile : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* path;
//onCustom(_:_:_:)
@property(nonatomic, assign)bool path_truncated; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)struct stat stat; //struct stat
//structEnd()
@end

//structStart()
@interface ESThread : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uint64_t thread_id; //uint64_t
//structEnd()
@end

//structStart()
@interface ESProcess : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESAuditToken* audit_token;
//onCustom(_:_:_:)
@property(nonatomic, assign)pid_t ppid; //pid_t
//onCustom(_:_:_:)
@property(nonatomic, assign)pid_t original_ppid; //pid_t
//onCustom(_:_:_:)
@property(nonatomic, assign)pid_t group_id; //pid_t
//onCustom(_:_:_:)
@property(nonatomic, assign)pid_t session_id; //pid_t
//onCustom(_:_:_:)
@property(nonatomic, assign)uint32_t codesigning_flags; //uint32_t
//onCustom(_:_:_:)
@property(nonatomic, assign)bool is_platform_binary; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)bool is_es_client; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)NSArray* cdhash; //uint8_t[20]
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* signing_id;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* team_id;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* executable;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* tty;
//onCustom(_:_:_:)
@property(nonatomic, assign)struct timeval start_time; //struct timeval
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESAuditToken* responsible_audit_token;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESAuditToken* parent_audit_token;
//structEnd()
@end

//structStart()
@interface ESThreadState : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)int flavor; //int
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESToken* state;
//structEnd()
@end

//structStart()
@interface ESFd : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)int32_t fd; //int32_t
//onCustom(_:_:_:)
@property(nonatomic, assign)uint32_t fdtype; //uint32_t
//structEnd()
@end

//structStart()
@interface ESBtmLaunchItem : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)es_btm_item_type_t item_type; //es_btm_item_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)bool legacy; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)bool managed; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t uid; //uid_t
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* item_url;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* app_url;
//structEnd()
@end

//structStart()
@interface ESEventExec : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* target;
//structEnd()
@end

//structStart()
@interface ESEventOpen : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)int32_t fflag; //int32_t
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* file;
//structEnd()
@end

//structStart()
@interface ESEventKextload : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* identifier;
//structEnd()
@end

//structStart()
@interface ESEventKextunload : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* identifier;
//structEnd()
@end

//structStart()
@interface ESEventUnlink : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* parent_dir;
//structEnd()
@end

//structStart()
@interface ESEventMmap : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)int32_t protection; //int32_t
//onCustom(_:_:_:)
@property(nonatomic, assign)int32_t max_protection; //int32_t
//onCustom(_:_:_:)
@property(nonatomic, assign)int32_t flags; //int32_t
//onCustom(_:_:_:)
@property(nonatomic, assign)uint64_t file_pos; //uint64_t
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* source;
//structEnd()
@end

//structStart()
@interface ESEventLink : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* source;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target_dir;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* target_filename;
//structEnd()
@end

//structStart()
@interface ESEventMount : NSObject
//onCustomPointer(_:_:_:)
@property(nonatomic, assign)struct statfs statfs;
//structEnd()
@end

//structStart()
@interface ESEventUnmount : NSObject
//onCustomPointer(_:_:_:)
@property(nonatomic, assign)struct statfs statfs;
//structEnd()
@end

//structStart()
@interface ESEventRemount : NSObject
//onCustomPointer(_:_:_:)
@property(nonatomic, assign)struct statfs statfs;
//structEnd()
@end

//structStart()
@interface ESEventFork : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* child;
//structEnd()
@end

//structStart()
@interface ESEventMprotect : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)int32_t protection; //int32_t
//onCustom(_:_:_:)
@property(nonatomic, assign)user_addr_t address; //user_addr_t
//onCustom(_:_:_:)
@property(nonatomic, assign)user_size_t size; //user_size_t
//structEnd()
@end

//structStart()
@interface ESEventSignal : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)int sig; //int
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* target;
//structEnd()
@end

//structStart()
@interface ESEventRename : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* source;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_destination_type_t destination_type; //es_destination_type_t
//structEnd()
@end

//structStart()
@interface ESEventSetextattr : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* extattr;
//structEnd()
@end

//structStart()
@interface ESEventGetextattr : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* extattr;
//structEnd()
@end

//structStart()
@interface ESEventDeleteextattr : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* extattr;
//structEnd()
@end

//structStart()
@interface ESEventSetmode : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)mode_t mode; //mode_t
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventSetflags : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uint32_t flags; //uint32_t
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventSetowner : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t uid; //uid_t
//onCustom(_:_:_:)
@property(nonatomic, assign)gid_t gid; //gid_t
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventClose : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)bool modified; //bool
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventCreate : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)es_destination_type_t destination_type; //es_destination_type_t
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* existing_file;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* dir;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* filename;
//onCustom(_:_:_:)
@property(nonatomic, assign)mode_t mode; //mode_t
//structEnd()
@end

//structStart()
@interface ESEventExit : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)int stat; //int
//structEnd()
@end

//structStart()
@interface ESEventExchangedata : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* file1;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* file2;
//structEnd()
@end

//structStart()
@interface ESEventWrite : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventTruncate : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventChdir : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventStat : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventChroot : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventListextattr : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventIokitOpen : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uint32_t user_client_type; //uint32_t
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* user_client_class;
//structEnd()
@end

//structStart()
@interface ESEventGetTask : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* target;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_get_task_type_t type; //es_get_task_type_t
//structEnd()
@end

//structStart()
@interface ESEventGetTaskRead : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* target;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_get_task_type_t type; //es_get_task_type_t
//structEnd()
@end

//structStart()
@interface ESEventGetTaskInspect : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* target;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_get_task_type_t type; //es_get_task_type_t
//structEnd()
@end

//structStart()
@interface ESEventGetTaskName : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* target;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_get_task_type_t type; //es_get_task_type_t
//structEnd()
@end

//structStart()
@interface ESEventGetattrlist : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)struct attrlist attrlist; //struct attrlist
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventSetattrlist : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)struct attrlist attrlist; //struct attrlist
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventFileProviderUpdate : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* source;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* target_path;
//structEnd()
@end

//structStart()
@interface ESEventFileProviderMaterialize : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* instigator;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* source;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventReadlink : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* source;
//structEnd()
@end

//structStart()
@interface ESEventLookup : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* source_dir;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* relative_target;
//structEnd()
@end

//structStart()
@interface ESEventAccess : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)int32_t mode; //int32_t
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventUtimes : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//onCustom(_:_:_:)
@property(nonatomic, assign)struct timespec atime; //struct timespec
//onCustom(_:_:_:)
@property(nonatomic, assign)struct timespec mtime; //struct timespec
//structEnd()
@end

//structStart()
@interface ESEventClone : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* source;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target_dir;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* target_name;
//structEnd()
@end

//structStart()
@interface ESEventCopyfile : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* source;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target_file;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target_dir;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* target_name;
//onCustom(_:_:_:)
@property(nonatomic, assign)mode_t mode; //mode_t
//onCustom(_:_:_:)
@property(nonatomic, assign)int32_t flags; //int32_t
//structEnd()
@end

//structStart()
@interface ESEventFcntl : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//onCustom(_:_:_:)
@property(nonatomic, assign)int32_t cmd; //int32_t
//structEnd()
@end

//structStart()
@interface ESEventReaddir : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventFsgetpath : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventSettime : NSObject
//structEnd()
@end

//structStart()
@interface ESEventDup : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventUipcBind : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* dir;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* filename;
//onCustom(_:_:_:)
@property(nonatomic, assign)mode_t mode; //mode_t
//structEnd()
@end

//structStart()
@interface ESEventUipcConnect : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* file;
//onCustom(_:_:_:)
@property(nonatomic, assign)int domain; //int
//onCustom(_:_:_:)
@property(nonatomic, assign)int type; //int
//onCustom(_:_:_:)
@property(nonatomic, assign)int protocol; //int
//structEnd()
@end

//structStart()
@interface ESEventSetacl : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_set_or_clear_t set_or_clear; //es_set_or_clear_t
//onCustom(_:_:_:)
@property(nonatomic, assign)acl_t _Nonnull set; //acl_t _Nonnull
//structEnd()
@end

//structStart()
@interface ESEventPtyGrant : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)dev_t dev; //dev_t
//structEnd()
@end

//structStart()
@interface ESEventPtyClose : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)dev_t dev; //dev_t
//structEnd()
@end

//structStart()
@interface ESEventProcCheck : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* target;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_proc_check_type_t type; //es_proc_check_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)int flavor; //int
//structEnd()
@end

//structStart()
@interface ESEventSearchfs : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)struct attrlist attrlist; //struct attrlist
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESFile* target;
//structEnd()
@end

//structStart()
@interface ESEventProcSuspendResume : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* target;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_proc_suspend_resume_type_t type; //es_proc_suspend_resume_type_t
//structEnd()
@end

//structStart()
@interface ESEventCsInvalidated : NSObject
//structEnd()
@end

//structStart()
@interface ESEventTrace : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* target;
//structEnd()
@end

//structStart()
@interface ESEventRemoteThreadCreate : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* target;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESThreadState* thread_state;
//structEnd()
@end

//structStart()
@interface ESEventSetuid : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t uid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventSetgid : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t gid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventSeteuid : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t euid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventSetegid : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t egid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventSetreuid : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t ruid; //uid_t
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t euid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventSetregid : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t rgid; //uid_t
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t egid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventAuthenticationOd : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* instigator;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* record_type;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* record_name;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* node_name;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* db_path;
//structEnd()
@end

//structStart()
@interface ESEventAuthenticationTouchid : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* instigator;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_touchid_mode_t touchid_mode; //es_touchid_mode_t
//onCustom(_:_:_:)
@property(nonatomic, assign)bool has_uid; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t uid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventAuthenticationToken : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* instigator;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* pubkey_hash;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* token_id;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* kerberos_principal;
//structEnd()
@end

//structStart()
@interface ESEventAuthenticationAutoUnlock : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* username;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_auto_unlock_type_t type; //es_auto_unlock_type_t
//structEnd()
@end

//structStart()
@interface ESEventAuthentication : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)bool success; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)es_authentication_type_t type; //es_authentication_type_t
//structEnd()
@end

//structStart()
@interface ESEventXpMalwareDetected : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* signature_version;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* malware_identifier;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* incident_identifier;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* detected_path;
//structEnd()
@end

//structStart()
@interface ESEventXpMalwareRemediated : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* signature_version;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* malware_identifier;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* incident_identifier;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* action_type;
//onCustom(_:_:_:)
@property(nonatomic, assign)bool success; //bool
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* result_description;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* remediated_path;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESAuditToken* remediated_process_audit_token;
//structEnd()
@end

//structStart()
@interface ESEventLwSessionLogin : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* username;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_graphical_session_id_t graphical_session_id; //es_graphical_session_id_t
//structEnd()
@end

//structStart()
@interface ESEventLwSessionLogout : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* username;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_graphical_session_id_t graphical_session_id; //es_graphical_session_id_t
//structEnd()
@end

//structStart()
@interface ESEventLwSessionLock : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* username;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_graphical_session_id_t graphical_session_id; //es_graphical_session_id_t
//structEnd()
@end

//structStart()
@interface ESEventLwSessionUnlock : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* username;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_graphical_session_id_t graphical_session_id; //es_graphical_session_id_t
//structEnd()
@end

//structStart()
@interface ESEventScreensharingAttach : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)bool success; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)es_address_type_t source_address_type; //es_address_type_t
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* source_address;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* viewer_appleid;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* authentication_type;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* authentication_username;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* session_username;
//onCustom(_:_:_:)
@property(nonatomic, assign)bool existing_session; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)es_graphical_session_id_t graphical_session_id; //es_graphical_session_id_t
//structEnd()
@end

//structStart()
@interface ESEventScreensharingDetach : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)es_address_type_t source_address_type; //es_address_type_t
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* source_address;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* viewer_appleid;
//onCustom(_:_:_:)
@property(nonatomic, assign)es_graphical_session_id_t graphical_session_id; //es_graphical_session_id_t
//structEnd()
@end

//structStart()
@interface ESEventOpensshLogin : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)bool success; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)es_openssh_login_result_type_t result_type; //es_openssh_login_result_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)es_address_type_t source_address_type; //es_address_type_t
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* source_address;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* username;
//onCustom(_:_:_:)
@property(nonatomic, assign)bool has_uid; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t uid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventOpensshLogout : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)es_address_type_t source_address_type; //es_address_type_t
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* source_address;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* username;
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t uid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventLoginLogin : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)bool success; //bool
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* failure_message;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* username;
//onCustom(_:_:_:)
@property(nonatomic, assign)bool has_uid; //bool
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t uid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventLoginLogout : NSObject
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* username;
//onCustom(_:_:_:)
@property(nonatomic, assign)uid_t uid; //uid_t
//structEnd()
@end

//structStart()
@interface ESEventBtmLaunchItemAdd : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* instigator;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* app;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESBtmLaunchItem* item;
//onCustomStruct(_:_:_:)
@property(nonatomic, strong)ESStringToken* executable_path;
//structEnd()
@end

//structStart()
@interface ESEventBtmLaunchItemRemove : NSObject
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* instigator;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* app;
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESBtmLaunchItem* item;
//structEnd()
@end

//structStart()
@interface ESResult : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)es_result_type_t result_type; //es_result_type_t
//structEnd()
@end

//structStart()
@interface ESMessage : NSObject
//onCustom(_:_:_:)
@property(nonatomic, assign)uint32_t version; //uint32_t
//onCustom(_:_:_:)
@property(nonatomic, assign)struct timespec time; //struct timespec
//onCustom(_:_:_:)
@property(nonatomic, assign)uint64_t mach_time; //uint64_t
//onCustom(_:_:_:)
@property(nonatomic, assign)uint64_t deadline; //uint64_t
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESProcess* process;
//onCustom(_:_:_:)
@property(nonatomic, assign)uint64_t seq_num; //uint64_t
//onCustom(_:_:_:)
@property(nonatomic, assign)es_action_type_t action_type; //es_action_type_t
//onCustom(_:_:_:)
@property(nonatomic, assign)es_event_type_t event_type; //es_event_type_t
//onCustomStructPointer(_:_:_:ext:)
@property(nonatomic, strong)ESThread* thread;
//onCustom(_:_:_:)
@property(nonatomic, assign)uint64_t global_seq_num; //uint64_t
//structEnd()
@end


NS_ASSUME_NONNULL_END
