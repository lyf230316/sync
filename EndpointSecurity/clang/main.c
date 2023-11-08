

typedef signed char __int8_t;

typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;

typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;

typedef int __darwin_ct_rune_t;

typedef union {
 char __mbstate8[128];
 long long _mbstateL;
} __mbstate_t;

typedef __mbstate_t __darwin_mbstate_t;

typedef long int __darwin_ptrdiff_t;

typedef long unsigned int __darwin_size_t;

typedef __builtin_va_list __darwin_va_list;

typedef int __darwin_wchar_t;

typedef __darwin_wchar_t __darwin_rune_t;

typedef int __darwin_wint_t;

typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;

typedef signed char int8_t;

typedef short int16_t;

typedef int int32_t;

typedef long long int64_t;

typedef unsigned char u_int8_t;

typedef unsigned short u_int16_t;

typedef unsigned int u_int32_t;

typedef unsigned long long u_int64_t;

typedef int64_t register_t;

typedef __darwin_intptr_t intptr_t;

typedef unsigned long uintptr_t;

typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;

typedef u_int64_t syscall_arg_t;

typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;

typedef __darwin_ino64_t __darwin_ino_t;

typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];

struct __darwin_pthread_handler_rec {
 void (*__routine)(void *);
 void *__arg;
 struct __darwin_pthread_handler_rec *__next;
};

struct _opaque_pthread_attr_t {
 long __sig;
 char __opaque[56];
};

struct _opaque_pthread_cond_t {
 long __sig;
 char __opaque[40];
};

struct _opaque_pthread_condattr_t {
 long __sig;
 char __opaque[8];
};

struct _opaque_pthread_mutex_t {
 long __sig;
 char __opaque[56];
};

struct _opaque_pthread_mutexattr_t {
 long __sig;
 char __opaque[8];
};

struct _opaque_pthread_once_t {
 long __sig;
 char __opaque[8];
};

struct _opaque_pthread_rwlock_t {
 long __sig;
 char __opaque[192];
};

struct _opaque_pthread_rwlockattr_t {
 long __sig;
 char __opaque[16];
};

struct _opaque_pthread_t {
 long __sig;
 struct __darwin_pthread_handler_rec *__cleanup_stack;
 char __opaque[8176];
};

typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;

static inline
__uint16_t
_OSSwapInt16(
 __uint16_t _data
 )
{
 return (__uint16_t)((_data << 8) | (_data >> 8));
}

static inline
__uint32_t
_OSSwapInt32(
 __uint32_t _data
 )
{

 return __builtin_bswap32(_data);

}

static inline
__uint64_t
_OSSwapInt64(
 __uint64_t _data
 )
{
 return __builtin_bswap64(_data);
}

typedef unsigned char u_char;

typedef unsigned short u_short;

typedef unsigned int u_int;

typedef unsigned long u_long;

typedef unsigned short ushort;

typedef unsigned int uint;

typedef u_int64_t u_quad_t;
typedef int64_t quad_t;
typedef quad_t * qaddr_t;

typedef char * caddr_t;

typedef int32_t daddr_t;

typedef __darwin_dev_t dev_t;

typedef u_int32_t fixpt_t;

typedef __darwin_blkcnt_t blkcnt_t;

typedef __darwin_blksize_t blksize_t;

typedef __darwin_gid_t gid_t;

typedef __uint32_t in_addr_t;

typedef __uint16_t in_port_t;

typedef __darwin_ino_t ino_t;

typedef __darwin_ino64_t ino64_t;

typedef __int32_t key_t;

typedef __darwin_mode_t mode_t;

typedef __uint16_t nlink_t;

typedef __darwin_id_t id_t;

typedef __darwin_pid_t pid_t;

typedef __darwin_off_t off_t;

typedef int32_t segsz_t;
typedef int32_t swblk_t;

typedef __darwin_uid_t uid_t;

typedef __darwin_clock_t clock_t;

typedef __darwin_size_t size_t;

typedef __darwin_ssize_t ssize_t;

typedef __darwin_time_t time_t;

typedef __darwin_useconds_t useconds_t;

typedef __darwin_suseconds_t suseconds_t;

typedef __darwin_size_t rsize_t;

typedef int errno_t;

typedef struct fd_set {
 __int32_t fds_bits[((((1024) % ((sizeof(__int32_t) * 8))) == 0) ? ((1024) / ((sizeof(__int32_t) * 8))) : (((1024) / ((sizeof(__int32_t) * 8))) + 1))];
} fd_set;

int __darwin_check_fd_set_overflow(int, const void *, int) __attribute__((availability(macos,introduced=11.0))) __attribute__((availability(ios,introduced=14.0))) __attribute__((availability(tvos,introduced=14.0))) __attribute__((availability(watchos,introduced=7.0)));

inline __attribute__ ((__always_inline__)) int
__darwin_check_fd_set(int _a, const void *_b)
{

 if ((uintptr_t)&__darwin_check_fd_set_overflow != (uintptr_t) 0) {

  return __darwin_check_fd_set_overflow(_a, _b, 0);

 } else {
  return 1;
 }

}

inline __attribute__ ((__always_inline__)) int
__darwin_fd_isset(int _fd, const struct fd_set *_p)
{
 if (__darwin_check_fd_set(_fd, (const void *) _p)) {
  return _p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] & ((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8))));
 }

 return 0;
}

inline __attribute__ ((__always_inline__)) void
__darwin_fd_set(int _fd, struct fd_set *const _p)
{
 if (__darwin_check_fd_set(_fd, (const void *) _p)) {
  (_p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] |= ((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8)))));
 }
}

inline __attribute__ ((__always_inline__)) void
__darwin_fd_clr(int _fd, struct fd_set *const _p)
{
 if (__darwin_check_fd_set(_fd, (const void *) _p)) {
  (_p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] &= ~((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8)))));
 }
}

typedef __int32_t fd_mask;

typedef __darwin_pthread_attr_t pthread_attr_t;

typedef __darwin_pthread_cond_t pthread_cond_t;

typedef __darwin_pthread_condattr_t pthread_condattr_t;

typedef __darwin_pthread_mutex_t pthread_mutex_t;

typedef __darwin_pthread_mutexattr_t pthread_mutexattr_t;

typedef __darwin_pthread_once_t pthread_once_t;

typedef __darwin_pthread_rwlock_t pthread_rwlock_t;

typedef __darwin_pthread_rwlockattr_t pthread_rwlockattr_t;

typedef __darwin_pthread_t pthread_t;

typedef __darwin_pthread_key_t pthread_key_t;

typedef __darwin_fsblkcnt_t fsblkcnt_t;

typedef __darwin_fsfilcnt_t fsfilcnt_t;

typedef unsigned char uint8_t;

typedef unsigned short uint16_t;

typedef unsigned int uint32_t;

typedef unsigned long long uint64_t;

typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;

typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;

typedef long int intmax_t;

typedef long unsigned int uintmax_t;

typedef void (*os_function_t)(void *_Nullable);

typedef void (^os_block_t)(void);

typedef unsigned int boolean_t;

typedef __darwin_natural_t natural_t;
typedef int integer_t;

typedef uintptr_t vm_offset_t ;

typedef uintptr_t vm_size_t;

typedef uint64_t mach_vm_address_t ;
typedef uint64_t mach_vm_offset_t ;
typedef uint64_t mach_vm_size_t;

typedef uint64_t vm_map_offset_t ;
typedef uint64_t vm_map_address_t ;
typedef uint64_t vm_map_size_t;

typedef mach_vm_address_t mach_port_context_t;

typedef natural_t mach_port_name_t;
typedef mach_port_name_t *mach_port_name_array_t;

typedef __darwin_mach_port_t mach_port_t;

typedef mach_port_t *mach_port_array_t;

typedef natural_t mach_port_right_t;

typedef natural_t mach_port_type_t;
typedef mach_port_type_t *mach_port_type_array_t;

typedef natural_t mach_port_urefs_t;
typedef integer_t mach_port_delta_t;

typedef natural_t mach_port_seqno_t;
typedef natural_t mach_port_mscount_t;
typedef natural_t mach_port_msgcount_t;
typedef natural_t mach_port_rights_t;

typedef unsigned int mach_port_srights_t;

typedef struct mach_port_status {
 mach_port_rights_t mps_pset;
 mach_port_seqno_t mps_seqno;
 mach_port_mscount_t mps_mscount;
 mach_port_msgcount_t mps_qlimit;
 mach_port_msgcount_t mps_msgcount;
 mach_port_rights_t mps_sorights;
 boolean_t mps_srights;
 boolean_t mps_pdrequest;
 boolean_t mps_nsrequest;
 natural_t mps_flags;
} mach_port_status_t;

typedef struct mach_port_limits {
 mach_port_msgcount_t mpl_qlimit;
} mach_port_limits_t;

typedef struct mach_port_info_ext {
 mach_port_status_t mpie_status;
 mach_port_msgcount_t mpie_boost_cnt;
 uint32_t reserved[6];
} mach_port_info_ext_t;

typedef struct mach_port_guard_info {
 uint64_t mpgi_guard;
} mach_port_guard_info_t;

typedef integer_t *mach_port_info_t;

typedef int mach_port_flavor_t;

typedef struct mach_port_qos {
 unsigned int name:1;
 unsigned int prealloc:1;
 boolean_t pad1:30;
 natural_t len;
} mach_port_qos_t;

typedef struct mach_service_port_info {
 char mspi_string_name[255];
 uint8_t mspi_domain_type;
} mach_service_port_info_data_t;

typedef struct mach_service_port_info * mach_service_port_info_t;

typedef struct mach_port_options {
 uint32_t flags;
 mach_port_limits_t mpl;
 union {
  uint64_t reserved[2];
  mach_port_name_t work_interval_port;
  mach_service_port_info_t service_port_info;
  mach_port_name_t service_port_name;
 };
}mach_port_options_t;

typedef mach_port_options_t *mach_port_options_ptr_t;

enum mach_port_guard_exception_codes {
 kGUARD_EXC_DESTROY = 1,
 kGUARD_EXC_MOD_REFS = 2,
 kGUARD_EXC_INVALID_OPTIONS = 3,
 kGUARD_EXC_SET_CONTEXT = 4,
 kGUARD_EXC_THREAD_SET_STATE = 5,
 kGUARD_EXC_UNGUARDED = 1u << 3,
 kGUARD_EXC_INCORRECT_GUARD = 1u << 4,
 kGUARD_EXC_IMMOVABLE = 1u << 5,
 kGUARD_EXC_STRICT_REPLY = 1u << 6,
 kGUARD_EXC_MSG_FILTERED = 1u << 7,

 kGUARD_EXC_INVALID_RIGHT = 1u << 8,
 kGUARD_EXC_INVALID_NAME = 1u << 9,
 kGUARD_EXC_INVALID_VALUE = 1u << 10,
 kGUARD_EXC_INVALID_ARGUMENT = 1u << 11,
 kGUARD_EXC_RIGHT_EXISTS = 1u << 12,
 kGUARD_EXC_KERN_NO_SPACE = 1u << 13,
 kGUARD_EXC_KERN_FAILURE = 1u << 14,
 kGUARD_EXC_KERN_RESOURCE = 1u << 15,
 kGUARD_EXC_SEND_INVALID_REPLY = 1u << 16,
 kGUARD_EXC_SEND_INVALID_VOUCHER = 1u << 17,
 kGUARD_EXC_SEND_INVALID_RIGHT = 1u << 18,
 kGUARD_EXC_RCV_INVALID_NAME = 1u << 19,

 kGUARD_EXC_RCV_GUARDED_DESC = 1u << 20,
 kGUARD_EXC_MOD_REFS_NON_FATAL = 1u << 21,
 kGUARD_EXC_IMMOVABLE_NON_FATAL = 1u << 22,
 kGUARD_EXC_REQUIRE_REPLY_PORT_SEMANTICS = 1u << 23,
 kGUARD_EXC_EXCEPTION_BEHAVIOR_ENFORCE = 1u << 24,
};

typedef int kern_return_t;

typedef natural_t mach_msg_timeout_t;

typedef unsigned int mach_msg_bits_t;
typedef natural_t mach_msg_size_t;
typedef integer_t mach_msg_id_t;

typedef unsigned int mach_msg_priority_t;

typedef unsigned int mach_msg_type_name_t;

typedef unsigned int mach_msg_copy_options_t;

typedef unsigned int mach_msg_guard_flags_t;

typedef unsigned int mach_msg_descriptor_type_t;

typedef struct {
 natural_t pad1;
 mach_msg_size_t pad2;
 unsigned int pad3 : 24;
 mach_msg_descriptor_type_t type : 8;
} mach_msg_type_descriptor_t;

typedef struct {
 mach_port_t name;

 mach_msg_size_t pad1;
 unsigned int pad2 : 16;
 mach_msg_type_name_t disposition : 8;
 mach_msg_descriptor_type_t type : 8;
} mach_msg_port_descriptor_t;

typedef struct {
 uint32_t address;
 mach_msg_size_t size;
 boolean_t deallocate: 8;
 mach_msg_copy_options_t copy: 8;
 unsigned int pad1: 8;
 mach_msg_descriptor_type_t type: 8;
} mach_msg_ool_descriptor32_t;

typedef struct {
 uint64_t address;
 boolean_t deallocate: 8;
 mach_msg_copy_options_t copy: 8;
 unsigned int pad1: 8;
 mach_msg_descriptor_type_t type: 8;
 mach_msg_size_t size;
} mach_msg_ool_descriptor64_t;

typedef struct {
 void* address;

 boolean_t deallocate: 8;
 mach_msg_copy_options_t copy: 8;
 unsigned int pad1: 8;
 mach_msg_descriptor_type_t type: 8;

 mach_msg_size_t size;

} mach_msg_ool_descriptor_t;

typedef struct {
 uint32_t address;
 mach_msg_size_t count;
 boolean_t deallocate: 8;
 mach_msg_copy_options_t copy: 8;
 mach_msg_type_name_t disposition : 8;
 mach_msg_descriptor_type_t type : 8;
} mach_msg_ool_ports_descriptor32_t;

typedef struct {
 uint64_t address;
 boolean_t deallocate: 8;
 mach_msg_copy_options_t copy: 8;
 mach_msg_type_name_t disposition : 8;
 mach_msg_descriptor_type_t type : 8;
 mach_msg_size_t count;
} mach_msg_ool_ports_descriptor64_t;

typedef struct {
 void* address;

 boolean_t deallocate: 8;
 mach_msg_copy_options_t copy: 8;
 mach_msg_type_name_t disposition : 8;
 mach_msg_descriptor_type_t type : 8;

 mach_msg_size_t count;

} mach_msg_ool_ports_descriptor_t;

typedef struct {
 uint32_t context;
 mach_port_name_t name;
 mach_msg_guard_flags_t flags : 16;
 mach_msg_type_name_t disposition : 8;
 mach_msg_descriptor_type_t type : 8;
} mach_msg_guarded_port_descriptor32_t;

typedef struct {
 uint64_t context;
 mach_msg_guard_flags_t flags : 16;
 mach_msg_type_name_t disposition : 8;
 mach_msg_descriptor_type_t type : 8;
 mach_port_name_t name;
} mach_msg_guarded_port_descriptor64_t;

typedef struct {
 mach_port_context_t context;

 mach_msg_guard_flags_t flags : 16;
 mach_msg_type_name_t disposition : 8;
 mach_msg_descriptor_type_t type : 8;

 mach_port_name_t name;

} mach_msg_guarded_port_descriptor_t;

typedef union{
 mach_msg_port_descriptor_t port;
 mach_msg_ool_descriptor_t out_of_line;
 mach_msg_ool_ports_descriptor_t ool_ports;
 mach_msg_type_descriptor_t type;
 mach_msg_guarded_port_descriptor_t guarded_port;
} mach_msg_descriptor_t;

typedef struct {
 mach_msg_size_t msgh_descriptor_count;
} mach_msg_body_t;

typedef struct {
 mach_msg_bits_t msgh_bits;
 mach_msg_size_t msgh_size;
 mach_port_t msgh_remote_port;
 mach_port_t msgh_local_port;
 mach_port_name_t msgh_voucher_port;
 mach_msg_id_t msgh_id;
} mach_msg_header_t;

typedef struct {
 mach_msg_header_t header;
 mach_msg_body_t body;
} mach_msg_base_t;

typedef unsigned int mach_msg_trailer_type_t;

typedef unsigned int mach_msg_trailer_size_t;
typedef char *mach_msg_trailer_info_t;

typedef struct {
 mach_msg_trailer_type_t msgh_trailer_type;
 mach_msg_trailer_size_t msgh_trailer_size;
} mach_msg_trailer_t;

typedef struct {
 mach_msg_trailer_type_t msgh_trailer_type;
 mach_msg_trailer_size_t msgh_trailer_size;
 mach_port_seqno_t msgh_seqno;
} mach_msg_seqno_trailer_t;

typedef struct {
 unsigned int val[2];
} security_token_t;

typedef struct {
 mach_msg_trailer_type_t msgh_trailer_type;
 mach_msg_trailer_size_t msgh_trailer_size;
 mach_port_seqno_t msgh_seqno;
 security_token_t msgh_sender;
} mach_msg_security_trailer_t;

typedef struct {
 unsigned int val[8];
} audit_token_t;

typedef struct {
 mach_msg_trailer_type_t msgh_trailer_type;
 mach_msg_trailer_size_t msgh_trailer_size;
 mach_port_seqno_t msgh_seqno;
 security_token_t msgh_sender;
 audit_token_t msgh_audit;
} mach_msg_audit_trailer_t;

typedef struct {
 mach_msg_trailer_type_t msgh_trailer_type;
 mach_msg_trailer_size_t msgh_trailer_size;
 mach_port_seqno_t msgh_seqno;
 security_token_t msgh_sender;
 audit_token_t msgh_audit;
 mach_port_context_t msgh_context;
} mach_msg_context_trailer_t;

typedef struct {
 mach_port_name_t sender;
} msg_labels_t;

typedef int mach_msg_filter_id;

typedef struct {
 mach_msg_trailer_type_t msgh_trailer_type;
 mach_msg_trailer_size_t msgh_trailer_size;
 mach_port_seqno_t msgh_seqno;
 security_token_t msgh_sender;
 audit_token_t msgh_audit;
 mach_port_context_t msgh_context;
 mach_msg_filter_id msgh_ad;
 msg_labels_t msgh_labels;
} mach_msg_mac_trailer_t;

typedef mach_msg_mac_trailer_t mach_msg_max_trailer_t;

typedef mach_msg_security_trailer_t mach_msg_format_0_trailer_t;

extern const security_token_t KERNEL_SECURITY_TOKEN;

extern const audit_token_t KERNEL_AUDIT_TOKEN;

typedef integer_t mach_msg_options_t;

typedef struct {
 mach_msg_header_t header;
} mach_msg_empty_send_t;

typedef struct {
 mach_msg_header_t header;
 mach_msg_trailer_t trailer;
} mach_msg_empty_rcv_t;

typedef union{
 mach_msg_empty_send_t send;
 mach_msg_empty_rcv_t rcv;
} mach_msg_empty_t;

typedef natural_t mach_msg_type_size_t;
typedef natural_t mach_msg_type_number_t;

typedef integer_t mach_msg_option_t;

typedef kern_return_t mach_msg_return_t;

__attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
extern mach_msg_return_t mach_msg_overwrite(
 mach_msg_header_t *msg,
 mach_msg_option_t option,
 mach_msg_size_t send_size,
 mach_msg_size_t rcv_size,
 mach_port_name_t rcv_name,
 mach_msg_timeout_t timeout,
 mach_port_name_t notify,
 mach_msg_header_t *rcv_msg,
 mach_msg_size_t rcv_limit);

__attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
extern mach_msg_return_t mach_msg(
 mach_msg_header_t *msg,
 mach_msg_option_t option,
 mach_msg_size_t send_size,
 mach_msg_size_t rcv_size,
 mach_port_name_t rcv_name,
 mach_msg_timeout_t timeout,
 mach_port_name_t notify);

__attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
extern kern_return_t mach_voucher_deallocate(
 mach_port_name_t voucher);

typedef __darwin_uuid_t uuid_t;

typedef __darwin_uuid_string_t uuid_string_t;

static const uuid_t UUID_NULL __attribute__ ((unused)) = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

void uuid_clear(uuid_t uu);

int uuid_compare(const uuid_t uu1, const uuid_t uu2);

void uuid_copy(uuid_t dst, const uuid_t src);

void uuid_generate(uuid_t out);
void uuid_generate_random(uuid_t out);
void uuid_generate_time(uuid_t out);

int uuid_is_null(const uuid_t uu);

int uuid_parse(const uuid_string_t in, uuid_t uu);

void uuid_unparse(const uuid_t uu, uuid_string_t out);
void uuid_unparse_lower(const uuid_t uu, uuid_string_t out);
void uuid_unparse_upper(const uuid_t uu, uuid_string_t out);

typedef struct {
 uint8_t reserved[32];
} es_event_id_t;

typedef enum {
    ES_ACTION_TYPE_AUTH
  , ES_ACTION_TYPE_NOTIFY
} es_action_type_t;

typedef enum {
    ES_SET
  , ES_CLEAR
} es_set_or_clear_t;

typedef enum {
 ES_PROC_CHECK_TYPE_LISTPIDS = 0x1,
 ES_PROC_CHECK_TYPE_PIDINFO = 0x2,
 ES_PROC_CHECK_TYPE_PIDFDINFO = 0x3,
 ES_PROC_CHECK_TYPE_KERNMSGBUF = 0x4,
 ES_PROC_CHECK_TYPE_SETCONTROL = 0x5,
 ES_PROC_CHECK_TYPE_PIDFILEPORTINFO = 0x6,
 ES_PROC_CHECK_TYPE_TERMINATE = 0x7,
 ES_PROC_CHECK_TYPE_DIRTYCONTROL = 0x8,
 ES_PROC_CHECK_TYPE_PIDRUSAGE = 0x9,
 ES_PROC_CHECK_TYPE_UDATA_INFO = 0xe,
} es_proc_check_type_t;

typedef enum {
 ES_XPC_DOMAIN_TYPE_SYSTEM = 1,
 ES_XPC_DOMAIN_TYPE_USER,
 ES_XPC_DOMAIN_TYPE_USER_LOGIN,
 ES_XPC_DOMAIN_TYPE_SESSION,
 ES_XPC_DOMAIN_TYPE_PID,
 ES_XPC_DOMAIN_TYPE_MANAGER,
 ES_XPC_DOMAIN_TYPE_PORT,
 ES_XPC_DOMAIN_TYPE_GUI,
} es_xpc_domain_type_t;

typedef enum {
 ES_AUTHENTICATION_TYPE_OD,
 ES_AUTHENTICATION_TYPE_TOUCHID,
 ES_AUTHENTICATION_TYPE_TOKEN,
 ES_AUTHENTICATION_TYPE_AUTO_UNLOCK,

 ES_AUTHENTICATION_TYPE_LAST
} es_authentication_type_t;

typedef enum {

    ES_EVENT_TYPE_AUTH_EXEC
  , ES_EVENT_TYPE_AUTH_OPEN
  , ES_EVENT_TYPE_AUTH_KEXTLOAD
  , ES_EVENT_TYPE_AUTH_MMAP
  , ES_EVENT_TYPE_AUTH_MPROTECT
  , ES_EVENT_TYPE_AUTH_MOUNT
  , ES_EVENT_TYPE_AUTH_RENAME
  , ES_EVENT_TYPE_AUTH_SIGNAL
  , ES_EVENT_TYPE_AUTH_UNLINK
  , ES_EVENT_TYPE_NOTIFY_EXEC
  , ES_EVENT_TYPE_NOTIFY_OPEN
  , ES_EVENT_TYPE_NOTIFY_FORK
  , ES_EVENT_TYPE_NOTIFY_CLOSE
  , ES_EVENT_TYPE_NOTIFY_CREATE
  , ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA
  , ES_EVENT_TYPE_NOTIFY_EXIT
  , ES_EVENT_TYPE_NOTIFY_GET_TASK
  , ES_EVENT_TYPE_NOTIFY_KEXTLOAD
  , ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD
  , ES_EVENT_TYPE_NOTIFY_LINK
  , ES_EVENT_TYPE_NOTIFY_MMAP
  , ES_EVENT_TYPE_NOTIFY_MPROTECT
  , ES_EVENT_TYPE_NOTIFY_MOUNT
  , ES_EVENT_TYPE_NOTIFY_UNMOUNT
  , ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN
  , ES_EVENT_TYPE_NOTIFY_RENAME
  , ES_EVENT_TYPE_NOTIFY_SETATTRLIST
  , ES_EVENT_TYPE_NOTIFY_SETEXTATTR
  , ES_EVENT_TYPE_NOTIFY_SETFLAGS
  , ES_EVENT_TYPE_NOTIFY_SETMODE
  , ES_EVENT_TYPE_NOTIFY_SETOWNER
  , ES_EVENT_TYPE_NOTIFY_SIGNAL
  , ES_EVENT_TYPE_NOTIFY_UNLINK
  , ES_EVENT_TYPE_NOTIFY_WRITE
  , ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE
  , ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE
  , ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE
  , ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE
  , ES_EVENT_TYPE_AUTH_READLINK
  , ES_EVENT_TYPE_NOTIFY_READLINK
  , ES_EVENT_TYPE_AUTH_TRUNCATE
  , ES_EVENT_TYPE_NOTIFY_TRUNCATE
  , ES_EVENT_TYPE_AUTH_LINK
  , ES_EVENT_TYPE_NOTIFY_LOOKUP
  , ES_EVENT_TYPE_AUTH_CREATE
  , ES_EVENT_TYPE_AUTH_SETATTRLIST
  , ES_EVENT_TYPE_AUTH_SETEXTATTR
  , ES_EVENT_TYPE_AUTH_SETFLAGS
  , ES_EVENT_TYPE_AUTH_SETMODE
  , ES_EVENT_TYPE_AUTH_SETOWNER

  , ES_EVENT_TYPE_AUTH_CHDIR
  , ES_EVENT_TYPE_NOTIFY_CHDIR
  , ES_EVENT_TYPE_AUTH_GETATTRLIST
  , ES_EVENT_TYPE_NOTIFY_GETATTRLIST
  , ES_EVENT_TYPE_NOTIFY_STAT
  , ES_EVENT_TYPE_NOTIFY_ACCESS
  , ES_EVENT_TYPE_AUTH_CHROOT
  , ES_EVENT_TYPE_NOTIFY_CHROOT
  , ES_EVENT_TYPE_AUTH_UTIMES
  , ES_EVENT_TYPE_NOTIFY_UTIMES
  , ES_EVENT_TYPE_AUTH_CLONE
  , ES_EVENT_TYPE_NOTIFY_CLONE
  , ES_EVENT_TYPE_NOTIFY_FCNTL
  , ES_EVENT_TYPE_AUTH_GETEXTATTR
  , ES_EVENT_TYPE_NOTIFY_GETEXTATTR
  , ES_EVENT_TYPE_AUTH_LISTEXTATTR
  , ES_EVENT_TYPE_NOTIFY_LISTEXTATTR
  , ES_EVENT_TYPE_AUTH_READDIR
  , ES_EVENT_TYPE_NOTIFY_READDIR
  , ES_EVENT_TYPE_AUTH_DELETEEXTATTR
  , ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR
  , ES_EVENT_TYPE_AUTH_FSGETPATH
  , ES_EVENT_TYPE_NOTIFY_FSGETPATH
  , ES_EVENT_TYPE_NOTIFY_DUP
  , ES_EVENT_TYPE_AUTH_SETTIME
  , ES_EVENT_TYPE_NOTIFY_SETTIME
  , ES_EVENT_TYPE_NOTIFY_UIPC_BIND
  , ES_EVENT_TYPE_AUTH_UIPC_BIND
  , ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT
  , ES_EVENT_TYPE_AUTH_UIPC_CONNECT
  , ES_EVENT_TYPE_AUTH_EXCHANGEDATA
  , ES_EVENT_TYPE_AUTH_SETACL
  , ES_EVENT_TYPE_NOTIFY_SETACL

  , ES_EVENT_TYPE_NOTIFY_PTY_GRANT
  , ES_EVENT_TYPE_NOTIFY_PTY_CLOSE
  , ES_EVENT_TYPE_AUTH_PROC_CHECK
  , ES_EVENT_TYPE_NOTIFY_PROC_CHECK
  , ES_EVENT_TYPE_AUTH_GET_TASK

  , ES_EVENT_TYPE_AUTH_SEARCHFS
  , ES_EVENT_TYPE_NOTIFY_SEARCHFS
  , ES_EVENT_TYPE_AUTH_FCNTL
  , ES_EVENT_TYPE_AUTH_IOKIT_OPEN
  , ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME
  , ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME
  , ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED
  , ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME
  , ES_EVENT_TYPE_NOTIFY_TRACE
  , ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE
  , ES_EVENT_TYPE_AUTH_REMOUNT
  , ES_EVENT_TYPE_NOTIFY_REMOUNT

  , ES_EVENT_TYPE_AUTH_GET_TASK_READ
  , ES_EVENT_TYPE_NOTIFY_GET_TASK_READ
  , ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT

  , ES_EVENT_TYPE_NOTIFY_SETUID
  , ES_EVENT_TYPE_NOTIFY_SETGID
  , ES_EVENT_TYPE_NOTIFY_SETEUID
  , ES_EVENT_TYPE_NOTIFY_SETEGID
  , ES_EVENT_TYPE_NOTIFY_SETREUID
  , ES_EVENT_TYPE_NOTIFY_SETREGID
  , ES_EVENT_TYPE_AUTH_COPYFILE
  , ES_EVENT_TYPE_NOTIFY_COPYFILE

  , ES_EVENT_TYPE_NOTIFY_AUTHENTICATION
  , ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED
  , ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED
  , ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN
  , ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT
  , ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK
  , ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK
  , ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH
  , ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH
  , ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN
  , ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT
  , ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN
  , ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT
  , ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD
  , ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE

  , ES_EVENT_TYPE_NOTIFY_PROFILE_ADD
  , ES_EVENT_TYPE_NOTIFY_PROFILE_REMOVE
  , ES_EVENT_TYPE_NOTIFY_SU
  , ES_EVENT_TYPE_NOTIFY_AUTHORIZATION_PETITION
  , ES_EVENT_TYPE_NOTIFY_AUTHORIZATION_JUDGEMENT
  , ES_EVENT_TYPE_NOTIFY_SUDO
  , ES_EVENT_TYPE_NOTIFY_OD_GROUP_ADD
  , ES_EVENT_TYPE_NOTIFY_OD_GROUP_REMOVE
  , ES_EVENT_TYPE_NOTIFY_OD_GROUP_SET
  , ES_EVENT_TYPE_NOTIFY_OD_MODIFY_PASSWORD
  , ES_EVENT_TYPE_NOTIFY_OD_DISABLE_USER
  , ES_EVENT_TYPE_NOTIFY_OD_ENABLE_USER
  , ES_EVENT_TYPE_NOTIFY_OD_ATTRIBUTE_VALUE_ADD
  , ES_EVENT_TYPE_NOTIFY_OD_ATTRIBUTE_VALUE_REMOVE
  , ES_EVENT_TYPE_NOTIFY_OD_ATTRIBUTE_SET
  , ES_EVENT_TYPE_NOTIFY_OD_CREATE_USER
  , ES_EVENT_TYPE_NOTIFY_OD_CREATE_GROUP
  , ES_EVENT_TYPE_NOTIFY_OD_DELETE_USER
  , ES_EVENT_TYPE_NOTIFY_OD_DELETE_GROUP
  , ES_EVENT_TYPE_NOTIFY_XPC_CONNECT

  , ES_EVENT_TYPE_LAST
} es_event_type_t;

typedef enum {

 ES_AUTH_RESULT_ALLOW

  , ES_AUTH_RESULT_DENY
} es_auth_result_t;

typedef enum {

 ES_RESULT_TYPE_AUTH

  , ES_RESULT_TYPE_FLAGS
} es_result_type_t;

typedef enum {
 ES_RETURN_SUCCESS
  , ES_RETURN_ERROR
} es_return_t;

typedef enum {
 ES_RESPOND_RESULT_SUCCESS

  , ES_RESPOND_RESULT_ERR_INVALID_ARGUMENT

  , ES_RESPOND_RESULT_ERR_INTERNAL

  , ES_RESPOND_RESULT_NOT_FOUND

  , ES_RESPOND_RESULT_ERR_DUPLICATE_RESPONSE

  , ES_RESPOND_RESULT_ERR_EVENT_TYPE
} es_respond_result_t;

typedef enum {
 ES_NEW_CLIENT_RESULT_SUCCESS

  , ES_NEW_CLIENT_RESULT_ERR_INVALID_ARGUMENT

  , ES_NEW_CLIENT_RESULT_ERR_INTERNAL

  , ES_NEW_CLIENT_RESULT_ERR_NOT_ENTITLED

  , ES_NEW_CLIENT_RESULT_ERR_NOT_PERMITTED

  , ES_NEW_CLIENT_RESULT_ERR_NOT_PRIVILEGED

  , ES_NEW_CLIENT_RESULT_ERR_TOO_MANY_CLIENTS
} es_new_client_result_t;

typedef enum {
 ES_CLEAR_CACHE_RESULT_SUCCESS

  , ES_CLEAR_CACHE_RESULT_ERR_INTERNAL

  , ES_CLEAR_CACHE_RESULT_ERR_THROTTLE
} es_clear_cache_result_t;

typedef struct {

 size_t size;
 const uint8_t * data;
} es_token_t;

typedef struct {

 size_t length;
 const char * data;
} es_string_token_t;

typedef enum {

 ES_MUTE_PATH_TYPE_PREFIX

 , ES_MUTE_PATH_TYPE_LITERAL

 , ES_MUTE_PATH_TYPE_TARGET_PREFIX

 , ES_MUTE_PATH_TYPE_TARGET_LITERAL
} es_mute_path_type_t;

typedef struct {
 es_mute_path_type_t type;
 size_t event_count;
 const es_event_type_t *events;
 es_string_token_t path;
} es_muted_path_t;

typedef struct {
 size_t count;
 const es_muted_path_t *paths;
} es_muted_paths_t;

typedef struct {
 audit_token_t audit_token;
 size_t event_count;
 const es_event_type_t *events;
} es_muted_process_t;

typedef struct {
 size_t count;
 const es_muted_process_t *processes;
} es_muted_processes_t;

typedef enum {

 ES_ADDRESS_TYPE_NONE,

 ES_ADDRESS_TYPE_IPV4,

 ES_ADDRESS_TYPE_IPV6,

 ES_ADDRESS_TYPE_NAMED_SOCKET,
} es_address_type_t;

typedef enum {
    ES_MUTE_INVERSION_TYPE_PROCESS
  , ES_MUTE_INVERSION_TYPE_PATH
  , ES_MUTE_INVERSION_TYPE_TARGET_PATH
  , ES_MUTE_INVERSION_TYPE_LAST
} es_mute_inversion_type_t;

typedef enum {

    ES_MUTE_INVERTED

  , ES_MUTE_NOT_INVERTED

  , ES_MUTE_INVERTED_ERROR
} es_mute_inverted_return_t;

typedef enum {

  ES_AUTHORIZATION_RULE_CLASS_USER

, ES_AUTHORIZATION_RULE_CLASS_RULE

, ES_AUTHORIZATION_RULE_CLASS_MECHANISM

, ES_AUTHORIZATION_RULE_CLASS_ALLOW

, ES_AUTHORIZATION_RULE_CLASS_DENY

, ES_AUTHORIZATION_RULE_CLASS_UNKNOWN

, ES_AUTHORIZATION_RULE_CLASS_INVALID
} es_authorization_rule_class_t;

typedef enum {

  ES_OD_MEMBER_TYPE_USER_NAME

, ES_OD_MEMBER_TYPE_USER_UUID

, ES_OD_MEMBER_TYPE_GROUP_UUID
} es_od_member_type_t;

typedef enum {
  ES_OD_ACCOUNT_TYPE_USER
, ES_OD_ACCOUNT_TYPE_COMPUTER
} es_od_account_type_t;

typedef enum {
  ES_OD_RECORD_TYPE_USER
, ES_OD_RECORD_TYPE_GROUP
} es_od_record_type_t;

typedef integer_t cpu_type_t;
typedef integer_t cpu_subtype_t;
typedef integer_t cpu_threadtype_t;

typedef union {

 unsigned char g_guid[16];
 unsigned int g_guid_asint[16 / sizeof(unsigned int)];
} guid_t;

typedef struct {
 u_int8_t sid_kind;
 u_int8_t sid_authcount;
 u_int8_t sid_authority[6];

 u_int32_t sid_authorities[16];
} ntsid_t;

struct kauth_identity_extlookup {
 u_int32_t el_seqno;
 u_int32_t el_result;

 u_int32_t el_flags;

 __darwin_pid_t el_info_pid;
 u_int64_t el_extend;
 u_int32_t el_info_reserved_1;

 uid_t el_uid;
 guid_t el_uguid;
 u_int32_t el_uguid_valid;
 ntsid_t el_usid;
 u_int32_t el_usid_valid;
 gid_t el_gid;
 guid_t el_gguid;
 u_int32_t el_gguid_valid;
 ntsid_t el_gsid;
 u_int32_t el_gsid_valid;
 u_int32_t el_member_valid;
 u_int32_t el_sup_grp_cnt;
 gid_t el_sup_groups[16];
};

struct kauth_cache_sizes {
 u_int32_t kcs_group_size;
 u_int32_t kcs_id_size;
};

typedef u_int32_t kauth_ace_rights_t;

struct kauth_ace {
 guid_t ace_applicable;
 u_int32_t ace_flags;

 kauth_ace_rights_t ace_rights;

};

typedef struct kauth_ace *kauth_ace_t;

struct kauth_acl {
 u_int32_t acl_entrycount;
 u_int32_t acl_flags;

 struct kauth_ace acl_ace[1];
};

typedef struct kauth_acl *kauth_acl_t;

struct kauth_filesec {
 u_int32_t fsec_magic;

 guid_t fsec_owner;
 guid_t fsec_group;

 struct kauth_acl fsec_acl;
};

typedef struct kauth_filesec *kauth_filesec_t;

typedef enum {
 ACL_READ_DATA = (1<<1),
 ACL_LIST_DIRECTORY = (1<<1),
 ACL_WRITE_DATA = (1<<2),
 ACL_ADD_FILE = (1<<2),
 ACL_EXECUTE = (1<<3),
 ACL_SEARCH = (1<<3),
 ACL_DELETE = (1<<4),
 ACL_APPEND_DATA = (1<<5),
 ACL_ADD_SUBDIRECTORY = (1<<5),
 ACL_DELETE_CHILD = (1<<6),
 ACL_READ_ATTRIBUTES = (1<<7),
 ACL_WRITE_ATTRIBUTES = (1<<8),
 ACL_READ_EXTATTRIBUTES = (1<<9),
 ACL_WRITE_EXTATTRIBUTES = (1<<10),
 ACL_READ_SECURITY = (1<<11),
 ACL_WRITE_SECURITY = (1<<12),
 ACL_CHANGE_OWNER = (1<<13),
 ACL_SYNCHRONIZE = (1<<20),
} acl_perm_t;

typedef enum {
 ACL_UNDEFINED_TAG = 0,
 ACL_EXTENDED_ALLOW = 1,
 ACL_EXTENDED_DENY = 2
} acl_tag_t;

typedef enum {
 ACL_TYPE_EXTENDED = 0x00000100,

 ACL_TYPE_ACCESS = 0x00000000,
 ACL_TYPE_DEFAULT = 0x00000001,

 ACL_TYPE_AFS = 0x00000002,
 ACL_TYPE_CODA = 0x00000003,
 ACL_TYPE_NTFS = 0x00000004,
 ACL_TYPE_NWFS = 0x00000005
} acl_type_t;

typedef enum {
 ACL_FIRST_ENTRY = 0,
 ACL_NEXT_ENTRY = -1,
 ACL_LAST_ENTRY = -2
} acl_entry_id_t;

typedef enum {
 ACL_FLAG_DEFER_INHERIT = (1 << 0),
 ACL_FLAG_NO_INHERIT = (1<<17),
 ACL_ENTRY_INHERITED = (1<<4),
 ACL_ENTRY_FILE_INHERIT = (1<<5),
 ACL_ENTRY_DIRECTORY_INHERIT = (1<<6),
 ACL_ENTRY_LIMIT_INHERIT = (1<<7),
 ACL_ENTRY_ONLY_INHERIT = (1<<8)
} acl_flag_t;

struct _acl;
struct _acl_entry;
struct _acl_permset;
struct _acl_flagset;

typedef struct _acl *acl_t;
typedef struct _acl_entry *acl_entry_t;
typedef struct _acl_permset *acl_permset_t;
typedef struct _acl_flagset *acl_flagset_t;

typedef u_int64_t acl_permset_mask_t;

extern acl_t acl_dup(acl_t acl);
extern int acl_free(void *obj_p);
extern acl_t acl_init(int count);

extern int acl_copy_entry(acl_entry_t dest_d, acl_entry_t src_d);
extern int acl_create_entry(acl_t *acl_p, acl_entry_t *entry_p);
extern int acl_create_entry_np(acl_t *acl_p, acl_entry_t *entry_p, int entry_index);
extern int acl_delete_entry(acl_t acl, acl_entry_t entry_d);
extern int acl_get_entry(acl_t acl, int entry_id, acl_entry_t *entry_p);
extern int acl_valid(acl_t acl);
extern int acl_valid_fd_np(int fd, acl_type_t type, acl_t acl);
extern int acl_valid_file_np(const char *path, acl_type_t type, acl_t acl);
extern int acl_valid_link_np(const char *path, acl_type_t type, acl_t acl);

extern int acl_add_perm(acl_permset_t permset_d, acl_perm_t perm);
extern int acl_calc_mask(acl_t *acl_p);
extern int acl_clear_perms(acl_permset_t permset_d);
extern int acl_delete_perm(acl_permset_t permset_d, acl_perm_t perm);
extern int acl_get_perm_np(acl_permset_t permset_d, acl_perm_t perm);
extern int acl_get_permset(acl_entry_t entry_d, acl_permset_t *permset_p);
extern int acl_set_permset(acl_entry_t entry_d, acl_permset_t permset_d);

extern int acl_maximal_permset_mask_np(acl_permset_mask_t * mask_p) __attribute__((availability(macosx,introduced=10.7)));
extern int acl_get_permset_mask_np(acl_entry_t entry_d, acl_permset_mask_t * mask_p) __attribute__((availability(macosx,introduced=10.7)));
extern int acl_set_permset_mask_np(acl_entry_t entry_d, acl_permset_mask_t mask) __attribute__((availability(macosx,introduced=10.7)));

extern int acl_add_flag_np(acl_flagset_t flagset_d, acl_flag_t flag);
extern int acl_clear_flags_np(acl_flagset_t flagset_d);
extern int acl_delete_flag_np(acl_flagset_t flagset_d, acl_flag_t flag);
extern int acl_get_flag_np(acl_flagset_t flagset_d, acl_flag_t flag);
extern int acl_get_flagset_np(void *obj_p, acl_flagset_t *flagset_p);
extern int acl_set_flagset_np(void *obj_p, acl_flagset_t flagset_d);

extern void *acl_get_qualifier(acl_entry_t entry_d);
extern int acl_get_tag_type(acl_entry_t entry_d, acl_tag_t *tag_type_p);
extern int acl_set_qualifier(acl_entry_t entry_d, const void *tag_qualifier_p);
extern int acl_set_tag_type(acl_entry_t entry_d, acl_tag_t tag_type);

extern int acl_delete_def_file(const char *path_p);
extern acl_t acl_get_fd(int fd);
extern acl_t acl_get_fd_np(int fd, acl_type_t type);
extern acl_t acl_get_file(const char *path_p, acl_type_t type);
extern acl_t acl_get_link_np(const char *path_p, acl_type_t type);
extern int acl_set_fd(int fd, acl_t acl);
extern int acl_set_fd_np(int fd, acl_t acl, acl_type_t acl_type);
extern int acl_set_file(const char *path_p, acl_type_t type, acl_t acl);
extern int acl_set_link_np(const char *path_p, acl_type_t type, acl_t acl);

extern ssize_t acl_copy_ext(void *buf_p, acl_t acl, ssize_t size);
extern ssize_t acl_copy_ext_native(void *buf_p, acl_t acl, ssize_t size);
extern acl_t acl_copy_int(const void *buf_p);
extern acl_t acl_copy_int_native(const void *buf_p);
extern acl_t acl_from_text(const char *buf_p);
extern ssize_t acl_size(acl_t acl);
extern char *acl_to_text(acl_t acl, ssize_t *len_p);

typedef int sig_atomic_t;

struct __darwin_i386_thread_state
{
    unsigned int __eax;
    unsigned int __ebx;
    unsigned int __ecx;
    unsigned int __edx;
    unsigned int __edi;
    unsigned int __esi;
    unsigned int __ebp;
    unsigned int __esp;
    unsigned int __ss;
    unsigned int __eflags;
    unsigned int __eip;
    unsigned int __cs;
    unsigned int __ds;
    unsigned int __es;
    unsigned int __fs;
    unsigned int __gs;
};

struct __darwin_fp_control
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
      :2,
    __pc :2,

    __rc :2,

             :1,
      :3;
};
typedef struct __darwin_fp_control __darwin_fp_control_t;

struct __darwin_fp_status
{
    unsigned short __invalid :1,
        __denorm :1,
    __zdiv :1,
    __ovrfl :1,
    __undfl :1,
    __precis :1,
    __stkflt :1,
    __errsumm :1,
    __c0 :1,
    __c1 :1,
    __c2 :1,
    __tos :3,
    __c3 :1,
    __busy :1;
};
typedef struct __darwin_fp_status __darwin_fp_status_t;

struct __darwin_mmst_reg
{
 char __mmst_reg[10];
 char __mmst_rsrv[6];
};

struct __darwin_xmm_reg
{
 char __xmm_reg[16];
};

struct __darwin_ymm_reg
{
 char __ymm_reg[32];
};

struct __darwin_zmm_reg
{
 char __zmm_reg[64];
};

struct __darwin_opmask_reg
{
 char __opmask_reg[8];
};

struct __darwin_i386_float_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
};

struct __darwin_i386_avx_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
};

struct __darwin_i386_avx512_state
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;
 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;
 __uint16_t __fpu_rsrv2;
 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;
 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 char __fpu_rsrv4[14*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
 struct __darwin_opmask_reg __fpu_k0;
 struct __darwin_opmask_reg __fpu_k1;
 struct __darwin_opmask_reg __fpu_k2;
 struct __darwin_opmask_reg __fpu_k3;
 struct __darwin_opmask_reg __fpu_k4;
 struct __darwin_opmask_reg __fpu_k5;
 struct __darwin_opmask_reg __fpu_k6;
 struct __darwin_opmask_reg __fpu_k7;
 struct __darwin_ymm_reg __fpu_zmmh0;
 struct __darwin_ymm_reg __fpu_zmmh1;
 struct __darwin_ymm_reg __fpu_zmmh2;
 struct __darwin_ymm_reg __fpu_zmmh3;
 struct __darwin_ymm_reg __fpu_zmmh4;
 struct __darwin_ymm_reg __fpu_zmmh5;
 struct __darwin_ymm_reg __fpu_zmmh6;
 struct __darwin_ymm_reg __fpu_zmmh7;
};

struct __darwin_i386_exception_state
{
 __uint16_t __trapno;
 __uint16_t __cpu;
 __uint32_t __err;
 __uint32_t __faultvaddr;
};

struct __darwin_x86_debug_state32
{
 unsigned int __dr0;
 unsigned int __dr1;
 unsigned int __dr2;
 unsigned int __dr3;
 unsigned int __dr4;
 unsigned int __dr5;
 unsigned int __dr6;
 unsigned int __dr7;
};

struct __x86_instruction_state
{
        int __insn_stream_valid_bytes;
        int __insn_offset;
 int __out_of_synch;

        __uint8_t __insn_bytes[(2448 - 64 - 4)];

 __uint8_t __insn_cacheline[64];
};

struct __last_branch_record
{
 __uint64_t __from_ip;
 __uint64_t __to_ip;
 __uint32_t __mispredict : 1,
   __tsx_abort : 1,
   __in_tsx : 1,
   __cycle_count: 16,
   __reserved : 13;
};

struct __last_branch_state
{
        int __lbr_count;
 __uint32_t __lbr_supported_tsx : 1,
     __lbr_supported_cycle_count : 1,
     __reserved : 30;

 struct __last_branch_record __lbrs[32];
};

struct __x86_pagein_state
{
 int __pagein_error;
};

struct __darwin_x86_thread_state64
{
 __uint64_t __rax;
 __uint64_t __rbx;
 __uint64_t __rcx;
 __uint64_t __rdx;
 __uint64_t __rdi;
 __uint64_t __rsi;
 __uint64_t __rbp;
 __uint64_t __rsp;
 __uint64_t __r8;
 __uint64_t __r9;
 __uint64_t __r10;
 __uint64_t __r11;
 __uint64_t __r12;
 __uint64_t __r13;
 __uint64_t __r14;
 __uint64_t __r15;
 __uint64_t __rip;
 __uint64_t __rflags;
 __uint64_t __cs;
 __uint64_t __fs;
 __uint64_t __gs;
};

struct __darwin_x86_thread_full_state64
{
 struct __darwin_x86_thread_state64 __ss64;
 __uint64_t __ds;
 __uint64_t __es;
 __uint64_t __ss;
 __uint64_t __gsbase;
};

struct __darwin_x86_float_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;

 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;

 __uint16_t __fpu_rsrv2;

 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;

 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
};

struct __darwin_x86_avx_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;

 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;

 __uint16_t __fpu_rsrv2;

 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;

 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
 struct __darwin_xmm_reg __fpu_ymmh8;
 struct __darwin_xmm_reg __fpu_ymmh9;
 struct __darwin_xmm_reg __fpu_ymmh10;
 struct __darwin_xmm_reg __fpu_ymmh11;
 struct __darwin_xmm_reg __fpu_ymmh12;
 struct __darwin_xmm_reg __fpu_ymmh13;
 struct __darwin_xmm_reg __fpu_ymmh14;
 struct __darwin_xmm_reg __fpu_ymmh15;
};

struct __darwin_x86_avx512_state64
{
 int __fpu_reserved[2];
 struct __darwin_fp_control __fpu_fcw;
 struct __darwin_fp_status __fpu_fsw;
 __uint8_t __fpu_ftw;
 __uint8_t __fpu_rsrv1;
 __uint16_t __fpu_fop;

 __uint32_t __fpu_ip;
 __uint16_t __fpu_cs;

 __uint16_t __fpu_rsrv2;

 __uint32_t __fpu_dp;
 __uint16_t __fpu_ds;

 __uint16_t __fpu_rsrv3;
 __uint32_t __fpu_mxcsr;
 __uint32_t __fpu_mxcsrmask;
 struct __darwin_mmst_reg __fpu_stmm0;
 struct __darwin_mmst_reg __fpu_stmm1;
 struct __darwin_mmst_reg __fpu_stmm2;
 struct __darwin_mmst_reg __fpu_stmm3;
 struct __darwin_mmst_reg __fpu_stmm4;
 struct __darwin_mmst_reg __fpu_stmm5;
 struct __darwin_mmst_reg __fpu_stmm6;
 struct __darwin_mmst_reg __fpu_stmm7;
 struct __darwin_xmm_reg __fpu_xmm0;
 struct __darwin_xmm_reg __fpu_xmm1;
 struct __darwin_xmm_reg __fpu_xmm2;
 struct __darwin_xmm_reg __fpu_xmm3;
 struct __darwin_xmm_reg __fpu_xmm4;
 struct __darwin_xmm_reg __fpu_xmm5;
 struct __darwin_xmm_reg __fpu_xmm6;
 struct __darwin_xmm_reg __fpu_xmm7;
 struct __darwin_xmm_reg __fpu_xmm8;
 struct __darwin_xmm_reg __fpu_xmm9;
 struct __darwin_xmm_reg __fpu_xmm10;
 struct __darwin_xmm_reg __fpu_xmm11;
 struct __darwin_xmm_reg __fpu_xmm12;
 struct __darwin_xmm_reg __fpu_xmm13;
 struct __darwin_xmm_reg __fpu_xmm14;
 struct __darwin_xmm_reg __fpu_xmm15;
 char __fpu_rsrv4[6*16];
 int __fpu_reserved1;
 char __avx_reserved1[64];
 struct __darwin_xmm_reg __fpu_ymmh0;
 struct __darwin_xmm_reg __fpu_ymmh1;
 struct __darwin_xmm_reg __fpu_ymmh2;
 struct __darwin_xmm_reg __fpu_ymmh3;
 struct __darwin_xmm_reg __fpu_ymmh4;
 struct __darwin_xmm_reg __fpu_ymmh5;
 struct __darwin_xmm_reg __fpu_ymmh6;
 struct __darwin_xmm_reg __fpu_ymmh7;
 struct __darwin_xmm_reg __fpu_ymmh8;
 struct __darwin_xmm_reg __fpu_ymmh9;
 struct __darwin_xmm_reg __fpu_ymmh10;
 struct __darwin_xmm_reg __fpu_ymmh11;
 struct __darwin_xmm_reg __fpu_ymmh12;
 struct __darwin_xmm_reg __fpu_ymmh13;
 struct __darwin_xmm_reg __fpu_ymmh14;
 struct __darwin_xmm_reg __fpu_ymmh15;
 struct __darwin_opmask_reg __fpu_k0;
 struct __darwin_opmask_reg __fpu_k1;
 struct __darwin_opmask_reg __fpu_k2;
 struct __darwin_opmask_reg __fpu_k3;
 struct __darwin_opmask_reg __fpu_k4;
 struct __darwin_opmask_reg __fpu_k5;
 struct __darwin_opmask_reg __fpu_k6;
 struct __darwin_opmask_reg __fpu_k7;
 struct __darwin_ymm_reg __fpu_zmmh0;
 struct __darwin_ymm_reg __fpu_zmmh1;
 struct __darwin_ymm_reg __fpu_zmmh2;
 struct __darwin_ymm_reg __fpu_zmmh3;
 struct __darwin_ymm_reg __fpu_zmmh4;
 struct __darwin_ymm_reg __fpu_zmmh5;
 struct __darwin_ymm_reg __fpu_zmmh6;
 struct __darwin_ymm_reg __fpu_zmmh7;
 struct __darwin_ymm_reg __fpu_zmmh8;
 struct __darwin_ymm_reg __fpu_zmmh9;
 struct __darwin_ymm_reg __fpu_zmmh10;
 struct __darwin_ymm_reg __fpu_zmmh11;
 struct __darwin_ymm_reg __fpu_zmmh12;
 struct __darwin_ymm_reg __fpu_zmmh13;
 struct __darwin_ymm_reg __fpu_zmmh14;
 struct __darwin_ymm_reg __fpu_zmmh15;
 struct __darwin_zmm_reg __fpu_zmm16;
 struct __darwin_zmm_reg __fpu_zmm17;
 struct __darwin_zmm_reg __fpu_zmm18;
 struct __darwin_zmm_reg __fpu_zmm19;
 struct __darwin_zmm_reg __fpu_zmm20;
 struct __darwin_zmm_reg __fpu_zmm21;
 struct __darwin_zmm_reg __fpu_zmm22;
 struct __darwin_zmm_reg __fpu_zmm23;
 struct __darwin_zmm_reg __fpu_zmm24;
 struct __darwin_zmm_reg __fpu_zmm25;
 struct __darwin_zmm_reg __fpu_zmm26;
 struct __darwin_zmm_reg __fpu_zmm27;
 struct __darwin_zmm_reg __fpu_zmm28;
 struct __darwin_zmm_reg __fpu_zmm29;
 struct __darwin_zmm_reg __fpu_zmm30;
 struct __darwin_zmm_reg __fpu_zmm31;
};

struct __darwin_x86_exception_state64
{
    __uint16_t __trapno;
    __uint16_t __cpu;
    __uint32_t __err;
    __uint64_t __faultvaddr;
};

struct __darwin_x86_debug_state64
{
 __uint64_t __dr0;
 __uint64_t __dr1;
 __uint64_t __dr2;
 __uint64_t __dr3;
 __uint64_t __dr4;
 __uint64_t __dr5;
 __uint64_t __dr6;
 __uint64_t __dr7;
};

struct __darwin_x86_cpmu_state64
{
 __uint64_t __ctrs[16];
};

struct __darwin_mcontext32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_float_state __fs;
};

struct __darwin_mcontext_avx32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_avx_state __fs;
};

struct __darwin_mcontext_avx512_32
{
 struct __darwin_i386_exception_state __es;
 struct __darwin_i386_thread_state __ss;
 struct __darwin_i386_avx512_state __fs;
};

struct __darwin_mcontext64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_float_state64 __fs;
};

struct __darwin_mcontext64_full
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_full_state64 __ss;
 struct __darwin_x86_float_state64 __fs;
};

struct __darwin_mcontext_avx64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_avx_state64 __fs;
};

struct __darwin_mcontext_avx64_full
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_full_state64 __ss;
 struct __darwin_x86_avx_state64 __fs;
};

struct __darwin_mcontext_avx512_64
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_state64 __ss;
 struct __darwin_x86_avx512_state64 __fs;
};

struct __darwin_mcontext_avx512_64_full
{
 struct __darwin_x86_exception_state64 __es;
 struct __darwin_x86_thread_full_state64 __ss;
 struct __darwin_x86_avx512_state64 __fs;
};

typedef struct __darwin_mcontext64 *mcontext_t;

struct __darwin_sigaltstack
{
 void *ss_sp;
 __darwin_size_t ss_size;
 int ss_flags;
};
typedef struct __darwin_sigaltstack stack_t;

struct __darwin_ucontext
{
 int uc_onstack;
 __darwin_sigset_t uc_sigmask;
 struct __darwin_sigaltstack uc_stack;
 struct __darwin_ucontext *uc_link;
 __darwin_size_t uc_mcsize;
 struct __darwin_mcontext64 *uc_mcontext;

};

typedef struct __darwin_ucontext ucontext_t;

typedef __darwin_sigset_t sigset_t;

union sigval {

 int sival_int;
 void *sival_ptr;
};

struct sigevent {
 int sigev_notify;
 int sigev_signo;
 union sigval sigev_value;
 void (*sigev_notify_function)(union sigval);
 pthread_attr_t *sigev_notify_attributes;
};

typedef struct __siginfo {
 int si_signo;
 int si_errno;
 int si_code;
 pid_t si_pid;
 uid_t si_uid;
 int si_status;
 void *si_addr;
 union sigval si_value;
 long si_band;
 unsigned long __pad[7];
} siginfo_t;

union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};

struct __sigaction {
 union __sigaction_u __sigaction_u;
 void (*sa_tramp)(void *, int, int, siginfo_t *, void *);
 sigset_t sa_mask;
 int sa_flags;
};

struct sigaction {
 union __sigaction_u __sigaction_u;
 sigset_t sa_mask;
 int sa_flags;
};

typedef void (*sig_t)(int);

struct sigvec {
 void (*sv_handler)(int);
 int sv_mask;
 int sv_flags;
};

struct sigstack {
 char *ss_sp;
 int ss_onstack;
};

void(*signal(int, void (*)(int)))(int);

typedef uid_t au_id_t;
typedef pid_t au_asid_t;
typedef u_int16_t au_event_t;
typedef u_int16_t au_emod_t;
typedef u_int32_t au_class_t;
typedef u_int64_t au_asflgs_t __attribute__ ((aligned(8)));
typedef unsigned char au_ctlmode_t;

struct au_tid {
 dev_t port;
 u_int32_t machine;
};
typedef struct au_tid au_tid_t;

struct au_tid_addr {
 dev_t at_port;
 u_int32_t at_type;
 u_int32_t at_addr[4];
};
typedef struct au_tid_addr au_tid_addr_t;

struct au_mask {
 unsigned int am_success;
 unsigned int am_failure;
};
typedef struct au_mask au_mask_t;

struct auditinfo {
 au_id_t ai_auid;
 au_mask_t ai_mask;
 au_tid_t ai_termid;
 au_asid_t ai_asid;
};
typedef struct auditinfo auditinfo_t;

struct auditinfo_addr {
 au_id_t ai_auid;
 au_mask_t ai_mask;
 au_tid_addr_t ai_termid;
 au_asid_t ai_asid;
 au_asflgs_t ai_flags;
};
typedef struct auditinfo_addr auditinfo_addr_t;

struct auditpinfo {
 pid_t ap_pid;
 au_id_t ap_auid;
 au_mask_t ap_mask;
 au_tid_t ap_termid;
 au_asid_t ap_asid;
};
typedef struct auditpinfo auditpinfo_t;

struct auditpinfo_addr {
 pid_t ap_pid;
 au_id_t ap_auid;
 au_mask_t ap_mask;
 au_tid_addr_t ap_termid;
 au_asid_t ap_asid;
 au_asflgs_t ap_flags;
};
typedef struct auditpinfo_addr auditpinfo_addr_t;

struct au_session {
 auditinfo_addr_t *as_aia_p;
 au_mask_t as_mask;
};
typedef struct au_session au_session_t;

struct au_expire_after {
 time_t age;
 size_t size;
 unsigned char op_type;
};
typedef struct au_expire_after au_expire_after_t;

typedef struct au_token token_t;

struct au_qctrl {
 int aq_hiwater;

 int aq_lowater;

 int aq_bufsz;
 int aq_delay;
 int aq_minfree;
};
typedef struct au_qctrl au_qctrl_t;

struct audit_stat {
 unsigned int as_version;
 unsigned int as_numevent;
 int as_generated;
 int as_nonattrib;
 int as_kernel;
 int as_audit;
 int as_auditctl;
 int as_enqueue;
 int as_written;
 int as_wblocked;
 int as_rblocked;
 int as_dropped;
 int as_totalsize;
 unsigned int as_memused;
};
typedef struct audit_stat au_stat_t;

struct audit_fstat {
 u_int64_t af_filesz;
 u_int64_t af_currsz;
};
typedef struct audit_fstat au_fstat_t;

struct au_evclass_map {
 au_event_t ec_number;
 au_class_t ec_class;
};
typedef struct au_evclass_map au_evclass_map_t;

enum audit_session_flags {

 AU_SESSION_FLAG_IS_INITIAL = 0x0001,

 AU_SESSION_FLAG_HAS_GRAPHIC_ACCESS = 0x0010,

 AU_SESSION_FLAG_HAS_TTY = 0x0020,

 AU_SESSION_FLAG_IS_REMOTE = 0x1000,

 AU_SESSION_FLAG_HAS_CONSOLE_ACCESS = 0x2000,

 AU_SESSION_FLAG_HAS_AUTHENTICATED = 0x4000,
};

int audit(const void *, int)
__attribute__((availability(macos,introduced=10.4,deprecated=11.0,message="audit is deprecated")));
int auditon(int, void *, int)
__attribute__((availability(macos,introduced=10.4,deprecated=11.0,message="audit is deprecated")));
int auditctl(const char *)
__attribute__((availability(macos,introduced=10.4,deprecated=11.0,message="audit is deprecated")));
int getauid(au_id_t *);
int setauid(const au_id_t *);
int getaudit_addr(struct auditinfo_addr *, int);
int setaudit_addr(const struct auditinfo_addr *, int);

int getaudit(struct auditinfo *)
__attribute__((availability(macosx,introduced=10.0,deprecated=10.8)));

int setaudit(const struct auditinfo *)
__attribute__((availability(macosx,introduced=10.0,deprecated=10.8)));

mach_port_name_t audit_session_self(void);
au_asid_t audit_session_join(mach_port_name_t port);
int audit_session_port(au_asid_t asid, mach_port_name_t *portname);

struct label;

struct ucred;
struct posix_cred;

typedef struct ucred *kauth_cred_t;
typedef struct posix_cred *posix_cred_t;

struct xucred {
 u_int cr_version;
 uid_t cr_uid;
 short cr_ngroups;
 gid_t cr_groups[16];
};

struct timespec
{
 __darwin_time_t tv_sec;
 long tv_nsec;
};

struct timeval
{
 __darwin_time_t tv_sec;
 __darwin_suseconds_t tv_usec;
};

struct timeval64 {
 __int64_t tv_sec;
 __int64_t tv_usec;
};

struct itimerval {
 struct timeval it_interval;
 struct timeval it_value;
};

struct timezone {
 int tz_minuteswest;
 int tz_dsttime;
};

struct clockinfo {
 int hz;
 int tick;
 int tickadj;
 int stathz;
 int profhz;
};

typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;

typedef __uint32_t __darwin_wctype_t;

struct tm {
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;
 long tm_gmtoff;
 char *tm_zone;
};

extern char *tzname[];

extern int getdate_err;

extern long timezone __asm("_" "timezone" );

extern int daylight;

char *asctime(const struct tm *);
clock_t clock(void) __asm("_" "clock" );
char *ctime(const time_t *);
double difftime(time_t, time_t);
struct tm *getdate(const char *);
struct tm *gmtime(const time_t *);
struct tm *localtime(const time_t *);
time_t mktime(struct tm *) __asm("_" "mktime" );
size_t strftime(char * restrict, size_t, const char * restrict, const struct tm * restrict) __asm("_" "strftime" );
char *strptime(const char * restrict, const char * restrict, struct tm * restrict) __asm("_" "strptime" );
time_t time(time_t *);

void tzset(void);

char *asctime_r(const struct tm * restrict, char * restrict);
char *ctime_r(const time_t *, char *);
struct tm *gmtime_r(const time_t * restrict, struct tm * restrict);
struct tm *localtime_r(const time_t * restrict, struct tm * restrict);

time_t posix2time(time_t);

void tzsetwall(void);
time_t time2posix(time_t);
time_t timelocal(struct tm * const);
time_t timegm(struct tm * const);

int nanosleep(const struct timespec *__rqtp, struct timespec *__rmtp) __asm("_" "nanosleep" );

typedef enum {
_CLOCK_REALTIME __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0))) = 0,

_CLOCK_MONOTONIC __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0))) = 6,

_CLOCK_MONOTONIC_RAW __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0))) = 4,

_CLOCK_MONOTONIC_RAW_APPROX __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0))) = 5,

_CLOCK_UPTIME_RAW __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0))) = 8,

_CLOCK_UPTIME_RAW_APPROX __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0))) = 9,

_CLOCK_PROCESS_CPUTIME_ID __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0))) = 12,

_CLOCK_THREAD_CPUTIME_ID __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0))) = 16

} clockid_t;

__attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)))
int clock_getres(clockid_t __clock_id, struct timespec *__res);

__attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)))
int clock_gettime(clockid_t __clock_id, struct timespec *__tp);

__attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)))
__uint64_t clock_gettime_nsec_np(clockid_t __clock_id);

__attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,unavailable)))
__attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
int clock_settime(clockid_t __clock_id, const struct timespec *__tp);

__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,introduced=13.0))) __attribute__((availability(tvos,introduced=13.0))) __attribute__((availability(watchos,introduced=6.0)))
int timespec_get(struct timespec *ts, int base);

int adjtime(const struct timeval *, struct timeval *);
int futimes(int, const struct timeval *);
int lutimes(const char *, const struct timeval *) __attribute__((availability(macosx,introduced=10.5)));
int settimeofday(const struct timeval *, const struct timezone *);

int getitimer(int, struct itimerval *);
int gettimeofday(struct timeval * restrict, void * restrict);

int select(int, fd_set * restrict, fd_set * restrict,
    fd_set * restrict, struct timeval * restrict)

__asm("_" "select" "$1050")

;

int setitimer(int, const struct itimerval * restrict,
    struct itimerval * restrict);
int utimes(const char *, const struct timeval *);

typedef u_int32_t text_encoding_t;

typedef u_int32_t fsobj_type_t;

typedef u_int32_t fsobj_tag_t;

typedef u_int32_t fsfile_type_t;

typedef u_int32_t fsvolid_t;

typedef struct fsobj_id {
 u_int32_t fid_objno;
 u_int32_t fid_generation;
} fsobj_id_t;

typedef u_int32_t attrgroup_t;

struct attrlist {
 u_short bitmapcount;
 u_int16_t reserved;
 attrgroup_t commonattr;
 attrgroup_t volattr;
 attrgroup_t dirattr;
 attrgroup_t fileattr;
 attrgroup_t forkattr;
};

typedef struct attribute_set {
 attrgroup_t commonattr;
 attrgroup_t volattr;
 attrgroup_t dirattr;
 attrgroup_t fileattr;
 attrgroup_t forkattr;
} attribute_set_t;

typedef struct attrreference {
 int32_t attr_dataoffset;
 u_int32_t attr_length;
} attrreference_t;

struct diskextent {
 u_int32_t startblock;
 u_int32_t blockcount;
};

typedef struct diskextent extentrecord[8];

typedef u_int32_t vol_capabilities_set_t[4];

typedef struct vol_capabilities_attr {
 vol_capabilities_set_t capabilities;
 vol_capabilities_set_t valid;
} vol_capabilities_attr_t;

typedef struct vol_attributes_attr {
 attribute_set_t validattr;
 attribute_set_t nativeattr;
} vol_attributes_attr_t;

struct fssearchblock {
 struct attrlist *returnattrs;
 void *returnbuffer;
 size_t returnbuffersize;
 u_long maxmatches;
 struct timeval timelimit;
 void *searchparams1;
 size_t sizeofsearchparams1;
 void *searchparams2;
 size_t sizeofsearchparams2;
 struct attrlist searchattrs;
};

struct searchstate {
 uint32_t ss_union_flags;
 uint32_t ss_union_layer;
 u_char ss_fsstate[548];
} __attribute__((packed));

typedef struct fsid { int32_t val[2]; } fsid_t;

typedef struct secure_boot_cryptex_args {
 u_int32_t sbc_version;
 u_int32_t sbc_4cc;
 int sbc_authentic_manifest_fd;
 int sbc_user_manifest_fd;
 int sbc_payload_fd;
 u_int64_t sbc_flags;
} __attribute__((aligned(4), packed)) secure_boot_cryptex_args_t;

typedef union graft_args {
 u_int8_t max_size[512];
 secure_boot_cryptex_args_t sbc_args;
} graftdmg_args_un;

struct mount;
typedef struct mount * mount_t;

struct vnode;
typedef struct vnode * vnode_t;

struct statfs64 { uint32_t f_bsize; int32_t f_iosize; uint64_t f_blocks; uint64_t f_bfree; uint64_t f_bavail; uint64_t f_files; uint64_t f_ffree; fsid_t f_fsid; uid_t f_owner; uint32_t f_type; uint32_t f_flags; uint32_t f_fssubtype; char f_fstypename[16]; char f_mntonname[1024]; char f_mntfromname[1024]; uint32_t f_flags_ext; uint32_t f_reserved[7]; };

struct statfs { uint32_t f_bsize; int32_t f_iosize; uint64_t f_blocks; uint64_t f_bfree; uint64_t f_bavail; uint64_t f_files; uint64_t f_ffree; fsid_t f_fsid; uid_t f_owner; uint32_t f_type; uint32_t f_flags; uint32_t f_fssubtype; char f_fstypename[16]; char f_mntonname[1024]; char f_mntfromname[1024]; uint32_t f_flags_ext; uint32_t f_reserved[7]; };

struct vfsstatfs {
 uint32_t f_bsize;
 size_t f_iosize;
 uint64_t f_blocks;
 uint64_t f_bfree;
 uint64_t f_bavail;
 uint64_t f_bused;
 uint64_t f_files;
 uint64_t f_ffree;
 fsid_t f_fsid;
 uid_t f_owner;
 uint64_t f_flags;
 char f_fstypename[16];
 char f_mntonname[1024];
 char f_mntfromname[1024];
 uint32_t f_fssubtype;
 void *f_reserved[2];
};

struct vfsconf {
 uint32_t vfc_reserved1;
 char vfc_name[15];
 int vfc_typenum;
 int vfc_refcount;
 int vfc_flags;
 uint32_t vfc_reserved2;
 uint32_t vfc_reserved3;
};

struct vfsidctl {
 int vc_vers;
 fsid_t vc_fsid;
 void *vc_ptr;
 size_t vc_len;
 u_int32_t vc_spare[12];
};

struct vfsquery {
 u_int32_t vq_flags;
 u_int32_t vq_spare[31];
};

struct vfs_server {
 int32_t vs_minutes;
 u_int8_t vs_server_name[256 * 3];
};

struct netfs_status {
 u_int32_t ns_status;
 char ns_mountopts[512];
 uint32_t ns_waittime;
 uint32_t ns_threadcount;
 uint64_t ns_threadids[0];
};

struct fhandle {
 unsigned int fh_len;
 unsigned char fh_data[128];
};
typedef struct fhandle fhandle_t;

typedef enum : uint32_t { GRAFTDMG_CRYPTEX_BOOT = 1, GRAFTDMG_CRYPTEX_PREBOOT = 2, GRAFTDMG_CRYPTEX_DOWNLEVEL = 3, GRAFTDMG_CRYPTEX_PDI_NONCE = 6, GRAFTDMG_CRYPTEX_EFFECTIVE_AP = 7, GRAFTDMG_CRYPTEX_MAX = 7 } graftdmg_type_t;

typedef enum : uint32_t { CRYPTEX1_AUTH_ENV_GENERIC = 4, CRYPTEX1_AUTH_ENV_GENERIC_SUPPLEMENTAL = 5, CRYPTEX_AUTH_PDI_NONCE = 6, CRYPTEX_AUTH_MAX = 7 } cryptex_auth_type_t;

int fhopen(const struct fhandle *, int);
int fstatfs(int, struct statfs *) __asm("_" "fstatfs" "$INODE64");

int fstatfs64(int, struct statfs64 *) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));

int getfh(const char *, fhandle_t *);
int getfsstat(struct statfs *, int, int) __asm("_" "getfsstat" "$INODE64");

int getfsstat64(struct statfs64 *, int, int) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));

int getmntinfo(struct statfs **, int) __asm("_" "getmntinfo" "$INODE64");
int getmntinfo_r_np(struct statfs **, int) __asm("_" "getmntinfo_r_np" "$INODE64")
__attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0)))
__attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));

int getmntinfo64(struct statfs64 **, int) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));

int mount(const char *, const char *, int, void *);
int fmount(const char *, int, int, void *) __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int statfs(const char *, struct statfs *) __asm("_" "statfs" "$INODE64");

int statfs64(const char *, struct statfs64 *) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));

int unmount(const char *, int);
int getvfsbyname(const char *, struct vfsconf *);

struct ostat {
 __uint16_t st_dev;
 ino_t st_ino;
 mode_t st_mode;
 nlink_t st_nlink;
 __uint16_t st_uid;
 __uint16_t st_gid;
 __uint16_t st_rdev;
 __int32_t st_size;
 struct timespec st_atimespec;
 struct timespec st_mtimespec;
 struct timespec st_ctimespec;
 __int32_t st_blksize;
 __int32_t st_blocks;
 __uint32_t st_flags;
 __uint32_t st_gen;
};

struct stat { dev_t st_dev; mode_t st_mode; nlink_t st_nlink; __darwin_ino64_t st_ino; uid_t st_uid; gid_t st_gid; dev_t st_rdev; struct timespec st_atimespec; struct timespec st_mtimespec; struct timespec st_ctimespec; struct timespec st_birthtimespec; off_t st_size; blkcnt_t st_blocks; blksize_t st_blksize; __uint32_t st_flags; __uint32_t st_gen; __int32_t st_lspare; __int64_t st_qspare[2]; };

struct stat64 { dev_t st_dev; mode_t st_mode; nlink_t st_nlink; __darwin_ino64_t st_ino; uid_t st_uid; gid_t st_gid; dev_t st_rdev; struct timespec st_atimespec; struct timespec st_mtimespec; struct timespec st_ctimespec; struct timespec st_birthtimespec; off_t st_size; blkcnt_t st_blocks; blksize_t st_blksize; __uint32_t st_flags; __uint32_t st_gen; __int32_t st_lspare; __int64_t st_qspare[2]; };

int chmod(const char *, mode_t) __asm("_" "chmod" );
int fchmod(int, mode_t) __asm("_" "fchmod" );
int fstat(int, struct stat *) __asm("_" "fstat" "$INODE64");
int lstat(const char *, struct stat *) __asm("_" "lstat" "$INODE64");
int mkdir(const char *, mode_t);
int mkfifo(const char *, mode_t);
int stat(const char *, struct stat *) __asm("_" "stat" "$INODE64");
int mknod(const char *, mode_t, dev_t);
mode_t umask(mode_t);

int fchmodat(int, const char *, mode_t, int) __attribute__((availability(macosx,introduced=10.10)));
int fstatat(int, const char *, struct stat *, int) __asm("_" "fstatat" "$INODE64") __attribute__((availability(macosx,introduced=10.10)));
int mkdirat(int, const char *, mode_t) __attribute__((availability(macosx,introduced=10.10)));
int mkfifoat(int, const char *, mode_t) __attribute__((availability(macos,introduced=13.0))) __attribute__((availability(ios,introduced=16.0))) __attribute__((availability(tvos,introduced=16.0))) __attribute__((availability(watchos,introduced=9.0)));
int mknodat(int, const char *, mode_t, dev_t) __attribute__((availability(macos,introduced=13.0))) __attribute__((availability(ios,introduced=16.0))) __attribute__((availability(tvos,introduced=16.0))) __attribute__((availability(watchos,introduced=9.0)));

int futimens(int __fd, const struct timespec __times[2]) __attribute__((availability(macos,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int utimensat(int __fd, const char *__path, const struct timespec __times[2],
    int __flag) __attribute__((availability(macos,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));

struct _filesec;
typedef struct _filesec *filesec_t;

int chflags(const char *, __uint32_t);
int chmodx_np(const char *, filesec_t);
int fchflags(int, __uint32_t);
int fchmodx_np(int, filesec_t);
int fstatx_np(int, struct stat *, filesec_t) __asm("_" "fstatx_np" "$INODE64");
int lchflags(const char *, __uint32_t) __attribute__((availability(macosx,introduced=10.5)));
int lchmod(const char *, mode_t) __attribute__((availability(macosx,introduced=10.5)));
int lstatx_np(const char *, struct stat *, filesec_t) __asm("_" "lstatx_np" "$INODE64");
int mkdirx_np(const char *, filesec_t);
int mkfifox_np(const char *, filesec_t);
int statx_np(const char *, struct stat *, filesec_t) __asm("_" "statx_np" "$INODE64");
int umaskx_np(filesec_t) __attribute__((availability(macosx,introduced=10.4,deprecated=10.6)));

int fstatx64_np(int, struct stat64 *, filesec_t) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
int lstatx64_np(const char *, struct stat64 *, filesec_t) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
int statx64_np(const char *, struct stat64 *, filesec_t) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
int fstat64(int, struct stat64 *) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
int lstat64(const char *, struct stat64 *) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));
int stat64(const char *, struct stat64 *) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6)));

ssize_t getxattr(const char *path, const char *name, void *value, size_t size, u_int32_t position, int options);

ssize_t fgetxattr(int fd, const char *name, void *value, size_t size, u_int32_t position, int options);

int setxattr(const char *path, const char *name, const void *value, size_t size, u_int32_t position, int options);

int fsetxattr(int fd, const char *name, const void *value, size_t size, u_int32_t position, int options);

int removexattr(const char *path, const char *name, int options);

int fremovexattr(int fd, const char *name, int options);

ssize_t listxattr(const char *path, char *namebuff, size_t size, int options);

ssize_t flistxattr(int fd, char *namebuff, size_t size, int options);

typedef struct {
 es_string_token_t path;
 _Bool path_truncated;
 struct stat stat;
} es_file_t;

typedef struct {
 uint64_t thread_id;
} es_thread_t;

typedef struct {
 audit_token_t audit_token;
 pid_t ppid;
 pid_t original_ppid;
 pid_t group_id;
 pid_t session_id;
 uint32_t codesigning_flags;
 _Bool is_platform_binary;
 _Bool is_es_client;
 uint8_t cdhash[20];
 es_string_token_t signing_id;
 es_string_token_t team_id;
 es_file_t * _Nonnull executable;
 es_file_t * _Nullable tty;
 struct timeval start_time;
 audit_token_t responsible_audit_token;
 audit_token_t parent_audit_token;
} es_process_t;

typedef struct {
 int flavor;
 es_token_t state;
} es_thread_state_t;

typedef struct {
 int32_t fd;
 uint32_t fdtype;
 union {
  struct {
   uint64_t pipe_id;
  } pipe;
 };
} es_fd_t;

typedef enum {
 ES_BTM_ITEM_TYPE_USER_ITEM,
 ES_BTM_ITEM_TYPE_APP,
 ES_BTM_ITEM_TYPE_LOGIN_ITEM,
 ES_BTM_ITEM_TYPE_AGENT,
 ES_BTM_ITEM_TYPE_DAEMON
} es_btm_item_type_t;

typedef struct {
 es_btm_item_type_t item_type;
 _Bool legacy;
 _Bool managed;
 uid_t uid;
 es_string_token_t item_url;
 es_string_token_t app_url;
} es_btm_launch_item_t;

typedef enum {
    ES_PROFILE_SOURCE_MANAGED,
    ES_PROFILE_SOURCE_INSTALL,
} es_profile_source_t;

typedef struct {
    es_string_token_t identifier;
    es_string_token_t uuid;
    es_profile_source_t install_source;
    es_string_token_t organization;
    es_string_token_t display_name;
    es_string_token_t scope;
} es_profile_t;

typedef struct {
 es_process_t * _Nonnull target;
 es_string_token_t dyld_exec_path;
 union {
  uint8_t reserved[64];
  struct {
   es_file_t * _Nullable script;
   es_file_t * _Nonnull cwd;
   int last_fd;
   cpu_type_t image_cputype;
   cpu_subtype_t image_cpusubtype;
  };
 };
} es_event_exec_t;

typedef struct {
 int32_t fflag;
 es_file_t * _Nonnull file;
 uint8_t reserved[64];
} es_event_open_t;

typedef struct {
 es_string_token_t identifier;
 uint8_t reserved[64];
} es_event_kextload_t;

typedef struct {
 es_string_token_t identifier;
 uint8_t reserved[64];
} es_event_kextunload_t;

typedef struct {
 es_file_t * _Nonnull target;
 es_file_t * _Nonnull parent_dir;
 uint8_t reserved[64];
} es_event_unlink_t;

typedef struct {
 int32_t protection;
 int32_t max_protection;
 int32_t flags;
 uint64_t file_pos;
 es_file_t * _Nonnull source;
 uint8_t reserved[64];
} es_event_mmap_t;

typedef struct {
 es_file_t * _Nonnull source;
 es_file_t * _Nonnull target_dir;
 es_string_token_t target_filename;
 uint8_t reserved[64];
} es_event_link_t;

typedef struct {
 struct statfs * _Nonnull statfs;
 uint8_t reserved[64];
} es_event_mount_t;

typedef struct {
 struct statfs * _Nonnull statfs;
 uint8_t reserved[64];
} es_event_unmount_t;

typedef struct {
 struct statfs * _Nonnull statfs;
 uint8_t reserved[64];
} es_event_remount_t;

typedef struct {
 es_process_t * _Nonnull child;
 uint8_t reserved[64];
} es_event_fork_t;

typedef struct {
 int32_t protection;
 user_addr_t address;
 user_size_t size;
 uint8_t reserved[64];
} es_event_mprotect_t;

typedef struct {
 int sig;
 es_process_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_signal_t;

typedef enum {
 ES_DESTINATION_TYPE_EXISTING_FILE,
 ES_DESTINATION_TYPE_NEW_PATH,
} es_destination_type_t;

typedef struct {
 es_file_t * _Nonnull source;
 es_destination_type_t destination_type;
 union {
  es_file_t * _Nonnull existing_file;
  struct {
   es_file_t * _Nonnull dir;
   es_string_token_t filename;
  } new_path;
 } destination;
 uint8_t reserved[64];
} es_event_rename_t;

typedef struct {
 es_file_t * _Nonnull target;
 es_string_token_t extattr;
 uint8_t reserved[64];
} es_event_setextattr_t;

typedef struct {
 es_file_t * _Nonnull target;
 es_string_token_t extattr;
 uint8_t reserved[64];
} es_event_getextattr_t;

typedef struct {
 es_file_t * _Nonnull target;
 es_string_token_t extattr;
 uint8_t reserved[64];
} es_event_deleteextattr_t;

typedef struct {
 mode_t mode;
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_setmode_t;

typedef struct {
 uint32_t flags;
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_setflags_t;

typedef struct {
 uid_t uid;
 gid_t gid;
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_setowner_t;

typedef struct {
 _Bool modified;
 es_file_t * _Nonnull target;
 union {
  uint8_t reserved[64];
  struct {
   _Bool was_mapped_writable;
  };
 };
} es_event_close_t;

typedef struct {
 es_destination_type_t destination_type;
 union {
  es_file_t * _Nonnull existing_file;
  struct {
   es_file_t * _Nonnull dir;
   es_string_token_t filename;
   mode_t mode;
  } new_path;
 } destination;
 uint8_t reserved2[16];
 union {
  uint8_t reserved[48];
  struct {
   acl_t _Nullable acl;
  };
 };
} es_event_create_t;

typedef struct {
 int stat;
 uint8_t reserved[64];
} es_event_exit_t;

typedef struct {
 es_file_t * _Nonnull file1;
 es_file_t * _Nonnull file2;
 uint8_t reserved[64];
} es_event_exchangedata_t;

typedef struct {
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_write_t;

typedef struct {
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_truncate_t;

typedef struct {
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_chdir_t;

typedef struct {
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_stat_t;

typedef struct {
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_chroot_t;

typedef struct {
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_listextattr_t;

typedef struct {
 uint32_t user_client_type;
 es_string_token_t user_client_class;
 uint8_t reserved[64];
} es_event_iokit_open_t;

typedef enum {

 ES_GET_TASK_TYPE_TASK_FOR_PID,

 ES_GET_TASK_TYPE_EXPOSE_TASK,

 ES_GET_TASK_TYPE_IDENTITY_TOKEN,
} es_get_task_type_t;

typedef struct {
 es_process_t * _Nonnull target;
 es_get_task_type_t type;
 uint8_t reserved[60];
} es_event_get_task_t;

typedef struct {
 es_process_t * _Nonnull target;
 es_get_task_type_t type;
 uint8_t reserved[60];
} es_event_get_task_read_t;

typedef struct {
 es_process_t * _Nonnull target;
 es_get_task_type_t type;
 uint8_t reserved[60];
} es_event_get_task_inspect_t;

typedef struct {
 es_process_t * _Nonnull target;
 es_get_task_type_t type;
 uint8_t reserved[60];
} es_event_get_task_name_t;

typedef struct {
 struct attrlist attrlist;
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_getattrlist_t;

typedef struct {
 struct attrlist attrlist;
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_setattrlist_t;

typedef struct {
 es_file_t * _Nonnull source;
 es_string_token_t target_path;
 uint8_t reserved[64];
} es_event_file_provider_update_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 es_file_t * _Nonnull source;
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_file_provider_materialize_t;

typedef struct {
 es_file_t * _Nonnull source;
 uint8_t reserved[64];
} es_event_readlink_t;

typedef struct {
 es_file_t * _Nonnull source_dir;
 es_string_token_t relative_target;
 uint8_t reserved[64];
} es_event_lookup_t;

typedef struct {
 int32_t mode;
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_access_t;

typedef struct {
 es_file_t * _Nonnull target;
 struct timespec atime;
 struct timespec mtime;
 uint8_t reserved[64];
} es_event_utimes_t;

typedef struct {
 es_file_t * _Nonnull source;
 es_file_t * _Nonnull target_dir;
 es_string_token_t target_name;
 uint8_t reserved[64];
} es_event_clone_t;

typedef struct {
 es_file_t * _Nonnull source;
 es_file_t * _Nullable target_file;
 es_file_t * _Nonnull target_dir;
 es_string_token_t target_name;
 mode_t mode;
 int32_t flags;
 uint8_t reserved[56];
} es_event_copyfile_t;

typedef struct {
 es_file_t * _Nonnull target;
 int32_t cmd;
 uint8_t reserved[64];
} es_event_fcntl_t;

typedef struct {
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_readdir_t;

typedef struct {
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_fsgetpath_t;

typedef struct {
 uint8_t reserved[64];
} es_event_settime_t;

typedef struct {
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_dup_t;

typedef struct {
 es_file_t * _Nonnull dir;
 es_string_token_t filename;
 mode_t mode;
 uint8_t reserved[64];
} es_event_uipc_bind_t;

typedef struct {
 es_file_t * _Nonnull file;
 int domain;
 int type;
 int protocol;
 uint8_t reserved[64];
} es_event_uipc_connect_t;

typedef struct {
 es_file_t * _Nonnull target;
 es_set_or_clear_t set_or_clear;
 union {
  acl_t _Nonnull set;
 } acl;
 uint8_t reserved[64];
} es_event_setacl_t;

typedef struct {
 dev_t dev;
 uint8_t reserved[64];
} es_event_pty_grant_t;

typedef struct {
 dev_t dev;
 uint8_t reserved[64];
} es_event_pty_close_t;

typedef struct {
 es_process_t * _Nullable target;
 es_proc_check_type_t type;
 int flavor;
 uint8_t reserved[64];
} es_event_proc_check_t;

typedef struct {
 struct attrlist attrlist;
 es_file_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_searchfs_t;

typedef enum {
 ES_PROC_SUSPEND_RESUME_TYPE_SUSPEND = 0,
 ES_PROC_SUSPEND_RESUME_TYPE_RESUME = 1,
 ES_PROC_SUSPEND_RESUME_TYPE_SHUTDOWN_SOCKETS = 3,
} es_proc_suspend_resume_type_t;

typedef struct {
 es_process_t * _Nullable target;
 es_proc_suspend_resume_type_t type;
 uint8_t reserved[64];
} es_event_proc_suspend_resume_t;

typedef struct {
 uint8_t reserved[64];
} es_event_cs_invalidated_t;

typedef struct {
 es_process_t * _Nonnull target;
 uint8_t reserved[64];
} es_event_trace_t;

typedef struct {
 es_process_t * _Nonnull target;
 es_thread_state_t * _Nullable thread_state;
 uint8_t reserved[64];
} es_event_remote_thread_create_t;

typedef struct {
 uid_t uid;
 uint8_t reserved[64];
} es_event_setuid_t;

typedef struct {
 uid_t gid;
 uint8_t reserved[64];
} es_event_setgid_t;

typedef struct {
 uid_t euid;
 uint8_t reserved[64];
} es_event_seteuid_t;

typedef struct {
 uid_t egid;
 uint8_t reserved[64];
} es_event_setegid_t;

typedef struct {
 uid_t ruid;
 uid_t euid;
 uint8_t reserved[64];
} es_event_setreuid_t;

typedef struct {
 uid_t rgid;
 uid_t egid;
 uint8_t reserved[64];
} es_event_setregid_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 es_string_token_t record_type;
 es_string_token_t record_name;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_authentication_od_t;

typedef enum {
 ES_TOUCHID_MODE_VERIFICATION,
 ES_TOUCHID_MODE_IDENTIFICATION
} es_touchid_mode_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 es_touchid_mode_t touchid_mode;
 _Bool has_uid;
 union {
  uid_t uid;
 } uid;
} es_event_authentication_touchid_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 es_string_token_t pubkey_hash;
 es_string_token_t token_id;
 es_string_token_t kerberos_principal;
} es_event_authentication_token_t;

typedef enum {

 ES_AUTO_UNLOCK_MACHINE_UNLOCK = 1,

 ES_AUTO_UNLOCK_AUTH_PROMPT = 2
} es_auto_unlock_type_t;

typedef struct {
 es_string_token_t username;
 es_auto_unlock_type_t type;
} es_event_authentication_auto_unlock_t;

typedef struct {
 _Bool success;
 es_authentication_type_t type;
 union {
  es_event_authentication_od_t * _Nonnull od;
  es_event_authentication_touchid_t * _Nonnull touchid;
  es_event_authentication_token_t * _Nonnull token;
  es_event_authentication_auto_unlock_t * _Nonnull auto_unlock;
 } data;
} es_event_authentication_t;

typedef struct {
 es_string_token_t signature_version;
 es_string_token_t malware_identifier;
 es_string_token_t incident_identifier;
 es_string_token_t detected_path;
} es_event_xp_malware_detected_t;

typedef struct {
 es_string_token_t signature_version;
 es_string_token_t malware_identifier;
 es_string_token_t incident_identifier;
 es_string_token_t action_type;
 _Bool success;
 es_string_token_t result_description;
 es_string_token_t remediated_path;
 audit_token_t * _Nullable remediated_process_audit_token;
} es_event_xp_malware_remediated_t;

typedef uint32_t es_graphical_session_id_t;

typedef struct {
 es_string_token_t username;
 es_graphical_session_id_t graphical_session_id;
} es_event_lw_session_login_t;

typedef struct {
 es_string_token_t username;
 es_graphical_session_id_t graphical_session_id;
} es_event_lw_session_logout_t;

typedef struct {
 es_string_token_t username;
 es_graphical_session_id_t graphical_session_id;
} es_event_lw_session_lock_t;

typedef struct {
 es_string_token_t username;
 es_graphical_session_id_t graphical_session_id;
} es_event_lw_session_unlock_t;

typedef struct {
 _Bool success;
 es_address_type_t source_address_type;
 es_string_token_t source_address;
 es_string_token_t viewer_appleid;
 es_string_token_t authentication_type;
 es_string_token_t authentication_username;
 es_string_token_t session_username;
 _Bool existing_session;
 es_graphical_session_id_t graphical_session_id;
} es_event_screensharing_attach_t;

typedef struct {
 es_address_type_t source_address_type;
 es_string_token_t source_address;
 es_string_token_t viewer_appleid;
 es_graphical_session_id_t graphical_session_id;
} es_event_screensharing_detach_t;

typedef enum {
 ES_OPENSSH_LOGIN_EXCEED_MAXTRIES = 0,
 ES_OPENSSH_LOGIN_ROOT_DENIED = 1,
 ES_OPENSSH_AUTH_SUCCESS = 2,
 ES_OPENSSH_AUTH_FAIL_NONE = 3,
 ES_OPENSSH_AUTH_FAIL_PASSWD = 4,
 ES_OPENSSH_AUTH_FAIL_KBDINT = 5,
 ES_OPENSSH_AUTH_FAIL_PUBKEY = 6,
 ES_OPENSSH_AUTH_FAIL_HOSTBASED = 7,
 ES_OPENSSH_AUTH_FAIL_GSSAPI = 8,
 ES_OPENSSH_INVALID_USER = 9,
} es_openssh_login_result_type_t;

typedef struct {
 _Bool success;
 es_openssh_login_result_type_t result_type;
 es_address_type_t source_address_type;
 es_string_token_t source_address;
 es_string_token_t username;
 _Bool has_uid;
 union {
  uid_t uid;
 } uid;
} es_event_openssh_login_t;

typedef struct {
 es_address_type_t source_address_type;
 es_string_token_t source_address;
 es_string_token_t username;
 uid_t uid;
} es_event_openssh_logout_t;

typedef struct {
 _Bool success;
 es_string_token_t failure_message;
 es_string_token_t username;
 _Bool has_uid;
 union {
  uid_t uid;
 } uid;
} es_event_login_login_t;

typedef struct {
 es_string_token_t username;
 uid_t uid;
} es_event_login_logout_t;

typedef struct {
 es_process_t * _Nullable instigator;
 es_process_t * _Nullable app;
 es_btm_launch_item_t * _Nonnull item;
 es_string_token_t executable_path;
} es_event_btm_launch_item_add_t;

typedef struct {
 es_process_t * _Nullable instigator;
 es_process_t * _Nullable app;
 es_btm_launch_item_t * _Nonnull item;
} es_event_btm_launch_item_remove_t;

typedef struct {
 _Bool success;
 es_string_token_t failure_message;
 uid_t from_uid;
 es_string_token_t from_username;
 _Bool has_to_uid;
 union {
  uid_t uid;
 } to_uid;
 es_string_token_t to_username;
 es_string_token_t shell;
 size_t argc;
 es_string_token_t * _Nullable argv;
 size_t env_count;
 es_string_token_t * _Nullable env;
} es_event_su_t;

typedef enum {
 ES_SUDO_PLUGIN_TYPE_UNKNOWN,
 ES_SUDO_PLUGIN_TYPE_FRONT_END,
 ES_SUDO_PLUGIN_TYPE_POLICY,
 ES_SUDO_PLUGIN_TYPE_IO,
 ES_SUDO_PLUGIN_TYPE_AUDIT,
 ES_SUDO_PLUGIN_TYPE_APPROVAL,
} es_sudo_plugin_type_t;

typedef struct {
 es_string_token_t plugin_name;
 es_sudo_plugin_type_t plugin_type;
 es_string_token_t failure_message;
} es_sudo_reject_info_t;

typedef struct {
 _Bool success;
 es_sudo_reject_info_t* _Nullable reject_info;
 _Bool has_from_uid;
 union {
  uid_t uid;
 } from_uid;

 es_string_token_t from_username;

 _Bool has_to_uid;
 union {
  uid_t uid;
 } to_uid;

 es_string_token_t to_username;
 es_string_token_t command;

} es_event_sudo_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 _Bool is_update;
 es_profile_t * _Nonnull profile;
} es_event_profile_add_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 es_profile_t * _Nonnull profile;
} es_event_profile_remove_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 es_process_t * _Nullable petitioner;
 uint32_t flags;
 size_t right_count;
 es_string_token_t * _Nullable rights;
} es_event_authorization_petition_t;

typedef struct {
 es_string_token_t right_name;
 es_authorization_rule_class_t rule_class;
 _Bool granted;
} es_authorization_result_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 es_process_t * _Nullable petitioner;
 int return_code;
 size_t result_count;
 es_authorization_result_t * _Nullable results;
} es_event_authorization_judgement_t;

typedef struct {
 es_od_member_type_t member_type;
 union {
  uuid_t uuid;
  es_string_token_t name;
 } member_value;
} es_od_member_id_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_string_token_t group_name;
 es_od_member_id_t * _Nonnull member;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_group_add_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_string_token_t group_name;
 es_od_member_id_t * _Nonnull member;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_group_remove_t;

typedef struct {
 es_od_member_type_t member_type;
 size_t member_count;
 union {
  uuid_t * _Nonnull uuids;
  es_string_token_t * _Nonnull names;
 } member_array;
} es_od_member_id_array_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_string_token_t group_name;
 es_od_member_id_array_t * _Nonnull members;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_group_set_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_od_account_type_t account_type;
 es_string_token_t account_name;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_modify_password_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_string_token_t user_name;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_disable_user_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_string_token_t user_name;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_enable_user_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_od_record_type_t record_type;
 es_string_token_t record_name;
 es_string_token_t attribute_name;
 es_string_token_t attribute_value;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_attribute_value_add_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_od_record_type_t record_type;
 es_string_token_t record_name;
 es_string_token_t attribute_name;
 es_string_token_t attribute_value;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_attribute_value_remove_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_od_record_type_t record_type;
 es_string_token_t record_name;
 es_string_token_t attribute_name;
 size_t attribute_value_count;
 es_string_token_t * _Nullable attribute_values;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_attribute_set_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_string_token_t user_name;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_create_user_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_string_token_t group_name;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_create_group_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_string_token_t user_name;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_delete_user_t;

typedef struct {
 es_process_t * _Nonnull instigator;
 int error_code;
 es_string_token_t group_name;
 es_string_token_t node_name;
 es_string_token_t db_path;
} es_event_od_delete_group_t;

typedef struct {
 es_string_token_t service_name;
 es_xpc_domain_type_t service_domain_type;
} es_event_xpc_connect_t;

typedef union {

 es_event_access_t access;
 es_event_chdir_t chdir;
 es_event_chroot_t chroot;
 es_event_clone_t clone;
 es_event_close_t close;
 es_event_copyfile_t copyfile;
 es_event_create_t create;
 es_event_cs_invalidated_t cs_invalidated;
 es_event_deleteextattr_t deleteextattr;
 es_event_dup_t dup;
 es_event_exchangedata_t exchangedata;
 es_event_exec_t exec;
 es_event_exit_t exit;
 es_event_file_provider_materialize_t file_provider_materialize;
 es_event_file_provider_update_t file_provider_update;
 es_event_fcntl_t fcntl;
 es_event_fork_t fork;
 es_event_fsgetpath_t fsgetpath;
 es_event_get_task_t get_task;
 es_event_get_task_read_t get_task_read;
 es_event_get_task_inspect_t get_task_inspect;
 es_event_get_task_name_t get_task_name;
 es_event_getattrlist_t getattrlist;
 es_event_getextattr_t getextattr;
 es_event_iokit_open_t iokit_open;
 es_event_kextload_t kextload;
 es_event_kextunload_t kextunload;
 es_event_link_t link;
 es_event_listextattr_t listextattr;
 es_event_lookup_t lookup;
 es_event_mmap_t mmap;
 es_event_mount_t mount;
 es_event_mprotect_t mprotect;
 es_event_open_t open;
 es_event_proc_check_t proc_check;
 es_event_proc_suspend_resume_t proc_suspend_resume;
 es_event_pty_close_t pty_close;
 es_event_pty_grant_t pty_grant;
 es_event_readdir_t readdir;
 es_event_readlink_t readlink;
 es_event_remote_thread_create_t remote_thread_create;
 es_event_remount_t remount;
 es_event_rename_t rename;
 es_event_searchfs_t searchfs;
 es_event_setacl_t setacl;
 es_event_setattrlist_t setattrlist;
 es_event_setextattr_t setextattr;
 es_event_setflags_t setflags;
 es_event_setmode_t setmode;
 es_event_setowner_t setowner;
 es_event_settime_t settime;
 es_event_setuid_t setuid;
 es_event_setgid_t setgid;
 es_event_seteuid_t seteuid;
 es_event_setegid_t setegid;
 es_event_setreuid_t setreuid;
 es_event_setregid_t setregid;
 es_event_signal_t signal;
 es_event_stat_t stat;
 es_event_trace_t trace;
 es_event_truncate_t truncate;
 es_event_uipc_bind_t uipc_bind;
 es_event_uipc_connect_t uipc_connect;
 es_event_unlink_t unlink;
 es_event_unmount_t unmount;
 es_event_utimes_t utimes;
 es_event_write_t write;

 es_event_authentication_t * _Nonnull authentication;
 es_event_xp_malware_detected_t * _Nonnull xp_malware_detected;
 es_event_xp_malware_remediated_t * _Nonnull xp_malware_remediated;
 es_event_lw_session_login_t * _Nonnull lw_session_login;
 es_event_lw_session_logout_t * _Nonnull lw_session_logout;
 es_event_lw_session_lock_t * _Nonnull lw_session_lock;
 es_event_lw_session_unlock_t * _Nonnull lw_session_unlock;
 es_event_screensharing_attach_t * _Nonnull screensharing_attach;
 es_event_screensharing_detach_t * _Nonnull screensharing_detach;
 es_event_openssh_login_t * _Nonnull openssh_login;
 es_event_openssh_logout_t * _Nonnull openssh_logout;
 es_event_login_login_t * _Nonnull login_login;
 es_event_login_logout_t * _Nonnull login_logout;
 es_event_btm_launch_item_add_t * _Nonnull btm_launch_item_add;
 es_event_btm_launch_item_remove_t * _Nonnull btm_launch_item_remove;
 es_event_profile_add_t * _Nonnull profile_add;
 es_event_profile_remove_t * _Nonnull profile_remove;
 es_event_su_t * _Nonnull su;
 es_event_authorization_petition_t * _Nonnull authorization_petition;
 es_event_authorization_judgement_t * _Nonnull authorization_judgement;
 es_event_sudo_t * _Nonnull sudo;
 es_event_od_group_add_t * _Nonnull od_group_add;
 es_event_od_group_remove_t * _Nonnull od_group_remove;
 es_event_od_group_set_t * _Nonnull od_group_set;
 es_event_od_modify_password_t * _Nonnull od_modify_password;
 es_event_od_disable_user_t * _Nonnull od_disable_user;
 es_event_od_enable_user_t * _Nonnull od_enable_user;
 es_event_od_attribute_value_add_t * _Nonnull od_attribute_value_add;
 es_event_od_attribute_value_remove_t * _Nonnull od_attribute_value_remove;
 es_event_od_attribute_set_t * _Nonnull od_attribute_set;
 es_event_od_create_user_t * _Nonnull od_create_user;
 es_event_od_create_group_t * _Nonnull od_create_group;
 es_event_od_delete_user_t * _Nonnull od_delete_user;
 es_event_od_delete_group_t * _Nonnull od_delete_group;
 es_event_xpc_connect_t * _Nonnull xpc_connect;
} es_events_t;

typedef struct {
 es_result_type_t result_type;
 union {
  es_auth_result_t auth;
  uint32_t flags;
  uint8_t reserved[32];
 } result;
} es_result_t;

typedef struct {
 uint32_t version;
 struct timespec time;
 uint64_t mach_time;
 uint64_t deadline;
 es_process_t * _Nonnull process;
 uint64_t seq_num;
 es_action_type_t action_type;
 union {
  es_event_id_t auth;
  es_result_t notify;
 } action;
 es_event_type_t event_type;
 es_events_t event;
 es_thread_t * _Nullable thread;
 uint64_t global_seq_num;
 uint64_t opaque[];
} es_message_t;

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15,deprecated=11.0,message="Please use es_retain_message to retain a message. Do not use this in conjunction with attempting to copy a message, doing so will result in use-after-free bugs.")))
__attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
size_t
es_message_size(const es_message_t * _Nonnull msg);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15,deprecated=11.0,message="Use es_retain_message to retain a message.")))
__attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_message_t * _Nullable
es_copy_message(const es_message_t * _Nonnull msg);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15,deprecated=11.0,message="Use es_release_message to release a message.")))
__attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
void
es_free_message(es_message_t * _Nonnull msg);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=11.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
void
es_retain_message(const es_message_t * _Nonnull msg);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=11.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
void
es_release_message(const es_message_t * _Nonnull msg);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
uint32_t
es_exec_arg_count(const es_event_exec_t * _Nonnull event);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
uint32_t
es_exec_env_count(const es_event_exec_t * _Nonnull event);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=11.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
uint32_t
es_exec_fd_count(const es_event_exec_t * _Nonnull event);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_string_token_t
es_exec_arg(const es_event_exec_t * _Nonnull event, uint32_t index);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_string_token_t
es_exec_env(const es_event_exec_t * _Nonnull event, uint32_t index);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=11.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
const es_fd_t * _Nonnull
es_exec_fd(const es_event_exec_t * _Nonnull event, uint32_t index);

typedef struct statfs es_statfs_t;

struct es_client_s;

typedef struct es_client_s es_client_t;

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_subscribe(es_client_t * _Nonnull client, const es_event_type_t * _Nonnull events, uint32_t event_count);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_unsubscribe(es_client_t * _Nonnull client, const es_event_type_t * _Nonnull events, uint32_t event_count);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_unsubscribe_all(es_client_t * _Nonnull client);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_subscriptions(es_client_t * _Nonnull client, size_t * _Nonnull count,
  es_event_type_t * _Nonnull * _Nullable subscriptions);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_respond_result_t
es_respond_auth_result(es_client_t * _Nonnull client, const es_message_t * _Nonnull message, es_auth_result_t result, _Bool cache);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_respond_result_t
es_respond_flags_result(es_client_t * _Nonnull client, const es_message_t * _Nonnull message, uint32_t authorized_flags, _Bool cache);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_mute_process(es_client_t * _Nonnull client, const audit_token_t * _Nonnull audit_token);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=12.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_mute_process_events(es_client_t * _Nonnull client, const audit_token_t * _Nonnull audit_token, const es_event_type_t * _Nonnull events, size_t event_count);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_unmute_process(es_client_t * _Nonnull client, const audit_token_t *_Nonnull audit_token);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=12.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_unmute_process_events(es_client_t * _Nonnull client, const audit_token_t * _Nonnull audit_token, const es_event_type_t * _Nonnull events, size_t event_count);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15,deprecated=12.0,message="Please use es_muted_processes_events.")))
__attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_muted_processes(es_client_t * _Nonnull client, size_t * _Nonnull count, audit_token_t * _Nonnull * _Nullable audit_tokens);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=12.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_muted_processes_events(es_client_t * _Nonnull client, es_muted_processes_t * _Nullable * _Nonnull muted_processes);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=12.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
void
es_release_muted_processes(es_muted_processes_t * _Nonnull muted_processes);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=12.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_mute_path(es_client_t * _Nonnull client, const char * _Nonnull path, es_mute_path_type_t type);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=12.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_mute_path_events(es_client_t * _Nonnull client, const char * _Nonnull path, es_mute_path_type_t type, const es_event_type_t * _Nonnull events, size_t event_count);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15,deprecated=12.0,message="Please use es_mute_path or es_mute_path_events.")))
__attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_mute_path_prefix(es_client_t * _Nonnull client, const char * _Nonnull path_prefix);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15,deprecated=12.0,message="Please use es_mute_path or es_mute_path_events.")))
__attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_mute_path_literal(es_client_t * _Nonnull client, const char * _Nonnull path_literal);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_unmute_all_paths(es_client_t * _Nonnull client);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=13.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_unmute_all_target_paths(es_client_t * _Nonnull client);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=12.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_unmute_path(es_client_t * _Nonnull client, const char * _Nonnull path, es_mute_path_type_t type);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=12.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_unmute_path_events(es_client_t * _Nonnull client, const char * _Nonnull path, es_mute_path_type_t type,
  const es_event_type_t * _Nonnull events, size_t event_count);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=12.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_muted_paths_events(es_client_t * _Nonnull client, es_muted_paths_t * _Nonnull * _Nullable muted_paths);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=12.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
void
es_release_muted_paths(es_muted_paths_t * _Nonnull muted_paths);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=13.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_invert_muting(es_client_t * _Nonnull client, es_mute_inversion_type_t mute_type);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=13.0))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_mute_inverted_return_t
es_muting_inverted(es_client_t * _Nonnull client, es_mute_inversion_type_t mute_type);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_clear_cache_result_t
es_clear_cache(es_client_t * _Nonnull client);

typedef void (^es_handler_block_t)(es_client_t * _Nonnull, const es_message_t * _Nonnull);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_new_client_result_t
es_new_client(es_client_t * _Nullable * _Nonnull client, es_handler_block_t _Nonnull handler);

extern __attribute__((__visibility__("default")))
__attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)))
es_return_t
es_delete_client(es_client_t * _Nullable client);

           ;

int main(int argc, const char * argv[]) {
    return 0;
}
