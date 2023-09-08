
#include "swr.h"

size_t swr_mach_msg_type_descriptor_t_size(mach_msg_type_descriptor_t *mach_msg_type_descriptor) {
    size_t size = 0;
	size += sizeof(natural_t);
	size += sizeof(mach_msg_size_t);
	size += sizeof(unsigned int);
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_type_descriptor_t_write(mach_msg_type_descriptor_t *mach_msg_type_descriptor, void *p) {
    size_t size = 0;
	*(natural_t*)(p+size) = mach_msg_type_descriptor->pad1;
	size += sizeof(natural_t);
	*(mach_msg_size_t*)(p+size) = mach_msg_type_descriptor->pad2;
	size += sizeof(mach_msg_size_t);
	*(unsigned int*)(p+size) = mach_msg_type_descriptor->pad3;
	size += sizeof(unsigned int);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_type_descriptor->type;
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_type_descriptor_t_read(mach_msg_type_descriptor_t *mach_msg_type_descriptor, void *p) {
    size_t size = 0;
	mach_msg_type_descriptor->pad1 = *(natural_t*)(p+size);
	size += sizeof(natural_t);
	mach_msg_type_descriptor->pad2 = *(mach_msg_size_t*)(p+size);
	size += sizeof(mach_msg_size_t);
	mach_msg_type_descriptor->pad3 = *(unsigned int*)(p+size);
	size += sizeof(unsigned int);
	mach_msg_type_descriptor->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_port_descriptor_t_size(mach_msg_port_descriptor_t *mach_msg_port_descriptor) {
    size_t size = 0;
	size += sizeof(mach_port_t);
	size += sizeof(mach_msg_size_t);
	size += sizeof(unsigned int);
	size += sizeof(mach_msg_type_name_t);
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_port_descriptor_t_write(mach_msg_port_descriptor_t *mach_msg_port_descriptor, void *p) {
    size_t size = 0;
	*(mach_port_t*)(p+size) = mach_msg_port_descriptor->name;
	size += sizeof(mach_port_t);
	*(mach_msg_size_t*)(p+size) = mach_msg_port_descriptor->pad1;
	size += sizeof(mach_msg_size_t);
	*(unsigned int*)(p+size) = mach_msg_port_descriptor->pad2;
	size += sizeof(unsigned int);
	*(mach_msg_type_name_t*)(p+size) = mach_msg_port_descriptor->disposition;
	size += sizeof(mach_msg_type_name_t);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_port_descriptor->type;
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_port_descriptor_t_read(mach_msg_port_descriptor_t *mach_msg_port_descriptor, void *p) {
    size_t size = 0;
	mach_msg_port_descriptor->name = *(mach_port_t*)(p+size);
	size += sizeof(mach_port_t);
	mach_msg_port_descriptor->pad1 = *(mach_msg_size_t*)(p+size);
	size += sizeof(mach_msg_size_t);
	mach_msg_port_descriptor->pad2 = *(unsigned int*)(p+size);
	size += sizeof(unsigned int);
	mach_msg_port_descriptor->disposition = *(mach_msg_type_name_t*)(p+size);
	size += sizeof(mach_msg_type_name_t);
	mach_msg_port_descriptor->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_ool_descriptor32_t_size(mach_msg_ool_descriptor32_t *mach_msg_ool_descriptor32) {
    size_t size = 0;
	size += sizeof(uint32_t);
	size += sizeof(mach_msg_size_t);
	size += sizeof(boolean_t);
	size += sizeof(mach_msg_copy_options_t);
	size += sizeof(unsigned int);
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_ool_descriptor32_t_write(mach_msg_ool_descriptor32_t *mach_msg_ool_descriptor32, void *p) {
    size_t size = 0;
	*(uint32_t*)(p+size) = mach_msg_ool_descriptor32->address;
	size += sizeof(uint32_t);
	*(mach_msg_size_t*)(p+size) = mach_msg_ool_descriptor32->size;
	size += sizeof(mach_msg_size_t);
	*(boolean_t*)(p+size) = mach_msg_ool_descriptor32->deallocate;
	size += sizeof(boolean_t);
	*(mach_msg_copy_options_t*)(p+size) = mach_msg_ool_descriptor32->copy;
	size += sizeof(mach_msg_copy_options_t);
	*(unsigned int*)(p+size) = mach_msg_ool_descriptor32->pad1;
	size += sizeof(unsigned int);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_ool_descriptor32->type;
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_ool_descriptor32_t_read(mach_msg_ool_descriptor32_t *mach_msg_ool_descriptor32, void *p) {
    size_t size = 0;
	mach_msg_ool_descriptor32->address = *(uint32_t*)(p+size);
	size += sizeof(uint32_t);
	mach_msg_ool_descriptor32->size = *(mach_msg_size_t*)(p+size);
	size += sizeof(mach_msg_size_t);
	mach_msg_ool_descriptor32->deallocate = *(boolean_t*)(p+size);
	size += sizeof(boolean_t);
	mach_msg_ool_descriptor32->copy = *(mach_msg_copy_options_t*)(p+size);
	size += sizeof(mach_msg_copy_options_t);
	mach_msg_ool_descriptor32->pad1 = *(unsigned int*)(p+size);
	size += sizeof(unsigned int);
	mach_msg_ool_descriptor32->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_ool_descriptor64_t_size(mach_msg_ool_descriptor64_t *mach_msg_ool_descriptor64) {
    size_t size = 0;
	size += sizeof(uint64_t);
	size += sizeof(boolean_t);
	size += sizeof(mach_msg_copy_options_t);
	size += sizeof(unsigned int);
	size += sizeof(mach_msg_descriptor_type_t);
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_descriptor64_t_write(mach_msg_ool_descriptor64_t *mach_msg_ool_descriptor64, void *p) {
    size_t size = 0;
	*(uint64_t*)(p+size) = mach_msg_ool_descriptor64->address;
	size += sizeof(uint64_t);
	*(boolean_t*)(p+size) = mach_msg_ool_descriptor64->deallocate;
	size += sizeof(boolean_t);
	*(mach_msg_copy_options_t*)(p+size) = mach_msg_ool_descriptor64->copy;
	size += sizeof(mach_msg_copy_options_t);
	*(unsigned int*)(p+size) = mach_msg_ool_descriptor64->pad1;
	size += sizeof(unsigned int);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_ool_descriptor64->type;
	size += sizeof(mach_msg_descriptor_type_t);
	*(mach_msg_size_t*)(p+size) = mach_msg_ool_descriptor64->size;
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_descriptor64_t_read(mach_msg_ool_descriptor64_t *mach_msg_ool_descriptor64, void *p) {
    size_t size = 0;
	mach_msg_ool_descriptor64->address = *(uint64_t*)(p+size);
	size += sizeof(uint64_t);
	mach_msg_ool_descriptor64->deallocate = *(boolean_t*)(p+size);
	size += sizeof(boolean_t);
	mach_msg_ool_descriptor64->copy = *(mach_msg_copy_options_t*)(p+size);
	size += sizeof(mach_msg_copy_options_t);
	mach_msg_ool_descriptor64->pad1 = *(unsigned int*)(p+size);
	size += sizeof(unsigned int);
	mach_msg_ool_descriptor64->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
	mach_msg_ool_descriptor64->size = *(mach_msg_size_t*)(p+size);
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_descriptor_t_size(mach_msg_ool_descriptor_t *mach_msg_ool_descriptor) {
    size_t size = 0;
	size += sizeof(boolean_t);
	size += sizeof(mach_msg_copy_options_t);
	size += sizeof(unsigned int);
	size += sizeof(mach_msg_descriptor_type_t);
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_descriptor_t_write(mach_msg_ool_descriptor_t *mach_msg_ool_descriptor, void *p) {
    size_t size = 0;
	*(boolean_t*)(p+size) = mach_msg_ool_descriptor->deallocate;
	size += sizeof(boolean_t);
	*(mach_msg_copy_options_t*)(p+size) = mach_msg_ool_descriptor->copy;
	size += sizeof(mach_msg_copy_options_t);
	*(unsigned int*)(p+size) = mach_msg_ool_descriptor->pad1;
	size += sizeof(unsigned int);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_ool_descriptor->type;
	size += sizeof(mach_msg_descriptor_type_t);
	*(mach_msg_size_t*)(p+size) = mach_msg_ool_descriptor->size;
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_descriptor_t_read(mach_msg_ool_descriptor_t *mach_msg_ool_descriptor, void *p) {
    size_t size = 0;
	mach_msg_ool_descriptor->deallocate = *(boolean_t*)(p+size);
	size += sizeof(boolean_t);
	mach_msg_ool_descriptor->copy = *(mach_msg_copy_options_t*)(p+size);
	size += sizeof(mach_msg_copy_options_t);
	mach_msg_ool_descriptor->pad1 = *(unsigned int*)(p+size);
	size += sizeof(unsigned int);
	mach_msg_ool_descriptor->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
	mach_msg_ool_descriptor->size = *(mach_msg_size_t*)(p+size);
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_ports_descriptor32_t_size(mach_msg_ool_ports_descriptor32_t *mach_msg_ool_ports_descriptor32) {
    size_t size = 0;
	size += sizeof(uint32_t);
	size += sizeof(mach_msg_size_t);
	size += sizeof(boolean_t);
	size += sizeof(mach_msg_copy_options_t);
	size += sizeof(mach_msg_type_name_t);
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_ool_ports_descriptor32_t_write(mach_msg_ool_ports_descriptor32_t *mach_msg_ool_ports_descriptor32, void *p) {
    size_t size = 0;
	*(uint32_t*)(p+size) = mach_msg_ool_ports_descriptor32->address;
	size += sizeof(uint32_t);
	*(mach_msg_size_t*)(p+size) = mach_msg_ool_ports_descriptor32->count;
	size += sizeof(mach_msg_size_t);
	*(boolean_t*)(p+size) = mach_msg_ool_ports_descriptor32->deallocate;
	size += sizeof(boolean_t);
	*(mach_msg_copy_options_t*)(p+size) = mach_msg_ool_ports_descriptor32->copy;
	size += sizeof(mach_msg_copy_options_t);
	*(mach_msg_type_name_t*)(p+size) = mach_msg_ool_ports_descriptor32->disposition;
	size += sizeof(mach_msg_type_name_t);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_ool_ports_descriptor32->type;
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_ool_ports_descriptor32_t_read(mach_msg_ool_ports_descriptor32_t *mach_msg_ool_ports_descriptor32, void *p) {
    size_t size = 0;
	mach_msg_ool_ports_descriptor32->address = *(uint32_t*)(p+size);
	size += sizeof(uint32_t);
	mach_msg_ool_ports_descriptor32->count = *(mach_msg_size_t*)(p+size);
	size += sizeof(mach_msg_size_t);
	mach_msg_ool_ports_descriptor32->deallocate = *(boolean_t*)(p+size);
	size += sizeof(boolean_t);
	mach_msg_ool_ports_descriptor32->copy = *(mach_msg_copy_options_t*)(p+size);
	size += sizeof(mach_msg_copy_options_t);
	mach_msg_ool_ports_descriptor32->disposition = *(mach_msg_type_name_t*)(p+size);
	size += sizeof(mach_msg_type_name_t);
	mach_msg_ool_ports_descriptor32->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_ool_ports_descriptor64_t_size(mach_msg_ool_ports_descriptor64_t *mach_msg_ool_ports_descriptor64) {
    size_t size = 0;
	size += sizeof(uint64_t);
	size += sizeof(boolean_t);
	size += sizeof(mach_msg_copy_options_t);
	size += sizeof(mach_msg_type_name_t);
	size += sizeof(mach_msg_descriptor_type_t);
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_ports_descriptor64_t_write(mach_msg_ool_ports_descriptor64_t *mach_msg_ool_ports_descriptor64, void *p) {
    size_t size = 0;
	*(uint64_t*)(p+size) = mach_msg_ool_ports_descriptor64->address;
	size += sizeof(uint64_t);
	*(boolean_t*)(p+size) = mach_msg_ool_ports_descriptor64->deallocate;
	size += sizeof(boolean_t);
	*(mach_msg_copy_options_t*)(p+size) = mach_msg_ool_ports_descriptor64->copy;
	size += sizeof(mach_msg_copy_options_t);
	*(mach_msg_type_name_t*)(p+size) = mach_msg_ool_ports_descriptor64->disposition;
	size += sizeof(mach_msg_type_name_t);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_ool_ports_descriptor64->type;
	size += sizeof(mach_msg_descriptor_type_t);
	*(mach_msg_size_t*)(p+size) = mach_msg_ool_ports_descriptor64->count;
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_ports_descriptor64_t_read(mach_msg_ool_ports_descriptor64_t *mach_msg_ool_ports_descriptor64, void *p) {
    size_t size = 0;
	mach_msg_ool_ports_descriptor64->address = *(uint64_t*)(p+size);
	size += sizeof(uint64_t);
	mach_msg_ool_ports_descriptor64->deallocate = *(boolean_t*)(p+size);
	size += sizeof(boolean_t);
	mach_msg_ool_ports_descriptor64->copy = *(mach_msg_copy_options_t*)(p+size);
	size += sizeof(mach_msg_copy_options_t);
	mach_msg_ool_ports_descriptor64->disposition = *(mach_msg_type_name_t*)(p+size);
	size += sizeof(mach_msg_type_name_t);
	mach_msg_ool_ports_descriptor64->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
	mach_msg_ool_ports_descriptor64->count = *(mach_msg_size_t*)(p+size);
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_ports_descriptor_t_size(mach_msg_ool_ports_descriptor_t *mach_msg_ool_ports_descriptor) {
    size_t size = 0;
	size += sizeof(boolean_t);
	size += sizeof(mach_msg_copy_options_t);
	size += sizeof(mach_msg_type_name_t);
	size += sizeof(mach_msg_descriptor_type_t);
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_ports_descriptor_t_write(mach_msg_ool_ports_descriptor_t *mach_msg_ool_ports_descriptor, void *p) {
    size_t size = 0;
	*(boolean_t*)(p+size) = mach_msg_ool_ports_descriptor->deallocate;
	size += sizeof(boolean_t);
	*(mach_msg_copy_options_t*)(p+size) = mach_msg_ool_ports_descriptor->copy;
	size += sizeof(mach_msg_copy_options_t);
	*(mach_msg_type_name_t*)(p+size) = mach_msg_ool_ports_descriptor->disposition;
	size += sizeof(mach_msg_type_name_t);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_ool_ports_descriptor->type;
	size += sizeof(mach_msg_descriptor_type_t);
	*(mach_msg_size_t*)(p+size) = mach_msg_ool_ports_descriptor->count;
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_ool_ports_descriptor_t_read(mach_msg_ool_ports_descriptor_t *mach_msg_ool_ports_descriptor, void *p) {
    size_t size = 0;
	mach_msg_ool_ports_descriptor->deallocate = *(boolean_t*)(p+size);
	size += sizeof(boolean_t);
	mach_msg_ool_ports_descriptor->copy = *(mach_msg_copy_options_t*)(p+size);
	size += sizeof(mach_msg_copy_options_t);
	mach_msg_ool_ports_descriptor->disposition = *(mach_msg_type_name_t*)(p+size);
	size += sizeof(mach_msg_type_name_t);
	mach_msg_ool_ports_descriptor->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
	mach_msg_ool_ports_descriptor->count = *(mach_msg_size_t*)(p+size);
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_guarded_port_descriptor32_t_size(mach_msg_guarded_port_descriptor32_t *mach_msg_guarded_port_descriptor32) {
    size_t size = 0;
	size += sizeof(uint32_t);
	size += sizeof(mach_port_name_t);
	size += sizeof(mach_msg_guard_flags_t);
	size += sizeof(mach_msg_type_name_t);
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_guarded_port_descriptor32_t_write(mach_msg_guarded_port_descriptor32_t *mach_msg_guarded_port_descriptor32, void *p) {
    size_t size = 0;
	*(uint32_t*)(p+size) = mach_msg_guarded_port_descriptor32->context;
	size += sizeof(uint32_t);
	*(mach_port_name_t*)(p+size) = mach_msg_guarded_port_descriptor32->name;
	size += sizeof(mach_port_name_t);
	*(mach_msg_guard_flags_t*)(p+size) = mach_msg_guarded_port_descriptor32->flags;
	size += sizeof(mach_msg_guard_flags_t);
	*(mach_msg_type_name_t*)(p+size) = mach_msg_guarded_port_descriptor32->disposition;
	size += sizeof(mach_msg_type_name_t);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_guarded_port_descriptor32->type;
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_guarded_port_descriptor32_t_read(mach_msg_guarded_port_descriptor32_t *mach_msg_guarded_port_descriptor32, void *p) {
    size_t size = 0;
	mach_msg_guarded_port_descriptor32->context = *(uint32_t*)(p+size);
	size += sizeof(uint32_t);
	mach_msg_guarded_port_descriptor32->name = *(mach_port_name_t*)(p+size);
	size += sizeof(mach_port_name_t);
	mach_msg_guarded_port_descriptor32->flags = *(mach_msg_guard_flags_t*)(p+size);
	size += sizeof(mach_msg_guard_flags_t);
	mach_msg_guarded_port_descriptor32->disposition = *(mach_msg_type_name_t*)(p+size);
	size += sizeof(mach_msg_type_name_t);
	mach_msg_guarded_port_descriptor32->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
    return size;
}

size_t swr_mach_msg_guarded_port_descriptor64_t_size(mach_msg_guarded_port_descriptor64_t *mach_msg_guarded_port_descriptor64) {
    size_t size = 0;
	size += sizeof(uint64_t);
	size += sizeof(mach_msg_guard_flags_t);
	size += sizeof(mach_msg_type_name_t);
	size += sizeof(mach_msg_descriptor_type_t);
	size += sizeof(mach_port_name_t);
    return size;
}

size_t swr_mach_msg_guarded_port_descriptor64_t_write(mach_msg_guarded_port_descriptor64_t *mach_msg_guarded_port_descriptor64, void *p) {
    size_t size = 0;
	*(uint64_t*)(p+size) = mach_msg_guarded_port_descriptor64->context;
	size += sizeof(uint64_t);
	*(mach_msg_guard_flags_t*)(p+size) = mach_msg_guarded_port_descriptor64->flags;
	size += sizeof(mach_msg_guard_flags_t);
	*(mach_msg_type_name_t*)(p+size) = mach_msg_guarded_port_descriptor64->disposition;
	size += sizeof(mach_msg_type_name_t);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_guarded_port_descriptor64->type;
	size += sizeof(mach_msg_descriptor_type_t);
	*(mach_port_name_t*)(p+size) = mach_msg_guarded_port_descriptor64->name;
	size += sizeof(mach_port_name_t);
    return size;
}

size_t swr_mach_msg_guarded_port_descriptor64_t_read(mach_msg_guarded_port_descriptor64_t *mach_msg_guarded_port_descriptor64, void *p) {
    size_t size = 0;
	mach_msg_guarded_port_descriptor64->context = *(uint64_t*)(p+size);
	size += sizeof(uint64_t);
	mach_msg_guarded_port_descriptor64->flags = *(mach_msg_guard_flags_t*)(p+size);
	size += sizeof(mach_msg_guard_flags_t);
	mach_msg_guarded_port_descriptor64->disposition = *(mach_msg_type_name_t*)(p+size);
	size += sizeof(mach_msg_type_name_t);
	mach_msg_guarded_port_descriptor64->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
	mach_msg_guarded_port_descriptor64->name = *(mach_port_name_t*)(p+size);
	size += sizeof(mach_port_name_t);
    return size;
}

size_t swr_mach_msg_guarded_port_descriptor_t_size(mach_msg_guarded_port_descriptor_t *mach_msg_guarded_port_descriptor) {
    size_t size = 0;
	size += sizeof(mach_port_context_t);
	size += sizeof(mach_msg_guard_flags_t);
	size += sizeof(mach_msg_type_name_t);
	size += sizeof(mach_msg_descriptor_type_t);
	size += sizeof(mach_port_name_t);
    return size;
}

size_t swr_mach_msg_guarded_port_descriptor_t_write(mach_msg_guarded_port_descriptor_t *mach_msg_guarded_port_descriptor, void *p) {
    size_t size = 0;
	*(mach_port_context_t*)(p+size) = mach_msg_guarded_port_descriptor->context;
	size += sizeof(mach_port_context_t);
	*(mach_msg_guard_flags_t*)(p+size) = mach_msg_guarded_port_descriptor->flags;
	size += sizeof(mach_msg_guard_flags_t);
	*(mach_msg_type_name_t*)(p+size) = mach_msg_guarded_port_descriptor->disposition;
	size += sizeof(mach_msg_type_name_t);
	*(mach_msg_descriptor_type_t*)(p+size) = mach_msg_guarded_port_descriptor->type;
	size += sizeof(mach_msg_descriptor_type_t);
	*(mach_port_name_t*)(p+size) = mach_msg_guarded_port_descriptor->name;
	size += sizeof(mach_port_name_t);
    return size;
}

size_t swr_mach_msg_guarded_port_descriptor_t_read(mach_msg_guarded_port_descriptor_t *mach_msg_guarded_port_descriptor, void *p) {
    size_t size = 0;
	mach_msg_guarded_port_descriptor->context = *(mach_port_context_t*)(p+size);
	size += sizeof(mach_port_context_t);
	mach_msg_guarded_port_descriptor->flags = *(mach_msg_guard_flags_t*)(p+size);
	size += sizeof(mach_msg_guard_flags_t);
	mach_msg_guarded_port_descriptor->disposition = *(mach_msg_type_name_t*)(p+size);
	size += sizeof(mach_msg_type_name_t);
	mach_msg_guarded_port_descriptor->type = *(mach_msg_descriptor_type_t*)(p+size);
	size += sizeof(mach_msg_descriptor_type_t);
	mach_msg_guarded_port_descriptor->name = *(mach_port_name_t*)(p+size);
	size += sizeof(mach_port_name_t);
    return size;
}

size_t swr_mach_msg_body_t_size(mach_msg_body_t *mach_msg_body) {
    size_t size = 0;
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_body_t_write(mach_msg_body_t *mach_msg_body, void *p) {
    size_t size = 0;
	*(mach_msg_size_t*)(p+size) = mach_msg_body->msgh_descriptor_count;
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_body_t_read(mach_msg_body_t *mach_msg_body, void *p) {
    size_t size = 0;
	mach_msg_body->msgh_descriptor_count = *(mach_msg_size_t*)(p+size);
	size += sizeof(mach_msg_size_t);
    return size;
}

size_t swr_mach_msg_header_t_size(mach_msg_header_t *mach_msg_header) {
    size_t size = 0;
	size += sizeof(mach_msg_bits_t);
	size += sizeof(mach_msg_size_t);
	size += sizeof(mach_port_t);
	size += sizeof(mach_port_t);
	size += sizeof(mach_port_name_t);
	size += sizeof(mach_msg_id_t);
    return size;
}

size_t swr_mach_msg_header_t_write(mach_msg_header_t *mach_msg_header, void *p) {
    size_t size = 0;
	*(mach_msg_bits_t*)(p+size) = mach_msg_header->msgh_bits;
	size += sizeof(mach_msg_bits_t);
	*(mach_msg_size_t*)(p+size) = mach_msg_header->msgh_size;
	size += sizeof(mach_msg_size_t);
	*(mach_port_t*)(p+size) = mach_msg_header->msgh_remote_port;
	size += sizeof(mach_port_t);
	*(mach_port_t*)(p+size) = mach_msg_header->msgh_local_port;
	size += sizeof(mach_port_t);
	*(mach_port_name_t*)(p+size) = mach_msg_header->msgh_voucher_port;
	size += sizeof(mach_port_name_t);
	*(mach_msg_id_t*)(p+size) = mach_msg_header->msgh_id;
	size += sizeof(mach_msg_id_t);
    return size;
}

size_t swr_mach_msg_header_t_read(mach_msg_header_t *mach_msg_header, void *p) {
    size_t size = 0;
	mach_msg_header->msgh_bits = *(mach_msg_bits_t*)(p+size);
	size += sizeof(mach_msg_bits_t);
	mach_msg_header->msgh_size = *(mach_msg_size_t*)(p+size);
	size += sizeof(mach_msg_size_t);
	mach_msg_header->msgh_remote_port = *(mach_port_t*)(p+size);
	size += sizeof(mach_port_t);
	mach_msg_header->msgh_local_port = *(mach_port_t*)(p+size);
	size += sizeof(mach_port_t);
	mach_msg_header->msgh_voucher_port = *(mach_port_name_t*)(p+size);
	size += sizeof(mach_port_name_t);
	mach_msg_header->msgh_id = *(mach_msg_id_t*)(p+size);
	size += sizeof(mach_msg_id_t);
    return size;
}

size_t swr_mach_msg_base_t_size(mach_msg_base_t *mach_msg_base) {
    size_t size = 0;
	size += swr_mach_msg_header_t_size(&(mach_msg_base->header));
	size += swr_mach_msg_body_t_size(&(mach_msg_base->body));
    return size;
}

size_t swr_mach_msg_base_t_write(mach_msg_base_t *mach_msg_base, void *p) {
    size_t size = 0;
	size += swr_mach_msg_header_t_write(&(mach_msg_base->header), p+size);
	size += swr_mach_msg_body_t_write(&(mach_msg_base->body), p+size);
    return size;
}

size_t swr_mach_msg_base_t_read(mach_msg_base_t *mach_msg_base, void *p) {
    size_t size = 0;
	size += swr_mach_msg_header_t_read(&(mach_msg_base->header), p+size);
	size += swr_mach_msg_body_t_read(&(mach_msg_base->body), p+size);
    return size;
}

size_t swr_mach_msg_trailer_t_size(mach_msg_trailer_t *mach_msg_trailer) {
    size_t size = 0;
	size += sizeof(mach_msg_trailer_type_t);
	size += sizeof(mach_msg_trailer_size_t);
    return size;
}

size_t swr_mach_msg_trailer_t_write(mach_msg_trailer_t *mach_msg_trailer, void *p) {
    size_t size = 0;
	*(mach_msg_trailer_type_t*)(p+size) = mach_msg_trailer->msgh_trailer_type;
	size += sizeof(mach_msg_trailer_type_t);
	*(mach_msg_trailer_size_t*)(p+size) = mach_msg_trailer->msgh_trailer_size;
	size += sizeof(mach_msg_trailer_size_t);
    return size;
}

size_t swr_mach_msg_trailer_t_read(mach_msg_trailer_t *mach_msg_trailer, void *p) {
    size_t size = 0;
	mach_msg_trailer->msgh_trailer_type = *(mach_msg_trailer_type_t*)(p+size);
	size += sizeof(mach_msg_trailer_type_t);
	mach_msg_trailer->msgh_trailer_size = *(mach_msg_trailer_size_t*)(p+size);
	size += sizeof(mach_msg_trailer_size_t);
    return size;
}

size_t swr_mach_msg_seqno_trailer_t_size(mach_msg_seqno_trailer_t *mach_msg_seqno_trailer) {
    size_t size = 0;
	size += sizeof(mach_msg_trailer_type_t);
	size += sizeof(mach_msg_trailer_size_t);
	size += sizeof(mach_port_seqno_t);
    return size;
}

size_t swr_mach_msg_seqno_trailer_t_write(mach_msg_seqno_trailer_t *mach_msg_seqno_trailer, void *p) {
    size_t size = 0;
	*(mach_msg_trailer_type_t*)(p+size) = mach_msg_seqno_trailer->msgh_trailer_type;
	size += sizeof(mach_msg_trailer_type_t);
	*(mach_msg_trailer_size_t*)(p+size) = mach_msg_seqno_trailer->msgh_trailer_size;
	size += sizeof(mach_msg_trailer_size_t);
	*(mach_port_seqno_t*)(p+size) = mach_msg_seqno_trailer->msgh_seqno;
	size += sizeof(mach_port_seqno_t);
    return size;
}

size_t swr_mach_msg_seqno_trailer_t_read(mach_msg_seqno_trailer_t *mach_msg_seqno_trailer, void *p) {
    size_t size = 0;
	mach_msg_seqno_trailer->msgh_trailer_type = *(mach_msg_trailer_type_t*)(p+size);
	size += sizeof(mach_msg_trailer_type_t);
	mach_msg_seqno_trailer->msgh_trailer_size = *(mach_msg_trailer_size_t*)(p+size);
	size += sizeof(mach_msg_trailer_size_t);
	mach_msg_seqno_trailer->msgh_seqno = *(mach_port_seqno_t*)(p+size);
	size += sizeof(mach_port_seqno_t);
    return size;
}

size_t swr_security_token_t_size(security_token_t *security_token) {
    size_t size = 0;
	size += sizeof(unsigned int) * 2;
    return size;
}

size_t swr_security_token_t_write(security_token_t *security_token, void *p) {
    size_t size = 0;
	memcpy(p+size,security_token->val,sizeof(unsigned int) * 2);
	size += sizeof(unsigned int) * 2;
    return size;
}

size_t swr_security_token_t_read(security_token_t *security_token, void *p) {
    size_t size = 0;
	memcpy(security_token->val, p+size, sizeof(unsigned int) * 2);
	size += sizeof(unsigned int) * 2;
    return size;
}

size_t swr_mach_msg_security_trailer_t_size(mach_msg_security_trailer_t *mach_msg_security_trailer) {
    size_t size = 0;
	size += sizeof(mach_msg_trailer_type_t);
	size += sizeof(mach_msg_trailer_size_t);
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_size(&(mach_msg_security_trailer->msgh_sender));
    return size;
}

size_t swr_mach_msg_security_trailer_t_write(mach_msg_security_trailer_t *mach_msg_security_trailer, void *p) {
    size_t size = 0;
	*(mach_msg_trailer_type_t*)(p+size) = mach_msg_security_trailer->msgh_trailer_type;
	size += sizeof(mach_msg_trailer_type_t);
	*(mach_msg_trailer_size_t*)(p+size) = mach_msg_security_trailer->msgh_trailer_size;
	size += sizeof(mach_msg_trailer_size_t);
	*(mach_port_seqno_t*)(p+size) = mach_msg_security_trailer->msgh_seqno;
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_write(&(mach_msg_security_trailer->msgh_sender), p+size);
    return size;
}

size_t swr_mach_msg_security_trailer_t_read(mach_msg_security_trailer_t *mach_msg_security_trailer, void *p) {
    size_t size = 0;
	mach_msg_security_trailer->msgh_trailer_type = *(mach_msg_trailer_type_t*)(p+size);
	size += sizeof(mach_msg_trailer_type_t);
	mach_msg_security_trailer->msgh_trailer_size = *(mach_msg_trailer_size_t*)(p+size);
	size += sizeof(mach_msg_trailer_size_t);
	mach_msg_security_trailer->msgh_seqno = *(mach_port_seqno_t*)(p+size);
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_read(&(mach_msg_security_trailer->msgh_sender), p+size);
    return size;
}

size_t swr_audit_token_t_size(audit_token_t *audit_token) {
    size_t size = 0;
	size += sizeof(unsigned int) * 8;
    return size;
}

size_t swr_audit_token_t_write(audit_token_t *audit_token, void *p) {
    size_t size = 0;
	memcpy(p+size,audit_token->val,sizeof(unsigned int) * 8);
	size += sizeof(unsigned int) * 8;
    return size;
}

size_t swr_audit_token_t_read(audit_token_t *audit_token, void *p) {
    size_t size = 0;
	memcpy(audit_token->val, p+size, sizeof(unsigned int) * 8);
	size += sizeof(unsigned int) * 8;
    return size;
}

size_t swr_mach_msg_audit_trailer_t_size(mach_msg_audit_trailer_t *mach_msg_audit_trailer) {
    size_t size = 0;
	size += sizeof(mach_msg_trailer_type_t);
	size += sizeof(mach_msg_trailer_size_t);
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_size(&(mach_msg_audit_trailer->msgh_sender));
	size += swr_audit_token_t_size(&(mach_msg_audit_trailer->msgh_audit));
    return size;
}

size_t swr_mach_msg_audit_trailer_t_write(mach_msg_audit_trailer_t *mach_msg_audit_trailer, void *p) {
    size_t size = 0;
	*(mach_msg_trailer_type_t*)(p+size) = mach_msg_audit_trailer->msgh_trailer_type;
	size += sizeof(mach_msg_trailer_type_t);
	*(mach_msg_trailer_size_t*)(p+size) = mach_msg_audit_trailer->msgh_trailer_size;
	size += sizeof(mach_msg_trailer_size_t);
	*(mach_port_seqno_t*)(p+size) = mach_msg_audit_trailer->msgh_seqno;
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_write(&(mach_msg_audit_trailer->msgh_sender), p+size);
	size += swr_audit_token_t_write(&(mach_msg_audit_trailer->msgh_audit), p+size);
    return size;
}

size_t swr_mach_msg_audit_trailer_t_read(mach_msg_audit_trailer_t *mach_msg_audit_trailer, void *p) {
    size_t size = 0;
	mach_msg_audit_trailer->msgh_trailer_type = *(mach_msg_trailer_type_t*)(p+size);
	size += sizeof(mach_msg_trailer_type_t);
	mach_msg_audit_trailer->msgh_trailer_size = *(mach_msg_trailer_size_t*)(p+size);
	size += sizeof(mach_msg_trailer_size_t);
	mach_msg_audit_trailer->msgh_seqno = *(mach_port_seqno_t*)(p+size);
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_read(&(mach_msg_audit_trailer->msgh_sender), p+size);
	size += swr_audit_token_t_read(&(mach_msg_audit_trailer->msgh_audit), p+size);
    return size;
}

size_t swr_mach_msg_context_trailer_t_size(mach_msg_context_trailer_t *mach_msg_context_trailer) {
    size_t size = 0;
	size += sizeof(mach_msg_trailer_type_t);
	size += sizeof(mach_msg_trailer_size_t);
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_size(&(mach_msg_context_trailer->msgh_sender));
	size += swr_audit_token_t_size(&(mach_msg_context_trailer->msgh_audit));
	size += sizeof(mach_port_context_t);
    return size;
}

size_t swr_mach_msg_context_trailer_t_write(mach_msg_context_trailer_t *mach_msg_context_trailer, void *p) {
    size_t size = 0;
	*(mach_msg_trailer_type_t*)(p+size) = mach_msg_context_trailer->msgh_trailer_type;
	size += sizeof(mach_msg_trailer_type_t);
	*(mach_msg_trailer_size_t*)(p+size) = mach_msg_context_trailer->msgh_trailer_size;
	size += sizeof(mach_msg_trailer_size_t);
	*(mach_port_seqno_t*)(p+size) = mach_msg_context_trailer->msgh_seqno;
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_write(&(mach_msg_context_trailer->msgh_sender), p+size);
	size += swr_audit_token_t_write(&(mach_msg_context_trailer->msgh_audit), p+size);
	*(mach_port_context_t*)(p+size) = mach_msg_context_trailer->msgh_context;
	size += sizeof(mach_port_context_t);
    return size;
}

size_t swr_mach_msg_context_trailer_t_read(mach_msg_context_trailer_t *mach_msg_context_trailer, void *p) {
    size_t size = 0;
	mach_msg_context_trailer->msgh_trailer_type = *(mach_msg_trailer_type_t*)(p+size);
	size += sizeof(mach_msg_trailer_type_t);
	mach_msg_context_trailer->msgh_trailer_size = *(mach_msg_trailer_size_t*)(p+size);
	size += sizeof(mach_msg_trailer_size_t);
	mach_msg_context_trailer->msgh_seqno = *(mach_port_seqno_t*)(p+size);
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_read(&(mach_msg_context_trailer->msgh_sender), p+size);
	size += swr_audit_token_t_read(&(mach_msg_context_trailer->msgh_audit), p+size);
	mach_msg_context_trailer->msgh_context = *(mach_port_context_t*)(p+size);
	size += sizeof(mach_port_context_t);
    return size;
}

size_t swr_msg_labels_t_size(msg_labels_t *msg_labels) {
    size_t size = 0;
	size += sizeof(mach_port_name_t);
    return size;
}

size_t swr_msg_labels_t_write(msg_labels_t *msg_labels, void *p) {
    size_t size = 0;
	*(mach_port_name_t*)(p+size) = msg_labels->sender;
	size += sizeof(mach_port_name_t);
    return size;
}

size_t swr_msg_labels_t_read(msg_labels_t *msg_labels, void *p) {
    size_t size = 0;
	msg_labels->sender = *(mach_port_name_t*)(p+size);
	size += sizeof(mach_port_name_t);
    return size;
}

size_t swr_mach_msg_mac_trailer_t_size(mach_msg_mac_trailer_t *mach_msg_mac_trailer) {
    size_t size = 0;
	size += sizeof(mach_msg_trailer_type_t);
	size += sizeof(mach_msg_trailer_size_t);
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_size(&(mach_msg_mac_trailer->msgh_sender));
	size += swr_audit_token_t_size(&(mach_msg_mac_trailer->msgh_audit));
	size += sizeof(mach_port_context_t);
	size += sizeof(mach_msg_filter_id);
	size += swr_msg_labels_t_size(&(mach_msg_mac_trailer->msgh_labels));
    return size;
}

size_t swr_mach_msg_mac_trailer_t_write(mach_msg_mac_trailer_t *mach_msg_mac_trailer, void *p) {
    size_t size = 0;
	*(mach_msg_trailer_type_t*)(p+size) = mach_msg_mac_trailer->msgh_trailer_type;
	size += sizeof(mach_msg_trailer_type_t);
	*(mach_msg_trailer_size_t*)(p+size) = mach_msg_mac_trailer->msgh_trailer_size;
	size += sizeof(mach_msg_trailer_size_t);
	*(mach_port_seqno_t*)(p+size) = mach_msg_mac_trailer->msgh_seqno;
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_write(&(mach_msg_mac_trailer->msgh_sender), p+size);
	size += swr_audit_token_t_write(&(mach_msg_mac_trailer->msgh_audit), p+size);
	*(mach_port_context_t*)(p+size) = mach_msg_mac_trailer->msgh_context;
	size += sizeof(mach_port_context_t);
	*(mach_msg_filter_id*)(p+size) = mach_msg_mac_trailer->msgh_ad;
	size += sizeof(mach_msg_filter_id);
	size += swr_msg_labels_t_write(&(mach_msg_mac_trailer->msgh_labels), p+size);
    return size;
}

size_t swr_mach_msg_mac_trailer_t_read(mach_msg_mac_trailer_t *mach_msg_mac_trailer, void *p) {
    size_t size = 0;
	mach_msg_mac_trailer->msgh_trailer_type = *(mach_msg_trailer_type_t*)(p+size);
	size += sizeof(mach_msg_trailer_type_t);
	mach_msg_mac_trailer->msgh_trailer_size = *(mach_msg_trailer_size_t*)(p+size);
	size += sizeof(mach_msg_trailer_size_t);
	mach_msg_mac_trailer->msgh_seqno = *(mach_port_seqno_t*)(p+size);
	size += sizeof(mach_port_seqno_t);
	size += swr_security_token_t_read(&(mach_msg_mac_trailer->msgh_sender), p+size);
	size += swr_audit_token_t_read(&(mach_msg_mac_trailer->msgh_audit), p+size);
	mach_msg_mac_trailer->msgh_context = *(mach_port_context_t*)(p+size);
	size += sizeof(mach_port_context_t);
	mach_msg_mac_trailer->msgh_ad = *(mach_msg_filter_id*)(p+size);
	size += sizeof(mach_msg_filter_id);
	size += swr_msg_labels_t_read(&(mach_msg_mac_trailer->msgh_labels), p+size);
    return size;
}

size_t swr_mach_msg_empty_send_t_size(mach_msg_empty_send_t *mach_msg_empty_send) {
    size_t size = 0;
	size += swr_mach_msg_header_t_size(&(mach_msg_empty_send->header));
    return size;
}

size_t swr_mach_msg_empty_send_t_write(mach_msg_empty_send_t *mach_msg_empty_send, void *p) {
    size_t size = 0;
	size += swr_mach_msg_header_t_write(&(mach_msg_empty_send->header), p+size);
    return size;
}

size_t swr_mach_msg_empty_send_t_read(mach_msg_empty_send_t *mach_msg_empty_send, void *p) {
    size_t size = 0;
	size += swr_mach_msg_header_t_read(&(mach_msg_empty_send->header), p+size);
    return size;
}

size_t swr_mach_msg_empty_rcv_t_size(mach_msg_empty_rcv_t *mach_msg_empty_rcv) {
    size_t size = 0;
	size += swr_mach_msg_header_t_size(&(mach_msg_empty_rcv->header));
	size += swr_mach_msg_trailer_t_size(&(mach_msg_empty_rcv->trailer));
    return size;
}

size_t swr_mach_msg_empty_rcv_t_write(mach_msg_empty_rcv_t *mach_msg_empty_rcv, void *p) {
    size_t size = 0;
	size += swr_mach_msg_header_t_write(&(mach_msg_empty_rcv->header), p+size);
	size += swr_mach_msg_trailer_t_write(&(mach_msg_empty_rcv->trailer), p+size);
    return size;
}

size_t swr_mach_msg_empty_rcv_t_read(mach_msg_empty_rcv_t *mach_msg_empty_rcv, void *p) {
    size_t size = 0;
	size += swr_mach_msg_header_t_read(&(mach_msg_empty_rcv->header), p+size);
	size += swr_mach_msg_trailer_t_read(&(mach_msg_empty_rcv->trailer), p+size);
    return size;
}

size_t swr_es_event_id_t_size(es_event_id_t *event_id) {
    size_t size = 0;
    return size;
}

size_t swr_es_event_id_t_write(es_event_id_t *event_id, void *p) {
    size_t size = 0;
    return size;
}

size_t swr_es_event_id_t_read(es_event_id_t *event_id, void *p) {
    size_t size = 0;
    return size;
}

size_t swr_es_token_t_size(es_token_t *token) {
    size_t size = 0;
	size += sizeof(size_t);
	if (token->data) {
	    size += sizeof(_Bool);
	    size += token->size * sizeof(uint8_t);
	} else {
	    size += sizeof(_Bool);
	}
    return size;
}

size_t swr_es_token_t_write(es_token_t *token, void *p) {
    size_t size = 0;
	*(size_t*)(p+size) = token->size;
	size += sizeof(size_t);
	if (token->data) {
	    *(_Bool *)(p+size) = true;
	    size += sizeof(_Bool);
	    memcpy(p+size,token->data,token->size * sizeof(uint8_t));
	    size += token->size * sizeof(uint8_t);
	} else {
	    *(_Bool *)(p+size) = false;
	    size += sizeof(_Bool);
	}
    return size;
}

size_t swr_es_token_t_read(es_token_t *token, void *p) {
    size_t size = 0;
	token->size = *(size_t*)(p+size);
	size += sizeof(size_t);
	_Bool data_has = *(_Bool *)(p+size);
	if (data_has) {
	    token->data = malloc(token->size * sizeof(uint8_t));
	    memcpy((void*)token->data,p+size,sizeof(uint8_t) * token->size);
	    size += token->size * sizeof(uint8_t);
	}
    return size;
}

size_t swr_es_string_token_t_size(es_string_token_t *string_token) {
    size_t size = 0;
	size += sizeof(size_t);
	if (string_token->data) {
	    size += sizeof(_Bool);
	    size += string_token->length * sizeof(char);
	} else {
	    size += sizeof(_Bool);
	}
    return size;
}

size_t swr_es_string_token_t_write(es_string_token_t *string_token, void *p) {
    size_t size = 0;
	*(size_t*)(p+size) = string_token->length;
	size += sizeof(size_t);
	if (string_token->data) {
	    *(_Bool *)(p+size) = true;
	    size += sizeof(_Bool);
	    memcpy(p+size,string_token->data,string_token->length * sizeof(char));
	    size += string_token->length * sizeof(char);
	} else {
	    *(_Bool *)(p+size) = false;
	    size += sizeof(_Bool);
	}
    return size;
}

size_t swr_es_string_token_t_read(es_string_token_t *string_token, void *p) {
    size_t size = 0;
	string_token->length = *(size_t*)(p+size);
	size += sizeof(size_t);
	_Bool data_has = *(_Bool *)(p+size);
	if (data_has) {
	    string_token->data = malloc(string_token->length * sizeof(char));
	    memcpy((void*)string_token->data,p+size,sizeof(char) * string_token->length);
	    size += string_token->length * sizeof(char);
	}
    return size;
}

size_t swr_es_muted_path_t_size(es_muted_path_t *muted_path) {
    size_t size = 0;
	size += sizeof(es_mute_path_type_t);
	size += sizeof(size_t);
	if (muted_path->events) {
	    size += sizeof(_Bool);
	    size += muted_path->event_count * sizeof(es_event_type_t);
	} else {
	    size += sizeof(_Bool);
	}
	size += swr_es_string_token_t_size(&(muted_path->path));
    return size;
}

size_t swr_es_muted_path_t_write(es_muted_path_t *muted_path, void *p) {
    size_t size = 0;
	*(es_mute_path_type_t*)(p+size) = muted_path->type;
	size += sizeof(es_mute_path_type_t);
	*(size_t*)(p+size) = muted_path->event_count;
	size += sizeof(size_t);
	if (muted_path->events) {
	    *(_Bool *)(p+size) = true;
	    size += sizeof(_Bool);
	    memcpy(p+size,muted_path->events,muted_path->event_count * sizeof(es_event_type_t));
	    size += muted_path->event_count * sizeof(es_event_type_t);
	} else {
	    *(_Bool *)(p+size) = false;
	    size += sizeof(_Bool);
	}
	size += swr_es_string_token_t_write(&(muted_path->path), p+size);
    return size;
}

size_t swr_es_muted_path_t_read(es_muted_path_t *muted_path, void *p) {
    size_t size = 0;
	muted_path->type = *(es_mute_path_type_t*)(p+size);
	size += sizeof(es_mute_path_type_t);
	muted_path->event_count = *(size_t*)(p+size);
	size += sizeof(size_t);
	_Bool events_has = *(_Bool *)(p+size);
	if (events_has) {
	    muted_path->events = malloc(muted_path->event_count * sizeof(es_event_type_t));
	    memcpy((void*)muted_path->events,p+size,sizeof(es_event_type_t) * muted_path->event_count);
	    size += muted_path->event_count * sizeof(es_event_type_t);
	}
	size += swr_es_string_token_t_read(&(muted_path->path), p+size);
    return size;
}

size_t swr_es_muted_paths_t_size(es_muted_paths_t *muted_paths) {
    size_t size = 0;
	size += sizeof(size_t);
	if (muted_paths->paths) {
	    size += sizeof(_Bool);
	    for (int i = 0; i < muted_paths->count; i++) {
	        size += swr_es_muted_path_t_size((es_muted_path_t*)&(muted_paths->paths[i]));
	    }
	} else {
	    size += sizeof(_Bool);
	}
    return size;
}

size_t swr_es_muted_paths_t_write(es_muted_paths_t *muted_paths, void *p) {
    size_t size = 0;
	*(size_t*)(p+size) = muted_paths->count;
	size += sizeof(size_t);
	if (muted_paths->paths) {
	    *(_Bool *)(p+size) = true;
	    size += sizeof(_Bool);
	    for (int i = 0; i < muted_paths->count; i++) {
	        size += swr_es_muted_path_t_write((es_muted_path_t*)&(muted_paths->paths[i]), p+size);
	    }
	} else {
	    *(_Bool *)(p+size) = false;
	    size += sizeof(_Bool);
	}
    return size;
}

size_t swr_es_muted_paths_t_read(es_muted_paths_t *muted_paths, void *p) {
    size_t size = 0;
	muted_paths->count = *(size_t*)(p+size);
	size += sizeof(size_t);
	_Bool paths_has = *(_Bool *)(p+size);
	size += sizeof(_Bool);
	if (paths_has) {
	    muted_paths->paths = malloc(sizeof(es_muted_path_t*) * muted_paths->count);
	    for (int i = 0; i < muted_paths->count; i++) {
	        size += swr_es_muted_path_t_read((es_muted_path_t*)&(muted_paths->paths[i]), p+size);
	    }
	}
    return size;
}

size_t swr_es_muted_process_t_size(es_muted_process_t *muted_process) {
    size_t size = 0;
	size += swr_audit_token_t_size(&(muted_process->audit_token));
	size += sizeof(size_t);
	if (muted_process->events) {
	    size += sizeof(_Bool);
	    size += muted_process->event_count * sizeof(es_event_type_t);
	} else {
	    size += sizeof(_Bool);
	}
    return size;
}

size_t swr_es_muted_process_t_write(es_muted_process_t *muted_process, void *p) {
    size_t size = 0;
	size += swr_audit_token_t_write(&(muted_process->audit_token), p+size);
	*(size_t*)(p+size) = muted_process->event_count;
	size += sizeof(size_t);
	if (muted_process->events) {
	    *(_Bool *)(p+size) = true;
	    size += sizeof(_Bool);
	    memcpy(p+size,muted_process->events,muted_process->event_count * sizeof(es_event_type_t));
	    size += muted_process->event_count * sizeof(es_event_type_t);
	} else {
	    *(_Bool *)(p+size) = false;
	    size += sizeof(_Bool);
	}
    return size;
}

size_t swr_es_muted_process_t_read(es_muted_process_t *muted_process, void *p) {
    size_t size = 0;
	size += swr_audit_token_t_read(&(muted_process->audit_token), p+size);
	muted_process->event_count = *(size_t*)(p+size);
	size += sizeof(size_t);
	_Bool events_has = *(_Bool *)(p+size);
	if (events_has) {
	    muted_process->events = malloc(muted_process->event_count * sizeof(es_event_type_t));
	    memcpy((void*)muted_process->events,p+size,sizeof(es_event_type_t) * muted_process->event_count);
	    size += muted_process->event_count * sizeof(es_event_type_t);
	}
    return size;
}

size_t swr_es_muted_processes_t_size(es_muted_processes_t *muted_processes) {
    size_t size = 0;
	size += sizeof(size_t);
	if (muted_processes->processes) {
	    size += sizeof(_Bool);
	    for (int i = 0; i < muted_processes->count; i++) {
	        size += swr_es_muted_process_t_size((es_muted_process_t*)&(muted_processes->processes[i]));
	    }
	} else {
	    size += sizeof(_Bool);
	}
    return size;
}

size_t swr_es_muted_processes_t_write(es_muted_processes_t *muted_processes, void *p) {
    size_t size = 0;
	*(size_t*)(p+size) = muted_processes->count;
	size += sizeof(size_t);
	if (muted_processes->processes) {
	    *(_Bool *)(p+size) = true;
	    size += sizeof(_Bool);
	    for (int i = 0; i < muted_processes->count; i++) {
	        size += swr_es_muted_process_t_write((es_muted_process_t*)&(muted_processes->processes[i]), p+size);
	    }
	} else {
	    *(_Bool *)(p+size) = false;
	    size += sizeof(_Bool);
	}
    return size;
}

size_t swr_es_muted_processes_t_read(es_muted_processes_t *muted_processes, void *p) {
    size_t size = 0;
	muted_processes->count = *(size_t*)(p+size);
	size += sizeof(size_t);
	_Bool processes_has = *(_Bool *)(p+size);
	size += sizeof(_Bool);
	if (processes_has) {
	    muted_processes->processes = malloc(sizeof(es_muted_process_t*) * muted_processes->count);
	    for (int i = 0; i < muted_processes->count; i++) {
	        size += swr_es_muted_process_t_read((es_muted_process_t*)&(muted_processes->processes[i]), p+size);
	    }
	}
    return size;
}

size_t swr_ntsid_t_size(ntsid_t *ntsid) {
    size_t size = 0;
	size += sizeof(u_int8_t);
	size += sizeof(u_int8_t);
	size += sizeof(u_int8_t) * 6;
	size += sizeof(u_int32_t) * 16;
    return size;
}

size_t swr_ntsid_t_write(ntsid_t *ntsid, void *p) {
    size_t size = 0;
	*(u_int8_t*)(p+size) = ntsid->sid_kind;
	size += sizeof(u_int8_t);
	*(u_int8_t*)(p+size) = ntsid->sid_authcount;
	size += sizeof(u_int8_t);
	memcpy(p+size,ntsid->sid_authority,sizeof(u_int8_t) * 6);
	size += sizeof(u_int8_t) * 6;
	memcpy(p+size,ntsid->sid_authorities,sizeof(u_int32_t) * 16);
	size += sizeof(u_int32_t) * 16;
    return size;
}

size_t swr_ntsid_t_read(ntsid_t *ntsid, void *p) {
    size_t size = 0;
	ntsid->sid_kind = *(u_int8_t*)(p+size);
	size += sizeof(u_int8_t);
	ntsid->sid_authcount = *(u_int8_t*)(p+size);
	size += sizeof(u_int8_t);
	memcpy(ntsid->sid_authority, p+size, sizeof(u_int8_t) * 6);
	size += sizeof(u_int8_t) * 6;
	memcpy(ntsid->sid_authorities, p+size, sizeof(u_int32_t) * 16);
	size += sizeof(u_int32_t) * 16;
    return size;
}

size_t swr_es_file_t_size(es_file_t *file) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(file->path));
	size += sizeof(bool);
	size += sizeof(struct stat);
    return size;
}

size_t swr_es_file_t_write(es_file_t *file, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(file->path), p+size);
	*(bool*)(p+size) = file->path_truncated;
	size += sizeof(bool);
	*(struct stat*)(p+size) = file->stat;
	size += sizeof(struct stat);
    return size;
}

size_t swr_es_file_t_read(es_file_t *file, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(file->path), p+size);
	file->path_truncated = *(bool*)(p+size);
	size += sizeof(bool);
	file->stat = *(struct stat*)(p+size);
	size += sizeof(struct stat);
    return size;
}

size_t swr_es_thread_t_size(es_thread_t *thread) {
    size_t size = 0;
	size += sizeof(uint64_t);
    return size;
}

size_t swr_es_thread_t_write(es_thread_t *thread, void *p) {
    size_t size = 0;
	*(uint64_t*)(p+size) = thread->thread_id;
	size += sizeof(uint64_t);
    return size;
}

size_t swr_es_thread_t_read(es_thread_t *thread, void *p) {
    size_t size = 0;
	thread->thread_id = *(uint64_t*)(p+size);
	size += sizeof(uint64_t);
    return size;
}

size_t swr_es_process_t_size(es_process_t *process) {
    size_t size = 0;
	size += swr_audit_token_t_size(&(process->audit_token));
	size += sizeof(pid_t);
	size += sizeof(pid_t);
	size += sizeof(pid_t);
	size += sizeof(pid_t);
	size += sizeof(uint32_t);
	size += sizeof(bool);
	size += sizeof(bool);
	size += sizeof(uint8_t) * 20;
	size += swr_es_string_token_t_size(&(process->signing_id));
	size += swr_es_string_token_t_size(&(process->team_id));
	size += swr_es_file_t_size(process->executable);
	size += swr_es_file_t_size(process->tty);
	size += sizeof(struct timeval);
	size += swr_audit_token_t_size(&(process->responsible_audit_token));
	size += swr_audit_token_t_size(&(process->parent_audit_token));
    return size;
}

size_t swr_es_process_t_write(es_process_t *process, void *p) {
    size_t size = 0;
	size += swr_audit_token_t_write(&(process->audit_token), p+size);
	*(pid_t*)(p+size) = process->ppid;
	size += sizeof(pid_t);
	*(pid_t*)(p+size) = process->original_ppid;
	size += sizeof(pid_t);
	*(pid_t*)(p+size) = process->group_id;
	size += sizeof(pid_t);
	*(pid_t*)(p+size) = process->session_id;
	size += sizeof(pid_t);
	*(uint32_t*)(p+size) = process->codesigning_flags;
	size += sizeof(uint32_t);
	*(bool*)(p+size) = process->is_platform_binary;
	size += sizeof(bool);
	*(bool*)(p+size) = process->is_es_client;
	size += sizeof(bool);
	memcpy(p+size,process->cdhash,sizeof(uint8_t) * 20);
	size += sizeof(uint8_t) * 20;
	size += swr_es_string_token_t_write(&(process->signing_id), p+size);
	size += swr_es_string_token_t_write(&(process->team_id), p+size);
	size += swr_es_file_t_write(process->executable, p+size);
	size += swr_es_file_t_write(process->tty, p+size);
	*(struct timeval*)(p+size) = process->start_time;
	size += sizeof(struct timeval);
	size += swr_audit_token_t_write(&(process->responsible_audit_token), p+size);
	size += swr_audit_token_t_write(&(process->parent_audit_token), p+size);
    return size;
}

size_t swr_es_process_t_read(es_process_t *process, void *p) {
    size_t size = 0;
	size += swr_audit_token_t_read(&(process->audit_token), p+size);
	process->ppid = *(pid_t*)(p+size);
	size += sizeof(pid_t);
	process->original_ppid = *(pid_t*)(p+size);
	size += sizeof(pid_t);
	process->group_id = *(pid_t*)(p+size);
	size += sizeof(pid_t);
	process->session_id = *(pid_t*)(p+size);
	size += sizeof(pid_t);
	process->codesigning_flags = *(uint32_t*)(p+size);
	size += sizeof(uint32_t);
	process->is_platform_binary = *(bool*)(p+size);
	size += sizeof(bool);
	process->is_es_client = *(bool*)(p+size);
	size += sizeof(bool);
	memcpy(process->cdhash, p+size, sizeof(uint8_t) * 20);
	size += sizeof(uint8_t) * 20;
	size += swr_es_string_token_t_read(&(process->signing_id), p+size);
	size += swr_es_string_token_t_read(&(process->team_id), p+size);
	process->executable = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(process->executable, p+size);
	process->tty = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(process->tty, p+size);
	process->start_time = *(struct timeval*)(p+size);
	size += sizeof(struct timeval);
	size += swr_audit_token_t_read(&(process->responsible_audit_token), p+size);
	size += swr_audit_token_t_read(&(process->parent_audit_token), p+size);
    return size;
}

size_t swr_es_thread_state_t_size(es_thread_state_t *thread_state) {
    size_t size = 0;
	size += sizeof(int);
	size += swr_es_token_t_size(&(thread_state->state));
    return size;
}

size_t swr_es_thread_state_t_write(es_thread_state_t *thread_state, void *p) {
    size_t size = 0;
	*(int*)(p+size) = thread_state->flavor;
	size += sizeof(int);
	size += swr_es_token_t_write(&(thread_state->state), p+size);
    return size;
}

size_t swr_es_thread_state_t_read(es_thread_state_t *thread_state, void *p) {
    size_t size = 0;
	thread_state->flavor = *(int*)(p+size);
	size += sizeof(int);
	size += swr_es_token_t_read(&(thread_state->state), p+size);
    return size;
}

size_t swr_es_fd_t_size(es_fd_t *fd) {
    size_t size = 0;
	size += sizeof(int32_t);
	size += sizeof(uint32_t);
    return size;
}

size_t swr_es_fd_t_write(es_fd_t *fd, void *p) {
    size_t size = 0;
	*(int32_t*)(p+size) = fd->fd;
	size += sizeof(int32_t);
	*(uint32_t*)(p+size) = fd->fdtype;
	size += sizeof(uint32_t);
    return size;
}

size_t swr_es_fd_t_read(es_fd_t *fd, void *p) {
    size_t size = 0;
	fd->fd = *(int32_t*)(p+size);
	size += sizeof(int32_t);
	fd->fdtype = *(uint32_t*)(p+size);
	size += sizeof(uint32_t);
    return size;
}

size_t swr_es_btm_launch_item_t_size(es_btm_launch_item_t *btm_launch_item) {
    size_t size = 0;
	size += sizeof(es_btm_item_type_t);
	size += sizeof(bool);
	size += sizeof(bool);
	size += sizeof(uid_t);
	size += swr_es_string_token_t_size(&(btm_launch_item->item_url));
	size += swr_es_string_token_t_size(&(btm_launch_item->app_url));
    return size;
}

size_t swr_es_btm_launch_item_t_write(es_btm_launch_item_t *btm_launch_item, void *p) {
    size_t size = 0;
	*(es_btm_item_type_t*)(p+size) = btm_launch_item->item_type;
	size += sizeof(es_btm_item_type_t);
	*(bool*)(p+size) = btm_launch_item->legacy;
	size += sizeof(bool);
	*(bool*)(p+size) = btm_launch_item->managed;
	size += sizeof(bool);
	*(uid_t*)(p+size) = btm_launch_item->uid;
	size += sizeof(uid_t);
	size += swr_es_string_token_t_write(&(btm_launch_item->item_url), p+size);
	size += swr_es_string_token_t_write(&(btm_launch_item->app_url), p+size);
    return size;
}

size_t swr_es_btm_launch_item_t_read(es_btm_launch_item_t *btm_launch_item, void *p) {
    size_t size = 0;
	btm_launch_item->item_type = *(es_btm_item_type_t*)(p+size);
	size += sizeof(es_btm_item_type_t);
	btm_launch_item->legacy = *(bool*)(p+size);
	size += sizeof(bool);
	btm_launch_item->managed = *(bool*)(p+size);
	size += sizeof(bool);
	btm_launch_item->uid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
	size += swr_es_string_token_t_read(&(btm_launch_item->item_url), p+size);
	size += swr_es_string_token_t_read(&(btm_launch_item->app_url), p+size);
    return size;
}

size_t swr_es_event_exec_t_size(es_event_exec_t *event_exec) {
    size_t size = 0;
	size += swr_es_process_t_size(event_exec->target);
    return size;
}

size_t swr_es_event_exec_t_write(es_event_exec_t *event_exec, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_exec->target, p+size);
    return size;
}

size_t swr_es_event_exec_t_read(es_event_exec_t *event_exec, void *p) {
    size_t size = 0;
	event_exec->target = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_exec->target, p+size);
    return size;
}

size_t swr_es_event_open_t_size(es_event_open_t *event_open) {
    size_t size = 0;
	size += sizeof(int32_t);
	size += swr_es_file_t_size(event_open->file);
    return size;
}

size_t swr_es_event_open_t_write(es_event_open_t *event_open, void *p) {
    size_t size = 0;
	*(int32_t*)(p+size) = event_open->fflag;
	size += sizeof(int32_t);
	size += swr_es_file_t_write(event_open->file, p+size);
    return size;
}

size_t swr_es_event_open_t_read(es_event_open_t *event_open, void *p) {
    size_t size = 0;
	event_open->fflag = *(int32_t*)(p+size);
	size += sizeof(int32_t);
	event_open->file = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_open->file, p+size);
    return size;
}

size_t swr_es_event_kextload_t_size(es_event_kextload_t *event_kextload) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(event_kextload->identifier));
    return size;
}

size_t swr_es_event_kextload_t_write(es_event_kextload_t *event_kextload, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(event_kextload->identifier), p+size);
    return size;
}

size_t swr_es_event_kextload_t_read(es_event_kextload_t *event_kextload, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(event_kextload->identifier), p+size);
    return size;
}

size_t swr_es_event_kextunload_t_size(es_event_kextunload_t *event_kextunload) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(event_kextunload->identifier));
    return size;
}

size_t swr_es_event_kextunload_t_write(es_event_kextunload_t *event_kextunload, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(event_kextunload->identifier), p+size);
    return size;
}

size_t swr_es_event_kextunload_t_read(es_event_kextunload_t *event_kextunload, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(event_kextunload->identifier), p+size);
    return size;
}

size_t swr_es_event_unlink_t_size(es_event_unlink_t *event_unlink) {
    size_t size = 0;
	size += swr_es_file_t_size(event_unlink->target);
	size += swr_es_file_t_size(event_unlink->parent_dir);
    return size;
}

size_t swr_es_event_unlink_t_write(es_event_unlink_t *event_unlink, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_unlink->target, p+size);
	size += swr_es_file_t_write(event_unlink->parent_dir, p+size);
    return size;
}

size_t swr_es_event_unlink_t_read(es_event_unlink_t *event_unlink, void *p) {
    size_t size = 0;
	event_unlink->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_unlink->target, p+size);
	event_unlink->parent_dir = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_unlink->parent_dir, p+size);
    return size;
}

size_t swr_es_event_mmap_t_size(es_event_mmap_t *event_mmap) {
    size_t size = 0;
	size += sizeof(int32_t);
	size += sizeof(int32_t);
	size += sizeof(int32_t);
	size += sizeof(uint64_t);
	size += swr_es_file_t_size(event_mmap->source);
    return size;
}

size_t swr_es_event_mmap_t_write(es_event_mmap_t *event_mmap, void *p) {
    size_t size = 0;
	*(int32_t*)(p+size) = event_mmap->protection;
	size += sizeof(int32_t);
	*(int32_t*)(p+size) = event_mmap->max_protection;
	size += sizeof(int32_t);
	*(int32_t*)(p+size) = event_mmap->flags;
	size += sizeof(int32_t);
	*(uint64_t*)(p+size) = event_mmap->file_pos;
	size += sizeof(uint64_t);
	size += swr_es_file_t_write(event_mmap->source, p+size);
    return size;
}

size_t swr_es_event_mmap_t_read(es_event_mmap_t *event_mmap, void *p) {
    size_t size = 0;
	event_mmap->protection = *(int32_t*)(p+size);
	size += sizeof(int32_t);
	event_mmap->max_protection = *(int32_t*)(p+size);
	size += sizeof(int32_t);
	event_mmap->flags = *(int32_t*)(p+size);
	size += sizeof(int32_t);
	event_mmap->file_pos = *(uint64_t*)(p+size);
	size += sizeof(uint64_t);
	event_mmap->source = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_mmap->source, p+size);
    return size;
}

size_t swr_es_event_link_t_size(es_event_link_t *event_link) {
    size_t size = 0;
	size += swr_es_file_t_size(event_link->source);
	size += swr_es_file_t_size(event_link->target_dir);
	size += swr_es_string_token_t_size(&(event_link->target_filename));
    return size;
}

size_t swr_es_event_link_t_write(es_event_link_t *event_link, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_link->source, p+size);
	size += swr_es_file_t_write(event_link->target_dir, p+size);
	size += swr_es_string_token_t_write(&(event_link->target_filename), p+size);
    return size;
}

size_t swr_es_event_link_t_read(es_event_link_t *event_link, void *p) {
    size_t size = 0;
	event_link->source = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_link->source, p+size);
	event_link->target_dir = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_link->target_dir, p+size);
	size += swr_es_string_token_t_read(&(event_link->target_filename), p+size);
    return size;
}

size_t swr_es_event_mount_t_size(es_event_mount_t *event_mount) {
    size_t size = 0;
	size += sizeof(struct statfs);
    return size;
}

size_t swr_es_event_mount_t_write(es_event_mount_t *event_mount, void *p) {
    size_t size = 0;
	memcpy(p+size,event_mount->statfs,sizeof(struct statfs));
	size += sizeof(struct statfs);
    return size;
}

size_t swr_es_event_mount_t_read(es_event_mount_t *event_mount, void *p) {
    size_t size = 0;
	memcpy(event_mount->statfs, p+size, sizeof(struct statfs));
	size += sizeof(struct statfs);
    return size;
}

size_t swr_es_event_unmount_t_size(es_event_unmount_t *event_unmount) {
    size_t size = 0;
	size += sizeof(struct statfs);
    return size;
}

size_t swr_es_event_unmount_t_write(es_event_unmount_t *event_unmount, void *p) {
    size_t size = 0;
	memcpy(p+size,event_unmount->statfs,sizeof(struct statfs));
	size += sizeof(struct statfs);
    return size;
}

size_t swr_es_event_unmount_t_read(es_event_unmount_t *event_unmount, void *p) {
    size_t size = 0;
	memcpy(event_unmount->statfs, p+size, sizeof(struct statfs));
	size += sizeof(struct statfs);
    return size;
}

size_t swr_es_event_remount_t_size(es_event_remount_t *event_remount) {
    size_t size = 0;
	size += sizeof(struct statfs);
    return size;
}

size_t swr_es_event_remount_t_write(es_event_remount_t *event_remount, void *p) {
    size_t size = 0;
	memcpy(p+size,event_remount->statfs,sizeof(struct statfs));
	size += sizeof(struct statfs);
    return size;
}

size_t swr_es_event_remount_t_read(es_event_remount_t *event_remount, void *p) {
    size_t size = 0;
	memcpy(event_remount->statfs, p+size, sizeof(struct statfs));
	size += sizeof(struct statfs);
    return size;
}

size_t swr_es_event_fork_t_size(es_event_fork_t *event_fork) {
    size_t size = 0;
	size += swr_es_process_t_size(event_fork->child);
    return size;
}

size_t swr_es_event_fork_t_write(es_event_fork_t *event_fork, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_fork->child, p+size);
    return size;
}

size_t swr_es_event_fork_t_read(es_event_fork_t *event_fork, void *p) {
    size_t size = 0;
	event_fork->child = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_fork->child, p+size);
    return size;
}

size_t swr_es_event_mprotect_t_size(es_event_mprotect_t *event_mprotect) {
    size_t size = 0;
	size += sizeof(int32_t);
	size += sizeof(user_addr_t);
	size += sizeof(user_size_t);
    return size;
}

size_t swr_es_event_mprotect_t_write(es_event_mprotect_t *event_mprotect, void *p) {
    size_t size = 0;
	*(int32_t*)(p+size) = event_mprotect->protection;
	size += sizeof(int32_t);
	*(user_addr_t*)(p+size) = event_mprotect->address;
	size += sizeof(user_addr_t);
	*(user_size_t*)(p+size) = event_mprotect->size;
	size += sizeof(user_size_t);
    return size;
}

size_t swr_es_event_mprotect_t_read(es_event_mprotect_t *event_mprotect, void *p) {
    size_t size = 0;
	event_mprotect->protection = *(int32_t*)(p+size);
	size += sizeof(int32_t);
	event_mprotect->address = *(user_addr_t*)(p+size);
	size += sizeof(user_addr_t);
	event_mprotect->size = *(user_size_t*)(p+size);
	size += sizeof(user_size_t);
    return size;
}

size_t swr_es_event_signal_t_size(es_event_signal_t *event_signal) {
    size_t size = 0;
	size += sizeof(int);
	size += swr_es_process_t_size(event_signal->target);
    return size;
}

size_t swr_es_event_signal_t_write(es_event_signal_t *event_signal, void *p) {
    size_t size = 0;
	*(int*)(p+size) = event_signal->sig;
	size += sizeof(int);
	size += swr_es_process_t_write(event_signal->target, p+size);
    return size;
}

size_t swr_es_event_signal_t_read(es_event_signal_t *event_signal, void *p) {
    size_t size = 0;
	event_signal->sig = *(int*)(p+size);
	size += sizeof(int);
	event_signal->target = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_signal->target, p+size);
    return size;
}

size_t swr_es_event_rename_t_size(es_event_rename_t *event_rename) {
    size_t size = 0;
	size += swr_es_file_t_size(event_rename->source);
	size += sizeof(es_destination_type_t);
	switch (event_rename->destination_type) {
		case ES_DESTINATION_TYPE_EXISTING_FILE :{
			size += swr_es_file_t_size(event_rename->destination.existing_file);
		}break;
		case ES_DESTINATION_TYPE_NEW_PATH :{
			size += swr_es_file_t_size(event_rename->destination.new_path.dir);
			size += swr_es_string_token_t_size(&(event_rename->destination.new_path.filename));
		}break;
		default:
			break;
	}

    return size;
}

size_t swr_es_event_rename_t_write(es_event_rename_t *event_rename, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_rename->source, p+size);
	*(es_destination_type_t*)(p+size) = event_rename->destination_type;
	size += sizeof(es_destination_type_t);
	switch (event_rename->destination_type) {
		case ES_DESTINATION_TYPE_EXISTING_FILE :{
			size += swr_es_file_t_write(event_rename->destination.existing_file, p+size);
		}break;
		case ES_DESTINATION_TYPE_NEW_PATH :{
			size += swr_es_file_t_write(event_rename->destination.new_path.dir, p+size);
			size += swr_es_string_token_t_write(&(event_rename->destination.new_path.filename), p+size);
		}break;
		default:
			break;
	}

    return size;
}

size_t swr_es_event_rename_t_read(es_event_rename_t *event_rename, void *p) {
    size_t size = 0;
	event_rename->source = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_rename->source, p+size);
	event_rename->destination_type = *(es_destination_type_t*)(p+size);
	size += sizeof(es_destination_type_t);
	switch (event_rename->destination_type) {
		case ES_DESTINATION_TYPE_EXISTING_FILE :{
			event_rename->destination.existing_file = malloc(sizeof(es_file_t));
			size += swr_es_file_t_read(event_rename->destination.existing_file, p+size);
		}break;
		case ES_DESTINATION_TYPE_NEW_PATH :{
			event_rename->destination.new_path.dir = malloc(sizeof(es_file_t));
			size += swr_es_file_t_read(event_rename->destination.new_path.dir, p+size);
			size += swr_es_string_token_t_read(&(event_rename->destination.new_path.filename), p+size);
		}break;
		default:
			break;
	}

    return size;
}

size_t swr_es_event_setextattr_t_size(es_event_setextattr_t *event_setextattr) {
    size_t size = 0;
	size += swr_es_file_t_size(event_setextattr->target);
	size += swr_es_string_token_t_size(&(event_setextattr->extattr));
    return size;
}

size_t swr_es_event_setextattr_t_write(es_event_setextattr_t *event_setextattr, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_setextattr->target, p+size);
	size += swr_es_string_token_t_write(&(event_setextattr->extattr), p+size);
    return size;
}

size_t swr_es_event_setextattr_t_read(es_event_setextattr_t *event_setextattr, void *p) {
    size_t size = 0;
	event_setextattr->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_setextattr->target, p+size);
	size += swr_es_string_token_t_read(&(event_setextattr->extattr), p+size);
    return size;
}

size_t swr_es_event_getextattr_t_size(es_event_getextattr_t *event_getextattr) {
    size_t size = 0;
	size += swr_es_file_t_size(event_getextattr->target);
	size += swr_es_string_token_t_size(&(event_getextattr->extattr));
    return size;
}

size_t swr_es_event_getextattr_t_write(es_event_getextattr_t *event_getextattr, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_getextattr->target, p+size);
	size += swr_es_string_token_t_write(&(event_getextattr->extattr), p+size);
    return size;
}

size_t swr_es_event_getextattr_t_read(es_event_getextattr_t *event_getextattr, void *p) {
    size_t size = 0;
	event_getextattr->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_getextattr->target, p+size);
	size += swr_es_string_token_t_read(&(event_getextattr->extattr), p+size);
    return size;
}

size_t swr_es_event_deleteextattr_t_size(es_event_deleteextattr_t *event_deleteextattr) {
    size_t size = 0;
	size += swr_es_file_t_size(event_deleteextattr->target);
	size += swr_es_string_token_t_size(&(event_deleteextattr->extattr));
    return size;
}

size_t swr_es_event_deleteextattr_t_write(es_event_deleteextattr_t *event_deleteextattr, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_deleteextattr->target, p+size);
	size += swr_es_string_token_t_write(&(event_deleteextattr->extattr), p+size);
    return size;
}

size_t swr_es_event_deleteextattr_t_read(es_event_deleteextattr_t *event_deleteextattr, void *p) {
    size_t size = 0;
	event_deleteextattr->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_deleteextattr->target, p+size);
	size += swr_es_string_token_t_read(&(event_deleteextattr->extattr), p+size);
    return size;
}

size_t swr_es_event_setmode_t_size(es_event_setmode_t *event_setmode) {
    size_t size = 0;
	size += sizeof(mode_t);
	size += swr_es_file_t_size(event_setmode->target);
    return size;
}

size_t swr_es_event_setmode_t_write(es_event_setmode_t *event_setmode, void *p) {
    size_t size = 0;
	*(mode_t*)(p+size) = event_setmode->mode;
	size += sizeof(mode_t);
	size += swr_es_file_t_write(event_setmode->target, p+size);
    return size;
}

size_t swr_es_event_setmode_t_read(es_event_setmode_t *event_setmode, void *p) {
    size_t size = 0;
	event_setmode->mode = *(mode_t*)(p+size);
	size += sizeof(mode_t);
	event_setmode->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_setmode->target, p+size);
    return size;
}

size_t swr_es_event_setflags_t_size(es_event_setflags_t *event_setflags) {
    size_t size = 0;
	size += sizeof(uint32_t);
	size += swr_es_file_t_size(event_setflags->target);
    return size;
}

size_t swr_es_event_setflags_t_write(es_event_setflags_t *event_setflags, void *p) {
    size_t size = 0;
	*(uint32_t*)(p+size) = event_setflags->flags;
	size += sizeof(uint32_t);
	size += swr_es_file_t_write(event_setflags->target, p+size);
    return size;
}

size_t swr_es_event_setflags_t_read(es_event_setflags_t *event_setflags, void *p) {
    size_t size = 0;
	event_setflags->flags = *(uint32_t*)(p+size);
	size += sizeof(uint32_t);
	event_setflags->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_setflags->target, p+size);
    return size;
}

size_t swr_es_event_setowner_t_size(es_event_setowner_t *event_setowner) {
    size_t size = 0;
	size += sizeof(uid_t);
	size += sizeof(gid_t);
	size += swr_es_file_t_size(event_setowner->target);
    return size;
}

size_t swr_es_event_setowner_t_write(es_event_setowner_t *event_setowner, void *p) {
    size_t size = 0;
	*(uid_t*)(p+size) = event_setowner->uid;
	size += sizeof(uid_t);
	*(gid_t*)(p+size) = event_setowner->gid;
	size += sizeof(gid_t);
	size += swr_es_file_t_write(event_setowner->target, p+size);
    return size;
}

size_t swr_es_event_setowner_t_read(es_event_setowner_t *event_setowner, void *p) {
    size_t size = 0;
	event_setowner->uid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
	event_setowner->gid = *(gid_t*)(p+size);
	size += sizeof(gid_t);
	event_setowner->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_setowner->target, p+size);
    return size;
}

size_t swr_es_event_close_t_size(es_event_close_t *event_close) {
    size_t size = 0;
	size += sizeof(bool);
	size += swr_es_file_t_size(event_close->target);
    return size;
}

size_t swr_es_event_close_t_write(es_event_close_t *event_close, void *p) {
    size_t size = 0;
	*(bool*)(p+size) = event_close->modified;
	size += sizeof(bool);
	size += swr_es_file_t_write(event_close->target, p+size);
    return size;
}

size_t swr_es_event_close_t_read(es_event_close_t *event_close, void *p) {
    size_t size = 0;
	event_close->modified = *(bool*)(p+size);
	size += sizeof(bool);
	event_close->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_close->target, p+size);
    return size;
}

size_t swr_es_event_create_t_size(es_event_create_t *event_create) {
    size_t size = 0;
	size += sizeof(es_destination_type_t);
	size += swr_es_file_t_size(event_create->destination.existing_file);
	size += swr_es_file_t_size(event_create->destination.new_path.dir);
	size += swr_es_string_token_t_size(&(event_create->destination.new_path.filename));
	size += sizeof(mode_t);
    return size;
}

size_t swr_es_event_create_t_write(es_event_create_t *event_create, void *p) {
    size_t size = 0;
	*(es_destination_type_t*)(p+size) = event_create->destination_type;
	size += sizeof(es_destination_type_t);
	size += swr_es_file_t_write(event_create->destination.existing_file, p+size);
	size += swr_es_file_t_write(event_create->destination.new_path.dir, p+size);
	size += swr_es_string_token_t_write(&(event_create->destination.new_path.filename), p+size);
	*(mode_t*)(p+size) = event_create->destination.new_path.mode;
	size += sizeof(mode_t);
    return size;
}

size_t swr_es_event_create_t_read(es_event_create_t *event_create, void *p) {
    size_t size = 0;
	event_create->destination_type = *(es_destination_type_t*)(p+size);
	size += sizeof(es_destination_type_t);
	event_create->destination.existing_file = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_create->destination.existing_file, p+size);
	event_create->destination.new_path.dir = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_create->destination.new_path.dir, p+size);
	size += swr_es_string_token_t_read(&(event_create->destination.new_path.filename), p+size);
	event_create->destination.new_path.mode = *(mode_t*)(p+size);
	size += sizeof(mode_t);
    return size;
}

size_t swr_es_event_exit_t_size(es_event_exit_t *event_exit) {
    size_t size = 0;
	size += sizeof(int);
    return size;
}

size_t swr_es_event_exit_t_write(es_event_exit_t *event_exit, void *p) {
    size_t size = 0;
	*(int*)(p+size) = event_exit->stat;
	size += sizeof(int);
    return size;
}

size_t swr_es_event_exit_t_read(es_event_exit_t *event_exit, void *p) {
    size_t size = 0;
	event_exit->stat = *(int*)(p+size);
	size += sizeof(int);
    return size;
}

size_t swr_es_event_exchangedata_t_size(es_event_exchangedata_t *event_exchangedata) {
    size_t size = 0;
	size += swr_es_file_t_size(event_exchangedata->file1);
	size += swr_es_file_t_size(event_exchangedata->file2);
    return size;
}

size_t swr_es_event_exchangedata_t_write(es_event_exchangedata_t *event_exchangedata, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_exchangedata->file1, p+size);
	size += swr_es_file_t_write(event_exchangedata->file2, p+size);
    return size;
}

size_t swr_es_event_exchangedata_t_read(es_event_exchangedata_t *event_exchangedata, void *p) {
    size_t size = 0;
	event_exchangedata->file1 = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_exchangedata->file1, p+size);
	event_exchangedata->file2 = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_exchangedata->file2, p+size);
    return size;
}

size_t swr_es_event_write_t_size(es_event_write_t *event_write) {
    size_t size = 0;
	size += swr_es_file_t_size(event_write->target);
    return size;
}

size_t swr_es_event_write_t_write(es_event_write_t *event_write, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_write->target, p+size);
    return size;
}

size_t swr_es_event_write_t_read(es_event_write_t *event_write, void *p) {
    size_t size = 0;
	event_write->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_write->target, p+size);
    return size;
}

size_t swr_es_event_truncate_t_size(es_event_truncate_t *event_truncate) {
    size_t size = 0;
	size += swr_es_file_t_size(event_truncate->target);
    return size;
}

size_t swr_es_event_truncate_t_write(es_event_truncate_t *event_truncate, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_truncate->target, p+size);
    return size;
}

size_t swr_es_event_truncate_t_read(es_event_truncate_t *event_truncate, void *p) {
    size_t size = 0;
	event_truncate->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_truncate->target, p+size);
    return size;
}

size_t swr_es_event_chdir_t_size(es_event_chdir_t *event_chdir) {
    size_t size = 0;
	size += swr_es_file_t_size(event_chdir->target);
    return size;
}

size_t swr_es_event_chdir_t_write(es_event_chdir_t *event_chdir, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_chdir->target, p+size);
    return size;
}

size_t swr_es_event_chdir_t_read(es_event_chdir_t *event_chdir, void *p) {
    size_t size = 0;
	event_chdir->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_chdir->target, p+size);
    return size;
}

size_t swr_es_event_stat_t_size(es_event_stat_t *event_stat) {
    size_t size = 0;
	size += swr_es_file_t_size(event_stat->target);
    return size;
}

size_t swr_es_event_stat_t_write(es_event_stat_t *event_stat, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_stat->target, p+size);
    return size;
}

size_t swr_es_event_stat_t_read(es_event_stat_t *event_stat, void *p) {
    size_t size = 0;
	event_stat->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_stat->target, p+size);
    return size;
}

size_t swr_es_event_chroot_t_size(es_event_chroot_t *event_chroot) {
    size_t size = 0;
	size += swr_es_file_t_size(event_chroot->target);
    return size;
}

size_t swr_es_event_chroot_t_write(es_event_chroot_t *event_chroot, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_chroot->target, p+size);
    return size;
}

size_t swr_es_event_chroot_t_read(es_event_chroot_t *event_chroot, void *p) {
    size_t size = 0;
	event_chroot->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_chroot->target, p+size);
    return size;
}

size_t swr_es_event_listextattr_t_size(es_event_listextattr_t *event_listextattr) {
    size_t size = 0;
	size += swr_es_file_t_size(event_listextattr->target);
    return size;
}

size_t swr_es_event_listextattr_t_write(es_event_listextattr_t *event_listextattr, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_listextattr->target, p+size);
    return size;
}

size_t swr_es_event_listextattr_t_read(es_event_listextattr_t *event_listextattr, void *p) {
    size_t size = 0;
	event_listextattr->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_listextattr->target, p+size);
    return size;
}

size_t swr_es_event_iokit_open_t_size(es_event_iokit_open_t *event_iokit_open) {
    size_t size = 0;
	size += sizeof(uint32_t);
	size += swr_es_string_token_t_size(&(event_iokit_open->user_client_class));
    return size;
}

size_t swr_es_event_iokit_open_t_write(es_event_iokit_open_t *event_iokit_open, void *p) {
    size_t size = 0;
	*(uint32_t*)(p+size) = event_iokit_open->user_client_type;
	size += sizeof(uint32_t);
	size += swr_es_string_token_t_write(&(event_iokit_open->user_client_class), p+size);
    return size;
}

size_t swr_es_event_iokit_open_t_read(es_event_iokit_open_t *event_iokit_open, void *p) {
    size_t size = 0;
	event_iokit_open->user_client_type = *(uint32_t*)(p+size);
	size += sizeof(uint32_t);
	size += swr_es_string_token_t_read(&(event_iokit_open->user_client_class), p+size);
    return size;
}

size_t swr_es_event_get_task_t_size(es_event_get_task_t *event_get_task) {
    size_t size = 0;
	size += swr_es_process_t_size(event_get_task->target);
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_t_write(es_event_get_task_t *event_get_task, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_get_task->target, p+size);
	*(es_get_task_type_t*)(p+size) = event_get_task->type;
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_t_read(es_event_get_task_t *event_get_task, void *p) {
    size_t size = 0;
	event_get_task->target = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_get_task->target, p+size);
	event_get_task->type = *(es_get_task_type_t*)(p+size);
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_read_t_size(es_event_get_task_read_t *event_get_task_read) {
    size_t size = 0;
	size += swr_es_process_t_size(event_get_task_read->target);
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_read_t_write(es_event_get_task_read_t *event_get_task_read, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_get_task_read->target, p+size);
	*(es_get_task_type_t*)(p+size) = event_get_task_read->type;
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_read_t_read(es_event_get_task_read_t *event_get_task_read, void *p) {
    size_t size = 0;
	event_get_task_read->target = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_get_task_read->target, p+size);
	event_get_task_read->type = *(es_get_task_type_t*)(p+size);
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_inspect_t_size(es_event_get_task_inspect_t *event_get_task_inspect) {
    size_t size = 0;
	size += swr_es_process_t_size(event_get_task_inspect->target);
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_inspect_t_write(es_event_get_task_inspect_t *event_get_task_inspect, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_get_task_inspect->target, p+size);
	*(es_get_task_type_t*)(p+size) = event_get_task_inspect->type;
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_inspect_t_read(es_event_get_task_inspect_t *event_get_task_inspect, void *p) {
    size_t size = 0;
	event_get_task_inspect->target = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_get_task_inspect->target, p+size);
	event_get_task_inspect->type = *(es_get_task_type_t*)(p+size);
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_name_t_size(es_event_get_task_name_t *event_get_task_name) {
    size_t size = 0;
	size += swr_es_process_t_size(event_get_task_name->target);
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_name_t_write(es_event_get_task_name_t *event_get_task_name, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_get_task_name->target, p+size);
	*(es_get_task_type_t*)(p+size) = event_get_task_name->type;
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_get_task_name_t_read(es_event_get_task_name_t *event_get_task_name, void *p) {
    size_t size = 0;
	event_get_task_name->target = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_get_task_name->target, p+size);
	event_get_task_name->type = *(es_get_task_type_t*)(p+size);
	size += sizeof(es_get_task_type_t);
    return size;
}

size_t swr_es_event_getattrlist_t_size(es_event_getattrlist_t *event_getattrlist) {
    size_t size = 0;
	size += sizeof(struct attrlist);
	size += swr_es_file_t_size(event_getattrlist->target);
    return size;
}

size_t swr_es_event_getattrlist_t_write(es_event_getattrlist_t *event_getattrlist, void *p) {
    size_t size = 0;
	*(struct attrlist*)(p+size) = event_getattrlist->attrlist;
	size += sizeof(struct attrlist);
	size += swr_es_file_t_write(event_getattrlist->target, p+size);
    return size;
}

size_t swr_es_event_getattrlist_t_read(es_event_getattrlist_t *event_getattrlist, void *p) {
    size_t size = 0;
	event_getattrlist->attrlist = *(struct attrlist*)(p+size);
	size += sizeof(struct attrlist);
	event_getattrlist->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_getattrlist->target, p+size);
    return size;
}

size_t swr_es_event_setattrlist_t_size(es_event_setattrlist_t *event_setattrlist) {
    size_t size = 0;
	size += sizeof(struct attrlist);
	size += swr_es_file_t_size(event_setattrlist->target);
    return size;
}

size_t swr_es_event_setattrlist_t_write(es_event_setattrlist_t *event_setattrlist, void *p) {
    size_t size = 0;
	*(struct attrlist*)(p+size) = event_setattrlist->attrlist;
	size += sizeof(struct attrlist);
	size += swr_es_file_t_write(event_setattrlist->target, p+size);
    return size;
}

size_t swr_es_event_setattrlist_t_read(es_event_setattrlist_t *event_setattrlist, void *p) {
    size_t size = 0;
	event_setattrlist->attrlist = *(struct attrlist*)(p+size);
	size += sizeof(struct attrlist);
	event_setattrlist->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_setattrlist->target, p+size);
    return size;
}

size_t swr_es_event_file_provider_update_t_size(es_event_file_provider_update_t *event_file_provider_update) {
    size_t size = 0;
	size += swr_es_file_t_size(event_file_provider_update->source);
	size += swr_es_string_token_t_size(&(event_file_provider_update->target_path));
    return size;
}

size_t swr_es_event_file_provider_update_t_write(es_event_file_provider_update_t *event_file_provider_update, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_file_provider_update->source, p+size);
	size += swr_es_string_token_t_write(&(event_file_provider_update->target_path), p+size);
    return size;
}

size_t swr_es_event_file_provider_update_t_read(es_event_file_provider_update_t *event_file_provider_update, void *p) {
    size_t size = 0;
	event_file_provider_update->source = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_file_provider_update->source, p+size);
	size += swr_es_string_token_t_read(&(event_file_provider_update->target_path), p+size);
    return size;
}

size_t swr_es_event_file_provider_materialize_t_size(es_event_file_provider_materialize_t *event_file_provider_materialize) {
    size_t size = 0;
	size += swr_es_process_t_size(event_file_provider_materialize->instigator);
	size += swr_es_file_t_size(event_file_provider_materialize->source);
	size += swr_es_file_t_size(event_file_provider_materialize->target);
    return size;
}

size_t swr_es_event_file_provider_materialize_t_write(es_event_file_provider_materialize_t *event_file_provider_materialize, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_file_provider_materialize->instigator, p+size);
	size += swr_es_file_t_write(event_file_provider_materialize->source, p+size);
	size += swr_es_file_t_write(event_file_provider_materialize->target, p+size);
    return size;
}

size_t swr_es_event_file_provider_materialize_t_read(es_event_file_provider_materialize_t *event_file_provider_materialize, void *p) {
    size_t size = 0;
	event_file_provider_materialize->instigator = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_file_provider_materialize->instigator, p+size);
	event_file_provider_materialize->source = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_file_provider_materialize->source, p+size);
	event_file_provider_materialize->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_file_provider_materialize->target, p+size);
    return size;
}

size_t swr_es_event_readlink_t_size(es_event_readlink_t *event_readlink) {
    size_t size = 0;
	size += swr_es_file_t_size(event_readlink->source);
    return size;
}

size_t swr_es_event_readlink_t_write(es_event_readlink_t *event_readlink, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_readlink->source, p+size);
    return size;
}

size_t swr_es_event_readlink_t_read(es_event_readlink_t *event_readlink, void *p) {
    size_t size = 0;
	event_readlink->source = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_readlink->source, p+size);
    return size;
}

size_t swr_es_event_lookup_t_size(es_event_lookup_t *event_lookup) {
    size_t size = 0;
	size += swr_es_file_t_size(event_lookup->source_dir);
	size += swr_es_string_token_t_size(&(event_lookup->relative_target));
    return size;
}

size_t swr_es_event_lookup_t_write(es_event_lookup_t *event_lookup, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_lookup->source_dir, p+size);
	size += swr_es_string_token_t_write(&(event_lookup->relative_target), p+size);
    return size;
}

size_t swr_es_event_lookup_t_read(es_event_lookup_t *event_lookup, void *p) {
    size_t size = 0;
	event_lookup->source_dir = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_lookup->source_dir, p+size);
	size += swr_es_string_token_t_read(&(event_lookup->relative_target), p+size);
    return size;
}

size_t swr_es_event_access_t_size(es_event_access_t *event_access) {
    size_t size = 0;
	size += sizeof(int32_t);
	size += swr_es_file_t_size(event_access->target);
    return size;
}

size_t swr_es_event_access_t_write(es_event_access_t *event_access, void *p) {
    size_t size = 0;
	*(int32_t*)(p+size) = event_access->mode;
	size += sizeof(int32_t);
	size += swr_es_file_t_write(event_access->target, p+size);
    return size;
}

size_t swr_es_event_access_t_read(es_event_access_t *event_access, void *p) {
    size_t size = 0;
	event_access->mode = *(int32_t*)(p+size);
	size += sizeof(int32_t);
	event_access->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_access->target, p+size);
    return size;
}

size_t swr_es_event_utimes_t_size(es_event_utimes_t *event_utimes) {
    size_t size = 0;
	size += swr_es_file_t_size(event_utimes->target);
	size += sizeof(struct timespec);
	size += sizeof(struct timespec);
    return size;
}

size_t swr_es_event_utimes_t_write(es_event_utimes_t *event_utimes, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_utimes->target, p+size);
	*(struct timespec*)(p+size) = event_utimes->atime;
	size += sizeof(struct timespec);
	*(struct timespec*)(p+size) = event_utimes->mtime;
	size += sizeof(struct timespec);
    return size;
}

size_t swr_es_event_utimes_t_read(es_event_utimes_t *event_utimes, void *p) {
    size_t size = 0;
	event_utimes->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_utimes->target, p+size);
	event_utimes->atime = *(struct timespec*)(p+size);
	size += sizeof(struct timespec);
	event_utimes->mtime = *(struct timespec*)(p+size);
	size += sizeof(struct timespec);
    return size;
}

size_t swr_es_event_clone_t_size(es_event_clone_t *event_clone) {
    size_t size = 0;
	size += swr_es_file_t_size(event_clone->source);
	size += swr_es_file_t_size(event_clone->target_dir);
	size += swr_es_string_token_t_size(&(event_clone->target_name));
    return size;
}

size_t swr_es_event_clone_t_write(es_event_clone_t *event_clone, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_clone->source, p+size);
	size += swr_es_file_t_write(event_clone->target_dir, p+size);
	size += swr_es_string_token_t_write(&(event_clone->target_name), p+size);
    return size;
}

size_t swr_es_event_clone_t_read(es_event_clone_t *event_clone, void *p) {
    size_t size = 0;
	event_clone->source = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_clone->source, p+size);
	event_clone->target_dir = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_clone->target_dir, p+size);
	size += swr_es_string_token_t_read(&(event_clone->target_name), p+size);
    return size;
}

size_t swr_es_event_copyfile_t_size(es_event_copyfile_t *event_copyfile) {
    size_t size = 0;
	size += swr_es_file_t_size(event_copyfile->source);
	size += swr_es_file_t_size(event_copyfile->target_file);
	size += swr_es_file_t_size(event_copyfile->target_dir);
	size += swr_es_string_token_t_size(&(event_copyfile->target_name));
	size += sizeof(mode_t);
	size += sizeof(int32_t);
    return size;
}

size_t swr_es_event_copyfile_t_write(es_event_copyfile_t *event_copyfile, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_copyfile->source, p+size);
	size += swr_es_file_t_write(event_copyfile->target_file, p+size);
	size += swr_es_file_t_write(event_copyfile->target_dir, p+size);
	size += swr_es_string_token_t_write(&(event_copyfile->target_name), p+size);
	*(mode_t*)(p+size) = event_copyfile->mode;
	size += sizeof(mode_t);
	*(int32_t*)(p+size) = event_copyfile->flags;
	size += sizeof(int32_t);
    return size;
}

size_t swr_es_event_copyfile_t_read(es_event_copyfile_t *event_copyfile, void *p) {
    size_t size = 0;
	event_copyfile->source = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_copyfile->source, p+size);
	event_copyfile->target_file = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_copyfile->target_file, p+size);
	event_copyfile->target_dir = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_copyfile->target_dir, p+size);
	size += swr_es_string_token_t_read(&(event_copyfile->target_name), p+size);
	event_copyfile->mode = *(mode_t*)(p+size);
	size += sizeof(mode_t);
	event_copyfile->flags = *(int32_t*)(p+size);
	size += sizeof(int32_t);
    return size;
}

size_t swr_es_event_fcntl_t_size(es_event_fcntl_t *event_fcntl) {
    size_t size = 0;
	size += swr_es_file_t_size(event_fcntl->target);
	size += sizeof(int32_t);
    return size;
}

size_t swr_es_event_fcntl_t_write(es_event_fcntl_t *event_fcntl, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_fcntl->target, p+size);
	*(int32_t*)(p+size) = event_fcntl->cmd;
	size += sizeof(int32_t);
    return size;
}

size_t swr_es_event_fcntl_t_read(es_event_fcntl_t *event_fcntl, void *p) {
    size_t size = 0;
	event_fcntl->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_fcntl->target, p+size);
	event_fcntl->cmd = *(int32_t*)(p+size);
	size += sizeof(int32_t);
    return size;
}

size_t swr_es_event_readdir_t_size(es_event_readdir_t *event_readdir) {
    size_t size = 0;
	size += swr_es_file_t_size(event_readdir->target);
    return size;
}

size_t swr_es_event_readdir_t_write(es_event_readdir_t *event_readdir, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_readdir->target, p+size);
    return size;
}

size_t swr_es_event_readdir_t_read(es_event_readdir_t *event_readdir, void *p) {
    size_t size = 0;
	event_readdir->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_readdir->target, p+size);
    return size;
}

size_t swr_es_event_fsgetpath_t_size(es_event_fsgetpath_t *event_fsgetpath) {
    size_t size = 0;
	size += swr_es_file_t_size(event_fsgetpath->target);
    return size;
}

size_t swr_es_event_fsgetpath_t_write(es_event_fsgetpath_t *event_fsgetpath, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_fsgetpath->target, p+size);
    return size;
}

size_t swr_es_event_fsgetpath_t_read(es_event_fsgetpath_t *event_fsgetpath, void *p) {
    size_t size = 0;
	event_fsgetpath->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_fsgetpath->target, p+size);
    return size;
}

size_t swr_es_event_settime_t_size(es_event_settime_t *event_settime) {
    size_t size = 0;
    return size;
}

size_t swr_es_event_settime_t_write(es_event_settime_t *event_settime, void *p) {
    size_t size = 0;
    return size;
}

size_t swr_es_event_settime_t_read(es_event_settime_t *event_settime, void *p) {
    size_t size = 0;
    return size;
}

size_t swr_es_event_dup_t_size(es_event_dup_t *event_dup) {
    size_t size = 0;
	size += swr_es_file_t_size(event_dup->target);
    return size;
}

size_t swr_es_event_dup_t_write(es_event_dup_t *event_dup, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_dup->target, p+size);
    return size;
}

size_t swr_es_event_dup_t_read(es_event_dup_t *event_dup, void *p) {
    size_t size = 0;
	event_dup->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_dup->target, p+size);
    return size;
}

size_t swr_es_event_uipc_bind_t_size(es_event_uipc_bind_t *event_uipc_bind) {
    size_t size = 0;
	size += swr_es_file_t_size(event_uipc_bind->dir);
	size += swr_es_string_token_t_size(&(event_uipc_bind->filename));
	size += sizeof(mode_t);
    return size;
}

size_t swr_es_event_uipc_bind_t_write(es_event_uipc_bind_t *event_uipc_bind, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_uipc_bind->dir, p+size);
	size += swr_es_string_token_t_write(&(event_uipc_bind->filename), p+size);
	*(mode_t*)(p+size) = event_uipc_bind->mode;
	size += sizeof(mode_t);
    return size;
}

size_t swr_es_event_uipc_bind_t_read(es_event_uipc_bind_t *event_uipc_bind, void *p) {
    size_t size = 0;
	event_uipc_bind->dir = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_uipc_bind->dir, p+size);
	size += swr_es_string_token_t_read(&(event_uipc_bind->filename), p+size);
	event_uipc_bind->mode = *(mode_t*)(p+size);
	size += sizeof(mode_t);
    return size;
}

size_t swr_es_event_uipc_connect_t_size(es_event_uipc_connect_t *event_uipc_connect) {
    size_t size = 0;
	size += swr_es_file_t_size(event_uipc_connect->file);
	size += sizeof(int);
	size += sizeof(int);
	size += sizeof(int);
    return size;
}

size_t swr_es_event_uipc_connect_t_write(es_event_uipc_connect_t *event_uipc_connect, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_uipc_connect->file, p+size);
	*(int*)(p+size) = event_uipc_connect->domain;
	size += sizeof(int);
	*(int*)(p+size) = event_uipc_connect->type;
	size += sizeof(int);
	*(int*)(p+size) = event_uipc_connect->protocol;
	size += sizeof(int);
    return size;
}

size_t swr_es_event_uipc_connect_t_read(es_event_uipc_connect_t *event_uipc_connect, void *p) {
    size_t size = 0;
	event_uipc_connect->file = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_uipc_connect->file, p+size);
	event_uipc_connect->domain = *(int*)(p+size);
	size += sizeof(int);
	event_uipc_connect->type = *(int*)(p+size);
	size += sizeof(int);
	event_uipc_connect->protocol = *(int*)(p+size);
	size += sizeof(int);
    return size;
}

size_t swr_es_event_setacl_t_size(es_event_setacl_t *event_setacl) {
    size_t size = 0;
	size += swr_es_file_t_size(event_setacl->target);
	size += sizeof(es_set_or_clear_t);
	size += sizeof(acl_t _Nonnull);
    return size;
}

size_t swr_es_event_setacl_t_write(es_event_setacl_t *event_setacl, void *p) {
    size_t size = 0;
	size += swr_es_file_t_write(event_setacl->target, p+size);
	*(es_set_or_clear_t*)(p+size) = event_setacl->set_or_clear;
	size += sizeof(es_set_or_clear_t);
	*(acl_t _Nonnull*)(p+size) = event_setacl->acl.set;
	size += sizeof(acl_t _Nonnull);
    return size;
}

size_t swr_es_event_setacl_t_read(es_event_setacl_t *event_setacl, void *p) {
    size_t size = 0;
	event_setacl->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_setacl->target, p+size);
	event_setacl->set_or_clear = *(es_set_or_clear_t*)(p+size);
	size += sizeof(es_set_or_clear_t);
	event_setacl->acl.set = *(acl_t _Nonnull*)(p+size);
	size += sizeof(acl_t _Nonnull);
    return size;
}

size_t swr_es_event_pty_grant_t_size(es_event_pty_grant_t *event_pty_grant) {
    size_t size = 0;
	size += sizeof(dev_t);
    return size;
}

size_t swr_es_event_pty_grant_t_write(es_event_pty_grant_t *event_pty_grant, void *p) {
    size_t size = 0;
	*(dev_t*)(p+size) = event_pty_grant->dev;
	size += sizeof(dev_t);
    return size;
}

size_t swr_es_event_pty_grant_t_read(es_event_pty_grant_t *event_pty_grant, void *p) {
    size_t size = 0;
	event_pty_grant->dev = *(dev_t*)(p+size);
	size += sizeof(dev_t);
    return size;
}

size_t swr_es_event_pty_close_t_size(es_event_pty_close_t *event_pty_close) {
    size_t size = 0;
	size += sizeof(dev_t);
    return size;
}

size_t swr_es_event_pty_close_t_write(es_event_pty_close_t *event_pty_close, void *p) {
    size_t size = 0;
	*(dev_t*)(p+size) = event_pty_close->dev;
	size += sizeof(dev_t);
    return size;
}

size_t swr_es_event_pty_close_t_read(es_event_pty_close_t *event_pty_close, void *p) {
    size_t size = 0;
	event_pty_close->dev = *(dev_t*)(p+size);
	size += sizeof(dev_t);
    return size;
}

size_t swr_es_event_proc_check_t_size(es_event_proc_check_t *event_proc_check) {
    size_t size = 0;
	size += swr_es_process_t_size(event_proc_check->target);
	size += sizeof(es_proc_check_type_t);
	size += sizeof(int);
    return size;
}

size_t swr_es_event_proc_check_t_write(es_event_proc_check_t *event_proc_check, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_proc_check->target, p+size);
	*(es_proc_check_type_t*)(p+size) = event_proc_check->type;
	size += sizeof(es_proc_check_type_t);
	*(int*)(p+size) = event_proc_check->flavor;
	size += sizeof(int);
    return size;
}

size_t swr_es_event_proc_check_t_read(es_event_proc_check_t *event_proc_check, void *p) {
    size_t size = 0;
	event_proc_check->target = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_proc_check->target, p+size);
	event_proc_check->type = *(es_proc_check_type_t*)(p+size);
	size += sizeof(es_proc_check_type_t);
	event_proc_check->flavor = *(int*)(p+size);
	size += sizeof(int);
    return size;
}

size_t swr_es_event_searchfs_t_size(es_event_searchfs_t *event_searchfs) {
    size_t size = 0;
	size += sizeof(struct attrlist);
	size += swr_es_file_t_size(event_searchfs->target);
    return size;
}

size_t swr_es_event_searchfs_t_write(es_event_searchfs_t *event_searchfs, void *p) {
    size_t size = 0;
	*(struct attrlist*)(p+size) = event_searchfs->attrlist;
	size += sizeof(struct attrlist);
	size += swr_es_file_t_write(event_searchfs->target, p+size);
    return size;
}

size_t swr_es_event_searchfs_t_read(es_event_searchfs_t *event_searchfs, void *p) {
    size_t size = 0;
	event_searchfs->attrlist = *(struct attrlist*)(p+size);
	size += sizeof(struct attrlist);
	event_searchfs->target = malloc(sizeof(es_file_t));
	size += swr_es_file_t_read(event_searchfs->target, p+size);
    return size;
}

size_t swr_es_event_proc_suspend_resume_t_size(es_event_proc_suspend_resume_t *event_proc_suspend_resume) {
    size_t size = 0;
	size += swr_es_process_t_size(event_proc_suspend_resume->target);
	size += sizeof(es_proc_suspend_resume_type_t);
    return size;
}

size_t swr_es_event_proc_suspend_resume_t_write(es_event_proc_suspend_resume_t *event_proc_suspend_resume, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_proc_suspend_resume->target, p+size);
	*(es_proc_suspend_resume_type_t*)(p+size) = event_proc_suspend_resume->type;
	size += sizeof(es_proc_suspend_resume_type_t);
    return size;
}

size_t swr_es_event_proc_suspend_resume_t_read(es_event_proc_suspend_resume_t *event_proc_suspend_resume, void *p) {
    size_t size = 0;
	event_proc_suspend_resume->target = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_proc_suspend_resume->target, p+size);
	event_proc_suspend_resume->type = *(es_proc_suspend_resume_type_t*)(p+size);
	size += sizeof(es_proc_suspend_resume_type_t);
    return size;
}

size_t swr_es_event_cs_invalidated_t_size(es_event_cs_invalidated_t *event_cs_invalidated) {
    size_t size = 0;
    return size;
}

size_t swr_es_event_cs_invalidated_t_write(es_event_cs_invalidated_t *event_cs_invalidated, void *p) {
    size_t size = 0;
    return size;
}

size_t swr_es_event_cs_invalidated_t_read(es_event_cs_invalidated_t *event_cs_invalidated, void *p) {
    size_t size = 0;
    return size;
}

size_t swr_es_event_trace_t_size(es_event_trace_t *event_trace) {
    size_t size = 0;
	size += swr_es_process_t_size(event_trace->target);
    return size;
}

size_t swr_es_event_trace_t_write(es_event_trace_t *event_trace, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_trace->target, p+size);
    return size;
}

size_t swr_es_event_trace_t_read(es_event_trace_t *event_trace, void *p) {
    size_t size = 0;
	event_trace->target = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_trace->target, p+size);
    return size;
}

size_t swr_es_event_remote_thread_create_t_size(es_event_remote_thread_create_t *event_remote_thread_create) {
    size_t size = 0;
	size += swr_es_process_t_size(event_remote_thread_create->target);
	size += swr_es_thread_state_t_size(event_remote_thread_create->thread_state);
    return size;
}

size_t swr_es_event_remote_thread_create_t_write(es_event_remote_thread_create_t *event_remote_thread_create, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_remote_thread_create->target, p+size);
	size += swr_es_thread_state_t_write(event_remote_thread_create->thread_state, p+size);
    return size;
}

size_t swr_es_event_remote_thread_create_t_read(es_event_remote_thread_create_t *event_remote_thread_create, void *p) {
    size_t size = 0;
	event_remote_thread_create->target = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_remote_thread_create->target, p+size);
	event_remote_thread_create->thread_state = malloc(sizeof(es_thread_state_t));
	size += swr_es_thread_state_t_read(event_remote_thread_create->thread_state, p+size);
    return size;
}

size_t swr_es_event_setuid_t_size(es_event_setuid_t *event_setuid) {
    size_t size = 0;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setuid_t_write(es_event_setuid_t *event_setuid, void *p) {
    size_t size = 0;
	*(uid_t*)(p+size) = event_setuid->uid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setuid_t_read(es_event_setuid_t *event_setuid, void *p) {
    size_t size = 0;
	event_setuid->uid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setgid_t_size(es_event_setgid_t *event_setgid) {
    size_t size = 0;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setgid_t_write(es_event_setgid_t *event_setgid, void *p) {
    size_t size = 0;
	*(uid_t*)(p+size) = event_setgid->gid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setgid_t_read(es_event_setgid_t *event_setgid, void *p) {
    size_t size = 0;
	event_setgid->gid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_seteuid_t_size(es_event_seteuid_t *event_seteuid) {
    size_t size = 0;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_seteuid_t_write(es_event_seteuid_t *event_seteuid, void *p) {
    size_t size = 0;
	*(uid_t*)(p+size) = event_seteuid->euid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_seteuid_t_read(es_event_seteuid_t *event_seteuid, void *p) {
    size_t size = 0;
	event_seteuid->euid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setegid_t_size(es_event_setegid_t *event_setegid) {
    size_t size = 0;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setegid_t_write(es_event_setegid_t *event_setegid, void *p) {
    size_t size = 0;
	*(uid_t*)(p+size) = event_setegid->egid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setegid_t_read(es_event_setegid_t *event_setegid, void *p) {
    size_t size = 0;
	event_setegid->egid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setreuid_t_size(es_event_setreuid_t *event_setreuid) {
    size_t size = 0;
	size += sizeof(uid_t);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setreuid_t_write(es_event_setreuid_t *event_setreuid, void *p) {
    size_t size = 0;
	*(uid_t*)(p+size) = event_setreuid->ruid;
	size += sizeof(uid_t);
	*(uid_t*)(p+size) = event_setreuid->euid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setreuid_t_read(es_event_setreuid_t *event_setreuid, void *p) {
    size_t size = 0;
	event_setreuid->ruid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
	event_setreuid->euid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setregid_t_size(es_event_setregid_t *event_setregid) {
    size_t size = 0;
	size += sizeof(uid_t);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setregid_t_write(es_event_setregid_t *event_setregid, void *p) {
    size_t size = 0;
	*(uid_t*)(p+size) = event_setregid->rgid;
	size += sizeof(uid_t);
	*(uid_t*)(p+size) = event_setregid->egid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_setregid_t_read(es_event_setregid_t *event_setregid, void *p) {
    size_t size = 0;
	event_setregid->rgid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
	event_setregid->egid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_authentication_od_t_size(es_event_authentication_od_t *event_authentication_od) {
    size_t size = 0;
	size += swr_es_process_t_size(event_authentication_od->instigator);
	size += swr_es_string_token_t_size(&(event_authentication_od->record_type));
	size += swr_es_string_token_t_size(&(event_authentication_od->record_name));
	size += swr_es_string_token_t_size(&(event_authentication_od->node_name));
	size += swr_es_string_token_t_size(&(event_authentication_od->db_path));
    return size;
}

size_t swr_es_event_authentication_od_t_write(es_event_authentication_od_t *event_authentication_od, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_authentication_od->instigator, p+size);
	size += swr_es_string_token_t_write(&(event_authentication_od->record_type), p+size);
	size += swr_es_string_token_t_write(&(event_authentication_od->record_name), p+size);
	size += swr_es_string_token_t_write(&(event_authentication_od->node_name), p+size);
	size += swr_es_string_token_t_write(&(event_authentication_od->db_path), p+size);
    return size;
}

size_t swr_es_event_authentication_od_t_read(es_event_authentication_od_t *event_authentication_od, void *p) {
    size_t size = 0;
	event_authentication_od->instigator = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_authentication_od->instigator, p+size);
	size += swr_es_string_token_t_read(&(event_authentication_od->record_type), p+size);
	size += swr_es_string_token_t_read(&(event_authentication_od->record_name), p+size);
	size += swr_es_string_token_t_read(&(event_authentication_od->node_name), p+size);
	size += swr_es_string_token_t_read(&(event_authentication_od->db_path), p+size);
    return size;
}

size_t swr_es_event_authentication_touchid_t_size(es_event_authentication_touchid_t *event_authentication_touchid) {
    size_t size = 0;
	size += swr_es_process_t_size(event_authentication_touchid->instigator);
	size += sizeof(es_touchid_mode_t);
	size += sizeof(bool);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_authentication_touchid_t_write(es_event_authentication_touchid_t *event_authentication_touchid, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_authentication_touchid->instigator, p+size);
	*(es_touchid_mode_t*)(p+size) = event_authentication_touchid->touchid_mode;
	size += sizeof(es_touchid_mode_t);
	*(bool*)(p+size) = event_authentication_touchid->has_uid;
	size += sizeof(bool);
	*(uid_t*)(p+size) = event_authentication_touchid->uid.uid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_authentication_touchid_t_read(es_event_authentication_touchid_t *event_authentication_touchid, void *p) {
    size_t size = 0;
	event_authentication_touchid->instigator = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_authentication_touchid->instigator, p+size);
	event_authentication_touchid->touchid_mode = *(es_touchid_mode_t*)(p+size);
	size += sizeof(es_touchid_mode_t);
	event_authentication_touchid->has_uid = *(bool*)(p+size);
	size += sizeof(bool);
	event_authentication_touchid->uid.uid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_authentication_token_t_size(es_event_authentication_token_t *event_authentication_token) {
    size_t size = 0;
	size += swr_es_process_t_size(event_authentication_token->instigator);
	size += swr_es_string_token_t_size(&(event_authentication_token->pubkey_hash));
	size += swr_es_string_token_t_size(&(event_authentication_token->token_id));
	size += swr_es_string_token_t_size(&(event_authentication_token->kerberos_principal));
    return size;
}

size_t swr_es_event_authentication_token_t_write(es_event_authentication_token_t *event_authentication_token, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_authentication_token->instigator, p+size);
	size += swr_es_string_token_t_write(&(event_authentication_token->pubkey_hash), p+size);
	size += swr_es_string_token_t_write(&(event_authentication_token->token_id), p+size);
	size += swr_es_string_token_t_write(&(event_authentication_token->kerberos_principal), p+size);
    return size;
}

size_t swr_es_event_authentication_token_t_read(es_event_authentication_token_t *event_authentication_token, void *p) {
    size_t size = 0;
	event_authentication_token->instigator = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_authentication_token->instigator, p+size);
	size += swr_es_string_token_t_read(&(event_authentication_token->pubkey_hash), p+size);
	size += swr_es_string_token_t_read(&(event_authentication_token->token_id), p+size);
	size += swr_es_string_token_t_read(&(event_authentication_token->kerberos_principal), p+size);
    return size;
}

size_t swr_es_event_authentication_auto_unlock_t_size(es_event_authentication_auto_unlock_t *event_authentication_auto_unlock) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(event_authentication_auto_unlock->username));
	size += sizeof(es_auto_unlock_type_t);
    return size;
}

size_t swr_es_event_authentication_auto_unlock_t_write(es_event_authentication_auto_unlock_t *event_authentication_auto_unlock, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(event_authentication_auto_unlock->username), p+size);
	*(es_auto_unlock_type_t*)(p+size) = event_authentication_auto_unlock->type;
	size += sizeof(es_auto_unlock_type_t);
    return size;
}

size_t swr_es_event_authentication_auto_unlock_t_read(es_event_authentication_auto_unlock_t *event_authentication_auto_unlock, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(event_authentication_auto_unlock->username), p+size);
	event_authentication_auto_unlock->type = *(es_auto_unlock_type_t*)(p+size);
	size += sizeof(es_auto_unlock_type_t);
    return size;
}

size_t swr_es_event_authentication_t_size(es_event_authentication_t *event_authentication) {
    size_t size = 0;
	size += sizeof(bool);
	size += sizeof(es_authentication_type_t);
    return size;
}

size_t swr_es_event_authentication_t_write(es_event_authentication_t *event_authentication, void *p) {
    size_t size = 0;
	*(bool*)(p+size) = event_authentication->success;
	size += sizeof(bool);
	*(es_authentication_type_t*)(p+size) = event_authentication->type;
	size += sizeof(es_authentication_type_t);
    return size;
}

size_t swr_es_event_authentication_t_read(es_event_authentication_t *event_authentication, void *p) {
    size_t size = 0;
	event_authentication->success = *(bool*)(p+size);
	size += sizeof(bool);
	event_authentication->type = *(es_authentication_type_t*)(p+size);
	size += sizeof(es_authentication_type_t);
    return size;
}

size_t swr_es_event_xp_malware_detected_t_size(es_event_xp_malware_detected_t *event_xp_malware_detected) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(event_xp_malware_detected->signature_version));
	size += swr_es_string_token_t_size(&(event_xp_malware_detected->malware_identifier));
	size += swr_es_string_token_t_size(&(event_xp_malware_detected->incident_identifier));
	size += swr_es_string_token_t_size(&(event_xp_malware_detected->detected_path));
    return size;
}

size_t swr_es_event_xp_malware_detected_t_write(es_event_xp_malware_detected_t *event_xp_malware_detected, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(event_xp_malware_detected->signature_version), p+size);
	size += swr_es_string_token_t_write(&(event_xp_malware_detected->malware_identifier), p+size);
	size += swr_es_string_token_t_write(&(event_xp_malware_detected->incident_identifier), p+size);
	size += swr_es_string_token_t_write(&(event_xp_malware_detected->detected_path), p+size);
    return size;
}

size_t swr_es_event_xp_malware_detected_t_read(es_event_xp_malware_detected_t *event_xp_malware_detected, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(event_xp_malware_detected->signature_version), p+size);
	size += swr_es_string_token_t_read(&(event_xp_malware_detected->malware_identifier), p+size);
	size += swr_es_string_token_t_read(&(event_xp_malware_detected->incident_identifier), p+size);
	size += swr_es_string_token_t_read(&(event_xp_malware_detected->detected_path), p+size);
    return size;
}

size_t swr_es_event_xp_malware_remediated_t_size(es_event_xp_malware_remediated_t *event_xp_malware_remediated) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(event_xp_malware_remediated->signature_version));
	size += swr_es_string_token_t_size(&(event_xp_malware_remediated->malware_identifier));
	size += swr_es_string_token_t_size(&(event_xp_malware_remediated->incident_identifier));
	size += swr_es_string_token_t_size(&(event_xp_malware_remediated->action_type));
	size += sizeof(bool);
	size += swr_es_string_token_t_size(&(event_xp_malware_remediated->result_description));
	size += swr_es_string_token_t_size(&(event_xp_malware_remediated->remediated_path));
	size += swr_audit_token_t_size(event_xp_malware_remediated->remediated_process_audit_token);
    return size;
}

size_t swr_es_event_xp_malware_remediated_t_write(es_event_xp_malware_remediated_t *event_xp_malware_remediated, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(event_xp_malware_remediated->signature_version), p+size);
	size += swr_es_string_token_t_write(&(event_xp_malware_remediated->malware_identifier), p+size);
	size += swr_es_string_token_t_write(&(event_xp_malware_remediated->incident_identifier), p+size);
	size += swr_es_string_token_t_write(&(event_xp_malware_remediated->action_type), p+size);
	*(bool*)(p+size) = event_xp_malware_remediated->success;
	size += sizeof(bool);
	size += swr_es_string_token_t_write(&(event_xp_malware_remediated->result_description), p+size);
	size += swr_es_string_token_t_write(&(event_xp_malware_remediated->remediated_path), p+size);
	size += swr_audit_token_t_write(event_xp_malware_remediated->remediated_process_audit_token, p+size);
    return size;
}

size_t swr_es_event_xp_malware_remediated_t_read(es_event_xp_malware_remediated_t *event_xp_malware_remediated, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(event_xp_malware_remediated->signature_version), p+size);
	size += swr_es_string_token_t_read(&(event_xp_malware_remediated->malware_identifier), p+size);
	size += swr_es_string_token_t_read(&(event_xp_malware_remediated->incident_identifier), p+size);
	size += swr_es_string_token_t_read(&(event_xp_malware_remediated->action_type), p+size);
	event_xp_malware_remediated->success = *(bool*)(p+size);
	size += sizeof(bool);
	size += swr_es_string_token_t_read(&(event_xp_malware_remediated->result_description), p+size);
	size += swr_es_string_token_t_read(&(event_xp_malware_remediated->remediated_path), p+size);
	event_xp_malware_remediated->remediated_process_audit_token = malloc(sizeof(audit_token_t));
	size += swr_audit_token_t_read(event_xp_malware_remediated->remediated_process_audit_token, p+size);
    return size;
}

size_t swr_es_event_lw_session_login_t_size(es_event_lw_session_login_t *event_lw_session_login) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(event_lw_session_login->username));
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_login_t_write(es_event_lw_session_login_t *event_lw_session_login, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(event_lw_session_login->username), p+size);
	*(es_graphical_session_id_t*)(p+size) = event_lw_session_login->graphical_session_id;
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_login_t_read(es_event_lw_session_login_t *event_lw_session_login, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(event_lw_session_login->username), p+size);
	event_lw_session_login->graphical_session_id = *(es_graphical_session_id_t*)(p+size);
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_logout_t_size(es_event_lw_session_logout_t *event_lw_session_logout) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(event_lw_session_logout->username));
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_logout_t_write(es_event_lw_session_logout_t *event_lw_session_logout, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(event_lw_session_logout->username), p+size);
	*(es_graphical_session_id_t*)(p+size) = event_lw_session_logout->graphical_session_id;
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_logout_t_read(es_event_lw_session_logout_t *event_lw_session_logout, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(event_lw_session_logout->username), p+size);
	event_lw_session_logout->graphical_session_id = *(es_graphical_session_id_t*)(p+size);
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_lock_t_size(es_event_lw_session_lock_t *event_lw_session_lock) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(event_lw_session_lock->username));
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_lock_t_write(es_event_lw_session_lock_t *event_lw_session_lock, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(event_lw_session_lock->username), p+size);
	*(es_graphical_session_id_t*)(p+size) = event_lw_session_lock->graphical_session_id;
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_lock_t_read(es_event_lw_session_lock_t *event_lw_session_lock, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(event_lw_session_lock->username), p+size);
	event_lw_session_lock->graphical_session_id = *(es_graphical_session_id_t*)(p+size);
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_unlock_t_size(es_event_lw_session_unlock_t *event_lw_session_unlock) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(event_lw_session_unlock->username));
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_unlock_t_write(es_event_lw_session_unlock_t *event_lw_session_unlock, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(event_lw_session_unlock->username), p+size);
	*(es_graphical_session_id_t*)(p+size) = event_lw_session_unlock->graphical_session_id;
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_lw_session_unlock_t_read(es_event_lw_session_unlock_t *event_lw_session_unlock, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(event_lw_session_unlock->username), p+size);
	event_lw_session_unlock->graphical_session_id = *(es_graphical_session_id_t*)(p+size);
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_screensharing_attach_t_size(es_event_screensharing_attach_t *event_screensharing_attach) {
    size_t size = 0;
	size += sizeof(bool);
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_size(&(event_screensharing_attach->source_address));
	size += swr_es_string_token_t_size(&(event_screensharing_attach->viewer_appleid));
	size += swr_es_string_token_t_size(&(event_screensharing_attach->authentication_type));
	size += swr_es_string_token_t_size(&(event_screensharing_attach->authentication_username));
	size += swr_es_string_token_t_size(&(event_screensharing_attach->session_username));
	size += sizeof(bool);
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_screensharing_attach_t_write(es_event_screensharing_attach_t *event_screensharing_attach, void *p) {
    size_t size = 0;
	*(bool*)(p+size) = event_screensharing_attach->success;
	size += sizeof(bool);
	*(es_address_type_t*)(p+size) = event_screensharing_attach->source_address_type;
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_write(&(event_screensharing_attach->source_address), p+size);
	size += swr_es_string_token_t_write(&(event_screensharing_attach->viewer_appleid), p+size);
	size += swr_es_string_token_t_write(&(event_screensharing_attach->authentication_type), p+size);
	size += swr_es_string_token_t_write(&(event_screensharing_attach->authentication_username), p+size);
	size += swr_es_string_token_t_write(&(event_screensharing_attach->session_username), p+size);
	*(bool*)(p+size) = event_screensharing_attach->existing_session;
	size += sizeof(bool);
	*(es_graphical_session_id_t*)(p+size) = event_screensharing_attach->graphical_session_id;
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_screensharing_attach_t_read(es_event_screensharing_attach_t *event_screensharing_attach, void *p) {
    size_t size = 0;
	event_screensharing_attach->success = *(bool*)(p+size);
	size += sizeof(bool);
	event_screensharing_attach->source_address_type = *(es_address_type_t*)(p+size);
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_read(&(event_screensharing_attach->source_address), p+size);
	size += swr_es_string_token_t_read(&(event_screensharing_attach->viewer_appleid), p+size);
	size += swr_es_string_token_t_read(&(event_screensharing_attach->authentication_type), p+size);
	size += swr_es_string_token_t_read(&(event_screensharing_attach->authentication_username), p+size);
	size += swr_es_string_token_t_read(&(event_screensharing_attach->session_username), p+size);
	event_screensharing_attach->existing_session = *(bool*)(p+size);
	size += sizeof(bool);
	event_screensharing_attach->graphical_session_id = *(es_graphical_session_id_t*)(p+size);
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_screensharing_detach_t_size(es_event_screensharing_detach_t *event_screensharing_detach) {
    size_t size = 0;
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_size(&(event_screensharing_detach->source_address));
	size += swr_es_string_token_t_size(&(event_screensharing_detach->viewer_appleid));
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_screensharing_detach_t_write(es_event_screensharing_detach_t *event_screensharing_detach, void *p) {
    size_t size = 0;
	*(es_address_type_t*)(p+size) = event_screensharing_detach->source_address_type;
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_write(&(event_screensharing_detach->source_address), p+size);
	size += swr_es_string_token_t_write(&(event_screensharing_detach->viewer_appleid), p+size);
	*(es_graphical_session_id_t*)(p+size) = event_screensharing_detach->graphical_session_id;
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_screensharing_detach_t_read(es_event_screensharing_detach_t *event_screensharing_detach, void *p) {
    size_t size = 0;
	event_screensharing_detach->source_address_type = *(es_address_type_t*)(p+size);
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_read(&(event_screensharing_detach->source_address), p+size);
	size += swr_es_string_token_t_read(&(event_screensharing_detach->viewer_appleid), p+size);
	event_screensharing_detach->graphical_session_id = *(es_graphical_session_id_t*)(p+size);
	size += sizeof(es_graphical_session_id_t);
    return size;
}

size_t swr_es_event_openssh_login_t_size(es_event_openssh_login_t *event_openssh_login) {
    size_t size = 0;
	size += sizeof(bool);
	size += sizeof(es_openssh_login_result_type_t);
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_size(&(event_openssh_login->source_address));
	size += swr_es_string_token_t_size(&(event_openssh_login->username));
	size += sizeof(bool);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_openssh_login_t_write(es_event_openssh_login_t *event_openssh_login, void *p) {
    size_t size = 0;
	*(bool*)(p+size) = event_openssh_login->success;
	size += sizeof(bool);
	*(es_openssh_login_result_type_t*)(p+size) = event_openssh_login->result_type;
	size += sizeof(es_openssh_login_result_type_t);
	*(es_address_type_t*)(p+size) = event_openssh_login->source_address_type;
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_write(&(event_openssh_login->source_address), p+size);
	size += swr_es_string_token_t_write(&(event_openssh_login->username), p+size);
	*(bool*)(p+size) = event_openssh_login->has_uid;
	size += sizeof(bool);
	*(uid_t*)(p+size) = event_openssh_login->uid.uid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_openssh_login_t_read(es_event_openssh_login_t *event_openssh_login, void *p) {
    size_t size = 0;
	event_openssh_login->success = *(bool*)(p+size);
	size += sizeof(bool);
	event_openssh_login->result_type = *(es_openssh_login_result_type_t*)(p+size);
	size += sizeof(es_openssh_login_result_type_t);
	event_openssh_login->source_address_type = *(es_address_type_t*)(p+size);
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_read(&(event_openssh_login->source_address), p+size);
	size += swr_es_string_token_t_read(&(event_openssh_login->username), p+size);
	event_openssh_login->has_uid = *(bool*)(p+size);
	size += sizeof(bool);
	event_openssh_login->uid.uid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_openssh_logout_t_size(es_event_openssh_logout_t *event_openssh_logout) {
    size_t size = 0;
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_size(&(event_openssh_logout->source_address));
	size += swr_es_string_token_t_size(&(event_openssh_logout->username));
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_openssh_logout_t_write(es_event_openssh_logout_t *event_openssh_logout, void *p) {
    size_t size = 0;
	*(es_address_type_t*)(p+size) = event_openssh_logout->source_address_type;
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_write(&(event_openssh_logout->source_address), p+size);
	size += swr_es_string_token_t_write(&(event_openssh_logout->username), p+size);
	*(uid_t*)(p+size) = event_openssh_logout->uid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_openssh_logout_t_read(es_event_openssh_logout_t *event_openssh_logout, void *p) {
    size_t size = 0;
	event_openssh_logout->source_address_type = *(es_address_type_t*)(p+size);
	size += sizeof(es_address_type_t);
	size += swr_es_string_token_t_read(&(event_openssh_logout->source_address), p+size);
	size += swr_es_string_token_t_read(&(event_openssh_logout->username), p+size);
	event_openssh_logout->uid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_login_login_t_size(es_event_login_login_t *event_login_login) {
    size_t size = 0;
	size += sizeof(bool);
	size += swr_es_string_token_t_size(&(event_login_login->failure_message));
	size += swr_es_string_token_t_size(&(event_login_login->username));
	size += sizeof(bool);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_login_login_t_write(es_event_login_login_t *event_login_login, void *p) {
    size_t size = 0;
	*(bool*)(p+size) = event_login_login->success;
	size += sizeof(bool);
	size += swr_es_string_token_t_write(&(event_login_login->failure_message), p+size);
	size += swr_es_string_token_t_write(&(event_login_login->username), p+size);
	*(bool*)(p+size) = event_login_login->has_uid;
	size += sizeof(bool);
	*(uid_t*)(p+size) = event_login_login->uid.uid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_login_login_t_read(es_event_login_login_t *event_login_login, void *p) {
    size_t size = 0;
	event_login_login->success = *(bool*)(p+size);
	size += sizeof(bool);
	size += swr_es_string_token_t_read(&(event_login_login->failure_message), p+size);
	size += swr_es_string_token_t_read(&(event_login_login->username), p+size);
	event_login_login->has_uid = *(bool*)(p+size);
	size += sizeof(bool);
	event_login_login->uid.uid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_login_logout_t_size(es_event_login_logout_t *event_login_logout) {
    size_t size = 0;
	size += swr_es_string_token_t_size(&(event_login_logout->username));
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_login_logout_t_write(es_event_login_logout_t *event_login_logout, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_write(&(event_login_logout->username), p+size);
	*(uid_t*)(p+size) = event_login_logout->uid;
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_login_logout_t_read(es_event_login_logout_t *event_login_logout, void *p) {
    size_t size = 0;
	size += swr_es_string_token_t_read(&(event_login_logout->username), p+size);
	event_login_logout->uid = *(uid_t*)(p+size);
	size += sizeof(uid_t);
    return size;
}

size_t swr_es_event_btm_launch_item_add_t_size(es_event_btm_launch_item_add_t *event_btm_launch_item_add) {
    size_t size = 0;
	size += swr_es_process_t_size(event_btm_launch_item_add->instigator);
	size += swr_es_process_t_size(event_btm_launch_item_add->app);
	size += swr_es_btm_launch_item_t_size(event_btm_launch_item_add->item);
	size += swr_es_string_token_t_size(&(event_btm_launch_item_add->executable_path));
    return size;
}

size_t swr_es_event_btm_launch_item_add_t_write(es_event_btm_launch_item_add_t *event_btm_launch_item_add, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_btm_launch_item_add->instigator, p+size);
	size += swr_es_process_t_write(event_btm_launch_item_add->app, p+size);
	size += swr_es_btm_launch_item_t_write(event_btm_launch_item_add->item, p+size);
	size += swr_es_string_token_t_write(&(event_btm_launch_item_add->executable_path), p+size);
    return size;
}

size_t swr_es_event_btm_launch_item_add_t_read(es_event_btm_launch_item_add_t *event_btm_launch_item_add, void *p) {
    size_t size = 0;
	event_btm_launch_item_add->instigator = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_btm_launch_item_add->instigator, p+size);
	event_btm_launch_item_add->app = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_btm_launch_item_add->app, p+size);
	event_btm_launch_item_add->item = malloc(sizeof(es_btm_launch_item_t));
	size += swr_es_btm_launch_item_t_read(event_btm_launch_item_add->item, p+size);
	size += swr_es_string_token_t_read(&(event_btm_launch_item_add->executable_path), p+size);
    return size;
}

size_t swr_es_event_btm_launch_item_remove_t_size(es_event_btm_launch_item_remove_t *event_btm_launch_item_remove) {
    size_t size = 0;
	size += swr_es_process_t_size(event_btm_launch_item_remove->instigator);
	size += swr_es_process_t_size(event_btm_launch_item_remove->app);
	size += swr_es_btm_launch_item_t_size(event_btm_launch_item_remove->item);
    return size;
}

size_t swr_es_event_btm_launch_item_remove_t_write(es_event_btm_launch_item_remove_t *event_btm_launch_item_remove, void *p) {
    size_t size = 0;
	size += swr_es_process_t_write(event_btm_launch_item_remove->instigator, p+size);
	size += swr_es_process_t_write(event_btm_launch_item_remove->app, p+size);
	size += swr_es_btm_launch_item_t_write(event_btm_launch_item_remove->item, p+size);
    return size;
}

size_t swr_es_event_btm_launch_item_remove_t_read(es_event_btm_launch_item_remove_t *event_btm_launch_item_remove, void *p) {
    size_t size = 0;
	event_btm_launch_item_remove->instigator = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_btm_launch_item_remove->instigator, p+size);
	event_btm_launch_item_remove->app = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(event_btm_launch_item_remove->app, p+size);
	event_btm_launch_item_remove->item = malloc(sizeof(es_btm_launch_item_t));
	size += swr_es_btm_launch_item_t_read(event_btm_launch_item_remove->item, p+size);
    return size;
}

size_t swr_es_result_t_size(es_result_t *result) {
    size_t size = 0;
	size += sizeof(es_result_type_t);
	switch (result->result_type) {
		case ES_RESULT_TYPE_AUTH :{
			size += sizeof(es_auth_result_t);
		}break;
		case ES_RESULT_TYPE_FLAGS :{
			size += sizeof(uint32_t);
		}break;
		default:
			break;
	}

    return size;
}

size_t swr_es_result_t_write(es_result_t *result, void *p) {
    size_t size = 0;
	*(es_result_type_t*)(p+size) = result->result_type;
	size += sizeof(es_result_type_t);
	switch (result->result_type) {
		case ES_RESULT_TYPE_AUTH :{
			*(es_auth_result_t*)(p+size) = result->result.auth;
			size += sizeof(es_auth_result_t);
		}break;
		case ES_RESULT_TYPE_FLAGS :{
			*(uint32_t*)(p+size) = result->result.flags;
			size += sizeof(uint32_t);
		}break;
		default:
			break;
	}

    return size;
}

size_t swr_es_result_t_read(es_result_t *result, void *p) {
    size_t size = 0;
	result->result_type = *(es_result_type_t*)(p+size);
	size += sizeof(es_result_type_t);
	switch (result->result_type) {
		case ES_RESULT_TYPE_AUTH :{
			result->result.auth = *(es_auth_result_t*)(p+size);
			size += sizeof(es_auth_result_t);
		}break;
		case ES_RESULT_TYPE_FLAGS :{
			result->result.flags = *(uint32_t*)(p+size);
			size += sizeof(uint32_t);
		}break;
		default:
			break;
	}

    return size;
}

size_t swr_es_message_t_size(es_message_t *message) {
    size_t size = 0;
	size += sizeof(uint32_t);
	size += sizeof(struct timespec);
	size += sizeof(uint64_t);
	size += sizeof(uint64_t);
	size += swr_es_process_t_size(message->process);
	size += sizeof(uint64_t);
	size += sizeof(es_action_type_t);
	switch (message->action_type) {
		case ES_ACTION_TYPE_AUTH :{
			size += swr_es_event_id_t_size(&(message->action.auth));
		}break;
		case ES_ACTION_TYPE_NOTIFY :{
			size += swr_es_result_t_size(&(message->action.notify));
		}break;
		default:
			break;
	}

	size += sizeof(es_event_type_t);
	switch (message->event_type) {
		case ES_EVENT_TYPE_AUTH_EXEC :{
			size += swr_es_event_exec_t_size(&(message->event.exec));
		}break;
		case ES_EVENT_TYPE_AUTH_OPEN :{
			size += swr_es_event_open_t_size(&(message->event.open));
		}break;
		case ES_EVENT_TYPE_AUTH_KEXTLOAD :{
			size += swr_es_event_kextload_t_size(&(message->event.kextload));
		}break;
		case ES_EVENT_TYPE_AUTH_MMAP :{
			size += swr_es_event_mmap_t_size(&(message->event.mmap));
		}break;
		case ES_EVENT_TYPE_AUTH_MPROTECT :{
			size += swr_es_event_mprotect_t_size(&(message->event.mprotect));
		}break;
		case ES_EVENT_TYPE_AUTH_MOUNT :{
			size += swr_es_event_mount_t_size(&(message->event.mount));
		}break;
		case ES_EVENT_TYPE_AUTH_RENAME :{
			size += swr_es_event_rename_t_size(&(message->event.rename));
		}break;
		case ES_EVENT_TYPE_AUTH_SIGNAL :{
			size += swr_es_event_signal_t_size(&(message->event.signal));
		}break;
		case ES_EVENT_TYPE_AUTH_UNLINK :{
			size += swr_es_event_unlink_t_size(&(message->event.unlink));
		}break;
		case ES_EVENT_TYPE_NOTIFY_EXEC :{
			size += swr_es_event_exec_t_size(&(message->event.exec));
		}break;
		case ES_EVENT_TYPE_NOTIFY_OPEN :{
			size += swr_es_event_open_t_size(&(message->event.open));
		}break;
		case ES_EVENT_TYPE_NOTIFY_FORK :{
			size += swr_es_event_fork_t_size(&(message->event.fork));
		}break;
		case ES_EVENT_TYPE_NOTIFY_CLOSE :{
			size += swr_es_event_close_t_size(&(message->event.close));
		}break;
		case ES_EVENT_TYPE_NOTIFY_CREATE :{
			size += swr_es_event_create_t_size(&(message->event.create));
		}break;
		case ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA :{
			size += swr_es_event_exchangedata_t_size(&(message->event.exchangedata));
		}break;
		case ES_EVENT_TYPE_NOTIFY_EXIT :{
			size += swr_es_event_exit_t_size(&(message->event.exit));
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK :{
			size += swr_es_event_get_task_t_size(&(message->event.get_task));
		}break;
		case ES_EVENT_TYPE_NOTIFY_KEXTLOAD :{
			size += swr_es_event_kextload_t_size(&(message->event.kextload));
		}break;
		case ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD :{
			size += swr_es_event_kextunload_t_size(&(message->event.kextunload));
		}break;
		case ES_EVENT_TYPE_NOTIFY_LINK :{
			size += swr_es_event_link_t_size(&(message->event.link));
		}break;
		case ES_EVENT_TYPE_NOTIFY_MMAP :{
			size += swr_es_event_mmap_t_size(&(message->event.mmap));
		}break;
		case ES_EVENT_TYPE_NOTIFY_MPROTECT :{
			size += swr_es_event_mprotect_t_size(&(message->event.mprotect));
		}break;
		case ES_EVENT_TYPE_NOTIFY_MOUNT :{
			size += swr_es_event_mount_t_size(&(message->event.mount));
		}break;
		case ES_EVENT_TYPE_NOTIFY_UNMOUNT :{
			size += swr_es_event_unmount_t_size(&(message->event.unmount));
		}break;
		case ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN :{
			size += swr_es_event_iokit_open_t_size(&(message->event.iokit_open));
		}break;
		case ES_EVENT_TYPE_NOTIFY_RENAME :{
			size += swr_es_event_rename_t_size(&(message->event.rename));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETATTRLIST :{
			size += swr_es_event_setattrlist_t_size(&(message->event.setattrlist));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETEXTATTR :{
			size += swr_es_event_setextattr_t_size(&(message->event.setextattr));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETFLAGS :{
			size += swr_es_event_setflags_t_size(&(message->event.setflags));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETMODE :{
			size += swr_es_event_setmode_t_size(&(message->event.setmode));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETOWNER :{
			size += swr_es_event_setowner_t_size(&(message->event.setowner));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SIGNAL :{
			size += swr_es_event_signal_t_size(&(message->event.signal));
		}break;
		case ES_EVENT_TYPE_NOTIFY_UNLINK :{
			size += swr_es_event_unlink_t_size(&(message->event.unlink));
		}break;
		case ES_EVENT_TYPE_NOTIFY_WRITE :{
			size += swr_es_event_write_t_size(&(message->event.write));
		}break;
		case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE :{
			size += swr_es_event_file_provider_materialize_t_size(&(message->event.file_provider_materialize));
		}break;
		case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE :{
			size += swr_es_event_file_provider_materialize_t_size(&(message->event.file_provider_materialize));
		}break;
		case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE :{
			size += swr_es_event_file_provider_update_t_size(&(message->event.file_provider_update));
		}break;
		case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE :{
			size += swr_es_event_file_provider_update_t_size(&(message->event.file_provider_update));
		}break;
		case ES_EVENT_TYPE_AUTH_READLINK :{
			size += swr_es_event_readlink_t_size(&(message->event.readlink));
		}break;
		case ES_EVENT_TYPE_NOTIFY_READLINK :{
			size += swr_es_event_readlink_t_size(&(message->event.readlink));
		}break;
		case ES_EVENT_TYPE_AUTH_TRUNCATE :{
			size += swr_es_event_truncate_t_size(&(message->event.truncate));
		}break;
		case ES_EVENT_TYPE_NOTIFY_TRUNCATE :{
			size += swr_es_event_truncate_t_size(&(message->event.truncate));
		}break;
		case ES_EVENT_TYPE_AUTH_LINK :{
			size += swr_es_event_link_t_size(&(message->event.link));
		}break;
		case ES_EVENT_TYPE_NOTIFY_LOOKUP :{
			size += swr_es_event_lookup_t_size(&(message->event.lookup));
		}break;
		case ES_EVENT_TYPE_AUTH_CREATE :{
			size += swr_es_event_create_t_size(&(message->event.create));
		}break;
		case ES_EVENT_TYPE_AUTH_SETATTRLIST :{
			size += swr_es_event_setattrlist_t_size(&(message->event.setattrlist));
		}break;
		case ES_EVENT_TYPE_AUTH_SETEXTATTR :{
			size += swr_es_event_setextattr_t_size(&(message->event.setextattr));
		}break;
		case ES_EVENT_TYPE_AUTH_SETFLAGS :{
			size += swr_es_event_setflags_t_size(&(message->event.setflags));
		}break;
		case ES_EVENT_TYPE_AUTH_SETMODE :{
			size += swr_es_event_setmode_t_size(&(message->event.setmode));
		}break;
		case ES_EVENT_TYPE_AUTH_SETOWNER :{
			size += swr_es_event_setowner_t_size(&(message->event.setowner));
		}break;
		case ES_EVENT_TYPE_AUTH_CHDIR :{
			size += swr_es_event_chdir_t_size(&(message->event.chdir));
		}break;
		case ES_EVENT_TYPE_NOTIFY_CHDIR :{
			size += swr_es_event_chdir_t_size(&(message->event.chdir));
		}break;
		case ES_EVENT_TYPE_AUTH_GETATTRLIST :{
			size += swr_es_event_getattrlist_t_size(&(message->event.getattrlist));
		}break;
		case ES_EVENT_TYPE_NOTIFY_GETATTRLIST :{
			size += swr_es_event_getattrlist_t_size(&(message->event.getattrlist));
		}break;
		case ES_EVENT_TYPE_NOTIFY_STAT :{
			size += swr_es_event_stat_t_size(&(message->event.stat));
		}break;
		case ES_EVENT_TYPE_NOTIFY_ACCESS :{
			size += swr_es_event_access_t_size(&(message->event.access));
		}break;
		case ES_EVENT_TYPE_AUTH_CHROOT :{
			size += swr_es_event_chroot_t_size(&(message->event.chroot));
		}break;
		case ES_EVENT_TYPE_NOTIFY_CHROOT :{
			size += swr_es_event_chroot_t_size(&(message->event.chroot));
		}break;
		case ES_EVENT_TYPE_AUTH_UTIMES :{
			size += swr_es_event_utimes_t_size(&(message->event.utimes));
		}break;
		case ES_EVENT_TYPE_NOTIFY_UTIMES :{
			size += swr_es_event_utimes_t_size(&(message->event.utimes));
		}break;
		case ES_EVENT_TYPE_AUTH_CLONE :{
			size += swr_es_event_clone_t_size(&(message->event.clone));
		}break;
		case ES_EVENT_TYPE_NOTIFY_CLONE :{
			size += swr_es_event_clone_t_size(&(message->event.clone));
		}break;
		case ES_EVENT_TYPE_NOTIFY_FCNTL :{
			size += swr_es_event_fcntl_t_size(&(message->event.fcntl));
		}break;
		case ES_EVENT_TYPE_AUTH_GETEXTATTR :{
			size += swr_es_event_getextattr_t_size(&(message->event.getextattr));
		}break;
		case ES_EVENT_TYPE_NOTIFY_GETEXTATTR :{
			size += swr_es_event_getextattr_t_size(&(message->event.getextattr));
		}break;
		case ES_EVENT_TYPE_AUTH_LISTEXTATTR :{
			size += swr_es_event_listextattr_t_size(&(message->event.listextattr));
		}break;
		case ES_EVENT_TYPE_NOTIFY_LISTEXTATTR :{
			size += swr_es_event_listextattr_t_size(&(message->event.listextattr));
		}break;
		case ES_EVENT_TYPE_AUTH_READDIR :{
			size += swr_es_event_readdir_t_size(&(message->event.readdir));
		}break;
		case ES_EVENT_TYPE_NOTIFY_READDIR :{
			size += swr_es_event_readdir_t_size(&(message->event.readdir));
		}break;
		case ES_EVENT_TYPE_AUTH_DELETEEXTATTR :{
			size += swr_es_event_deleteextattr_t_size(&(message->event.deleteextattr));
		}break;
		case ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR :{
			size += swr_es_event_deleteextattr_t_size(&(message->event.deleteextattr));
		}break;
		case ES_EVENT_TYPE_AUTH_FSGETPATH :{
			size += swr_es_event_fsgetpath_t_size(&(message->event.fsgetpath));
		}break;
		case ES_EVENT_TYPE_NOTIFY_FSGETPATH :{
			size += swr_es_event_fsgetpath_t_size(&(message->event.fsgetpath));
		}break;
		case ES_EVENT_TYPE_NOTIFY_DUP :{
			size += swr_es_event_dup_t_size(&(message->event.dup));
		}break;
		case ES_EVENT_TYPE_AUTH_SETTIME :{
			size += swr_es_event_settime_t_size(&(message->event.settime));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETTIME :{
			size += swr_es_event_settime_t_size(&(message->event.settime));
		}break;
		case ES_EVENT_TYPE_NOTIFY_UIPC_BIND :{
			size += swr_es_event_uipc_bind_t_size(&(message->event.uipc_bind));
		}break;
		case ES_EVENT_TYPE_AUTH_UIPC_BIND :{
			size += swr_es_event_uipc_bind_t_size(&(message->event.uipc_bind));
		}break;
		case ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT :{
			size += swr_es_event_uipc_connect_t_size(&(message->event.uipc_connect));
		}break;
		case ES_EVENT_TYPE_AUTH_UIPC_CONNECT :{
			size += swr_es_event_uipc_connect_t_size(&(message->event.uipc_connect));
		}break;
		case ES_EVENT_TYPE_AUTH_EXCHANGEDATA :{
			size += swr_es_event_exchangedata_t_size(&(message->event.exchangedata));
		}break;
		case ES_EVENT_TYPE_AUTH_SETACL :{
			size += swr_es_event_setacl_t_size(&(message->event.setacl));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETACL :{
			size += swr_es_event_setacl_t_size(&(message->event.setacl));
		}break;
		case ES_EVENT_TYPE_NOTIFY_PTY_GRANT :{
			size += swr_es_event_pty_grant_t_size(&(message->event.pty_grant));
		}break;
		case ES_EVENT_TYPE_NOTIFY_PTY_CLOSE :{
			size += swr_es_event_pty_close_t_size(&(message->event.pty_close));
		}break;
		case ES_EVENT_TYPE_AUTH_PROC_CHECK :{
			size += swr_es_event_proc_check_t_size(&(message->event.proc_check));
		}break;
		case ES_EVENT_TYPE_NOTIFY_PROC_CHECK :{
			size += swr_es_event_proc_check_t_size(&(message->event.proc_check));
		}break;
		case ES_EVENT_TYPE_AUTH_GET_TASK :{
			size += swr_es_event_get_task_t_size(&(message->event.get_task));
		}break;
		case ES_EVENT_TYPE_AUTH_SEARCHFS :{
			size += swr_es_event_searchfs_t_size(&(message->event.searchfs));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SEARCHFS :{
			size += swr_es_event_searchfs_t_size(&(message->event.searchfs));
		}break;
		case ES_EVENT_TYPE_AUTH_FCNTL :{
			size += swr_es_event_fcntl_t_size(&(message->event.fcntl));
		}break;
		case ES_EVENT_TYPE_AUTH_IOKIT_OPEN :{
			size += swr_es_event_iokit_open_t_size(&(message->event.iokit_open));
		}break;
		case ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME :{
			size += swr_es_event_proc_suspend_resume_t_size(&(message->event.proc_suspend_resume));
		}break;
		case ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME :{
			size += swr_es_event_proc_suspend_resume_t_size(&(message->event.proc_suspend_resume));
		}break;
		case ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED :{
			size += swr_es_event_cs_invalidated_t_size(&(message->event.cs_invalidated));
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME :{
			size += swr_es_event_get_task_name_t_size(&(message->event.get_task_name));
		}break;
		case ES_EVENT_TYPE_NOTIFY_TRACE :{
			size += swr_es_event_trace_t_size(&(message->event.trace));
		}break;
		case ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE :{
			size += swr_es_event_remote_thread_create_t_size(&(message->event.remote_thread_create));
		}break;
		case ES_EVENT_TYPE_AUTH_REMOUNT :{
			size += swr_es_event_remount_t_size(&(message->event.remount));
		}break;
		case ES_EVENT_TYPE_NOTIFY_REMOUNT :{
			size += swr_es_event_remount_t_size(&(message->event.remount));
		}break;
		case ES_EVENT_TYPE_AUTH_GET_TASK_READ :{
			size += swr_es_event_get_task_read_t_size(&(message->event.get_task_read));
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK_READ :{
			size += swr_es_event_get_task_read_t_size(&(message->event.get_task_read));
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT :{
			size += swr_es_event_get_task_inspect_t_size(&(message->event.get_task_inspect));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETUID :{
			size += swr_es_event_setuid_t_size(&(message->event.setuid));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETGID :{
			size += swr_es_event_setgid_t_size(&(message->event.setgid));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETEUID :{
			size += swr_es_event_seteuid_t_size(&(message->event.seteuid));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETEGID :{
			size += swr_es_event_setegid_t_size(&(message->event.setegid));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETREUID :{
			size += swr_es_event_setreuid_t_size(&(message->event.setreuid));
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETREGID :{
			size += swr_es_event_setregid_t_size(&(message->event.setregid));
		}break;
		case ES_EVENT_TYPE_AUTH_COPYFILE :{
			size += swr_es_event_copyfile_t_size(&(message->event.copyfile));
		}break;
		case ES_EVENT_TYPE_NOTIFY_COPYFILE :{
			size += swr_es_event_copyfile_t_size(&(message->event.copyfile));
		}break;
		case ES_EVENT_TYPE_NOTIFY_AUTHENTICATION :{
			size += swr_es_event_authentication_t_size(message->event.authentication);
		}break;
		case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED :{
			size += swr_es_event_xp_malware_detected_t_size(message->event.xp_malware_detected);
		}break;
		case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED :{
			size += swr_es_event_xp_malware_remediated_t_size(message->event.xp_malware_remediated);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN :{
			size += swr_es_event_lw_session_login_t_size(message->event.lw_session_login);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT :{
			size += swr_es_event_lw_session_logout_t_size(message->event.lw_session_logout);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK :{
			size += swr_es_event_lw_session_lock_t_size(message->event.lw_session_lock);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK :{
			size += swr_es_event_lw_session_unlock_t_size(message->event.lw_session_unlock);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH :{
			size += swr_es_event_screensharing_attach_t_size(message->event.screensharing_attach);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH :{
			size += swr_es_event_screensharing_detach_t_size(message->event.screensharing_detach);
		}break;
		case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN :{
			size += swr_es_event_openssh_login_t_size(message->event.openssh_login);
		}break;
		case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT :{
			size += swr_es_event_openssh_logout_t_size(message->event.openssh_logout);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN :{
			size += swr_es_event_login_login_t_size(message->event.login_login);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT :{
			size += swr_es_event_login_logout_t_size(message->event.login_logout);
		}break;
		case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD :{
			size += swr_es_event_btm_launch_item_add_t_size(message->event.btm_launch_item_add);
		}break;
		case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE :{
			size += swr_es_event_btm_launch_item_remove_t_size(message->event.btm_launch_item_remove);
		}break;
		default:
			break;
	}

	size += swr_es_thread_t_size(message->thread);
	size += sizeof(uint64_t);
    return size;
}

size_t swr_es_message_t_write(es_message_t *message, void *p) {
    size_t size = 0;
	*(uint32_t*)(p+size) = message->version;
	size += sizeof(uint32_t);
	*(struct timespec*)(p+size) = message->time;
	size += sizeof(struct timespec);
	*(uint64_t*)(p+size) = message->mach_time;
	size += sizeof(uint64_t);
	*(uint64_t*)(p+size) = message->deadline;
	size += sizeof(uint64_t);
	size += swr_es_process_t_write(message->process, p+size);
	*(uint64_t*)(p+size) = message->seq_num;
	size += sizeof(uint64_t);
	*(es_action_type_t*)(p+size) = message->action_type;
	size += sizeof(es_action_type_t);
	switch (message->action_type) {
		case ES_ACTION_TYPE_AUTH :{
			size += swr_es_event_id_t_write(&(message->action.auth), p+size);
		}break;
		case ES_ACTION_TYPE_NOTIFY :{
			size += swr_es_result_t_write(&(message->action.notify), p+size);
		}break;
		default:
			break;
	}

	*(es_event_type_t*)(p+size) = message->event_type;
	size += sizeof(es_event_type_t);
	switch (message->event_type) {
		case ES_EVENT_TYPE_AUTH_EXEC :{
			size += swr_es_event_exec_t_write(&(message->event.exec), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_OPEN :{
			size += swr_es_event_open_t_write(&(message->event.open), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_KEXTLOAD :{
			size += swr_es_event_kextload_t_write(&(message->event.kextload), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_MMAP :{
			size += swr_es_event_mmap_t_write(&(message->event.mmap), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_MPROTECT :{
			size += swr_es_event_mprotect_t_write(&(message->event.mprotect), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_MOUNT :{
			size += swr_es_event_mount_t_write(&(message->event.mount), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_RENAME :{
			size += swr_es_event_rename_t_write(&(message->event.rename), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SIGNAL :{
			size += swr_es_event_signal_t_write(&(message->event.signal), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_UNLINK :{
			size += swr_es_event_unlink_t_write(&(message->event.unlink), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_EXEC :{
			size += swr_es_event_exec_t_write(&(message->event.exec), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_OPEN :{
			size += swr_es_event_open_t_write(&(message->event.open), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_FORK :{
			size += swr_es_event_fork_t_write(&(message->event.fork), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CLOSE :{
			size += swr_es_event_close_t_write(&(message->event.close), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CREATE :{
			size += swr_es_event_create_t_write(&(message->event.create), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA :{
			size += swr_es_event_exchangedata_t_write(&(message->event.exchangedata), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_EXIT :{
			size += swr_es_event_exit_t_write(&(message->event.exit), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK :{
			size += swr_es_event_get_task_t_write(&(message->event.get_task), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_KEXTLOAD :{
			size += swr_es_event_kextload_t_write(&(message->event.kextload), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD :{
			size += swr_es_event_kextunload_t_write(&(message->event.kextunload), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LINK :{
			size += swr_es_event_link_t_write(&(message->event.link), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_MMAP :{
			size += swr_es_event_mmap_t_write(&(message->event.mmap), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_MPROTECT :{
			size += swr_es_event_mprotect_t_write(&(message->event.mprotect), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_MOUNT :{
			size += swr_es_event_mount_t_write(&(message->event.mount), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_UNMOUNT :{
			size += swr_es_event_unmount_t_write(&(message->event.unmount), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN :{
			size += swr_es_event_iokit_open_t_write(&(message->event.iokit_open), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_RENAME :{
			size += swr_es_event_rename_t_write(&(message->event.rename), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETATTRLIST :{
			size += swr_es_event_setattrlist_t_write(&(message->event.setattrlist), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETEXTATTR :{
			size += swr_es_event_setextattr_t_write(&(message->event.setextattr), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETFLAGS :{
			size += swr_es_event_setflags_t_write(&(message->event.setflags), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETMODE :{
			size += swr_es_event_setmode_t_write(&(message->event.setmode), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETOWNER :{
			size += swr_es_event_setowner_t_write(&(message->event.setowner), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SIGNAL :{
			size += swr_es_event_signal_t_write(&(message->event.signal), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_UNLINK :{
			size += swr_es_event_unlink_t_write(&(message->event.unlink), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_WRITE :{
			size += swr_es_event_write_t_write(&(message->event.write), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE :{
			size += swr_es_event_file_provider_materialize_t_write(&(message->event.file_provider_materialize), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE :{
			size += swr_es_event_file_provider_materialize_t_write(&(message->event.file_provider_materialize), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE :{
			size += swr_es_event_file_provider_update_t_write(&(message->event.file_provider_update), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE :{
			size += swr_es_event_file_provider_update_t_write(&(message->event.file_provider_update), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_READLINK :{
			size += swr_es_event_readlink_t_write(&(message->event.readlink), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_READLINK :{
			size += swr_es_event_readlink_t_write(&(message->event.readlink), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_TRUNCATE :{
			size += swr_es_event_truncate_t_write(&(message->event.truncate), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_TRUNCATE :{
			size += swr_es_event_truncate_t_write(&(message->event.truncate), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_LINK :{
			size += swr_es_event_link_t_write(&(message->event.link), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LOOKUP :{
			size += swr_es_event_lookup_t_write(&(message->event.lookup), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_CREATE :{
			size += swr_es_event_create_t_write(&(message->event.create), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETATTRLIST :{
			size += swr_es_event_setattrlist_t_write(&(message->event.setattrlist), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETEXTATTR :{
			size += swr_es_event_setextattr_t_write(&(message->event.setextattr), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETFLAGS :{
			size += swr_es_event_setflags_t_write(&(message->event.setflags), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETMODE :{
			size += swr_es_event_setmode_t_write(&(message->event.setmode), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETOWNER :{
			size += swr_es_event_setowner_t_write(&(message->event.setowner), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_CHDIR :{
			size += swr_es_event_chdir_t_write(&(message->event.chdir), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CHDIR :{
			size += swr_es_event_chdir_t_write(&(message->event.chdir), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_GETATTRLIST :{
			size += swr_es_event_getattrlist_t_write(&(message->event.getattrlist), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GETATTRLIST :{
			size += swr_es_event_getattrlist_t_write(&(message->event.getattrlist), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_STAT :{
			size += swr_es_event_stat_t_write(&(message->event.stat), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_ACCESS :{
			size += swr_es_event_access_t_write(&(message->event.access), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_CHROOT :{
			size += swr_es_event_chroot_t_write(&(message->event.chroot), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CHROOT :{
			size += swr_es_event_chroot_t_write(&(message->event.chroot), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_UTIMES :{
			size += swr_es_event_utimes_t_write(&(message->event.utimes), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_UTIMES :{
			size += swr_es_event_utimes_t_write(&(message->event.utimes), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_CLONE :{
			size += swr_es_event_clone_t_write(&(message->event.clone), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CLONE :{
			size += swr_es_event_clone_t_write(&(message->event.clone), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_FCNTL :{
			size += swr_es_event_fcntl_t_write(&(message->event.fcntl), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_GETEXTATTR :{
			size += swr_es_event_getextattr_t_write(&(message->event.getextattr), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GETEXTATTR :{
			size += swr_es_event_getextattr_t_write(&(message->event.getextattr), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_LISTEXTATTR :{
			size += swr_es_event_listextattr_t_write(&(message->event.listextattr), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LISTEXTATTR :{
			size += swr_es_event_listextattr_t_write(&(message->event.listextattr), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_READDIR :{
			size += swr_es_event_readdir_t_write(&(message->event.readdir), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_READDIR :{
			size += swr_es_event_readdir_t_write(&(message->event.readdir), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_DELETEEXTATTR :{
			size += swr_es_event_deleteextattr_t_write(&(message->event.deleteextattr), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR :{
			size += swr_es_event_deleteextattr_t_write(&(message->event.deleteextattr), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_FSGETPATH :{
			size += swr_es_event_fsgetpath_t_write(&(message->event.fsgetpath), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_FSGETPATH :{
			size += swr_es_event_fsgetpath_t_write(&(message->event.fsgetpath), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_DUP :{
			size += swr_es_event_dup_t_write(&(message->event.dup), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETTIME :{
			size += swr_es_event_settime_t_write(&(message->event.settime), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETTIME :{
			size += swr_es_event_settime_t_write(&(message->event.settime), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_UIPC_BIND :{
			size += swr_es_event_uipc_bind_t_write(&(message->event.uipc_bind), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_UIPC_BIND :{
			size += swr_es_event_uipc_bind_t_write(&(message->event.uipc_bind), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT :{
			size += swr_es_event_uipc_connect_t_write(&(message->event.uipc_connect), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_UIPC_CONNECT :{
			size += swr_es_event_uipc_connect_t_write(&(message->event.uipc_connect), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_EXCHANGEDATA :{
			size += swr_es_event_exchangedata_t_write(&(message->event.exchangedata), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETACL :{
			size += swr_es_event_setacl_t_write(&(message->event.setacl), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETACL :{
			size += swr_es_event_setacl_t_write(&(message->event.setacl), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_PTY_GRANT :{
			size += swr_es_event_pty_grant_t_write(&(message->event.pty_grant), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_PTY_CLOSE :{
			size += swr_es_event_pty_close_t_write(&(message->event.pty_close), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_PROC_CHECK :{
			size += swr_es_event_proc_check_t_write(&(message->event.proc_check), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_PROC_CHECK :{
			size += swr_es_event_proc_check_t_write(&(message->event.proc_check), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_GET_TASK :{
			size += swr_es_event_get_task_t_write(&(message->event.get_task), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SEARCHFS :{
			size += swr_es_event_searchfs_t_write(&(message->event.searchfs), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SEARCHFS :{
			size += swr_es_event_searchfs_t_write(&(message->event.searchfs), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_FCNTL :{
			size += swr_es_event_fcntl_t_write(&(message->event.fcntl), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_IOKIT_OPEN :{
			size += swr_es_event_iokit_open_t_write(&(message->event.iokit_open), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME :{
			size += swr_es_event_proc_suspend_resume_t_write(&(message->event.proc_suspend_resume), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME :{
			size += swr_es_event_proc_suspend_resume_t_write(&(message->event.proc_suspend_resume), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED :{
			size += swr_es_event_cs_invalidated_t_write(&(message->event.cs_invalidated), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME :{
			size += swr_es_event_get_task_name_t_write(&(message->event.get_task_name), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_TRACE :{
			size += swr_es_event_trace_t_write(&(message->event.trace), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE :{
			size += swr_es_event_remote_thread_create_t_write(&(message->event.remote_thread_create), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_REMOUNT :{
			size += swr_es_event_remount_t_write(&(message->event.remount), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_REMOUNT :{
			size += swr_es_event_remount_t_write(&(message->event.remount), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_GET_TASK_READ :{
			size += swr_es_event_get_task_read_t_write(&(message->event.get_task_read), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK_READ :{
			size += swr_es_event_get_task_read_t_write(&(message->event.get_task_read), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT :{
			size += swr_es_event_get_task_inspect_t_write(&(message->event.get_task_inspect), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETUID :{
			size += swr_es_event_setuid_t_write(&(message->event.setuid), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETGID :{
			size += swr_es_event_setgid_t_write(&(message->event.setgid), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETEUID :{
			size += swr_es_event_seteuid_t_write(&(message->event.seteuid), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETEGID :{
			size += swr_es_event_setegid_t_write(&(message->event.setegid), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETREUID :{
			size += swr_es_event_setreuid_t_write(&(message->event.setreuid), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETREGID :{
			size += swr_es_event_setregid_t_write(&(message->event.setregid), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_COPYFILE :{
			size += swr_es_event_copyfile_t_write(&(message->event.copyfile), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_COPYFILE :{
			size += swr_es_event_copyfile_t_write(&(message->event.copyfile), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_AUTHENTICATION :{
			size += swr_es_event_authentication_t_write(message->event.authentication, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED :{
			size += swr_es_event_xp_malware_detected_t_write(message->event.xp_malware_detected, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED :{
			size += swr_es_event_xp_malware_remediated_t_write(message->event.xp_malware_remediated, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN :{
			size += swr_es_event_lw_session_login_t_write(message->event.lw_session_login, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT :{
			size += swr_es_event_lw_session_logout_t_write(message->event.lw_session_logout, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK :{
			size += swr_es_event_lw_session_lock_t_write(message->event.lw_session_lock, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK :{
			size += swr_es_event_lw_session_unlock_t_write(message->event.lw_session_unlock, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH :{
			size += swr_es_event_screensharing_attach_t_write(message->event.screensharing_attach, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH :{
			size += swr_es_event_screensharing_detach_t_write(message->event.screensharing_detach, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN :{
			size += swr_es_event_openssh_login_t_write(message->event.openssh_login, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT :{
			size += swr_es_event_openssh_logout_t_write(message->event.openssh_logout, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN :{
			size += swr_es_event_login_login_t_write(message->event.login_login, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT :{
			size += swr_es_event_login_logout_t_write(message->event.login_logout, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD :{
			size += swr_es_event_btm_launch_item_add_t_write(message->event.btm_launch_item_add, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE :{
			size += swr_es_event_btm_launch_item_remove_t_write(message->event.btm_launch_item_remove, p+size);
		}break;
		default:
			break;
	}

	size += swr_es_thread_t_write(message->thread, p+size);
	*(uint64_t*)(p+size) = message->global_seq_num;
	size += sizeof(uint64_t);
    return size;
}

size_t swr_es_message_t_read(es_message_t *message, void *p) {
    size_t size = 0;
	message->version = *(uint32_t*)(p+size);
	size += sizeof(uint32_t);
	message->time = *(struct timespec*)(p+size);
	size += sizeof(struct timespec);
	message->mach_time = *(uint64_t*)(p+size);
	size += sizeof(uint64_t);
	message->deadline = *(uint64_t*)(p+size);
	size += sizeof(uint64_t);
	message->process = malloc(sizeof(es_process_t));
	size += swr_es_process_t_read(message->process, p+size);
	message->seq_num = *(uint64_t*)(p+size);
	size += sizeof(uint64_t);
	message->action_type = *(es_action_type_t*)(p+size);
	size += sizeof(es_action_type_t);
	switch (message->action_type) {
		case ES_ACTION_TYPE_AUTH :{
			size += swr_es_event_id_t_read(&(message->action.auth), p+size);
		}break;
		case ES_ACTION_TYPE_NOTIFY :{
			size += swr_es_result_t_read(&(message->action.notify), p+size);
		}break;
		default:
			break;
	}

	message->event_type = *(es_event_type_t*)(p+size);
	size += sizeof(es_event_type_t);
	switch (message->event_type) {
		case ES_EVENT_TYPE_AUTH_EXEC :{
			size += swr_es_event_exec_t_read(&(message->event.exec), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_OPEN :{
			size += swr_es_event_open_t_read(&(message->event.open), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_KEXTLOAD :{
			size += swr_es_event_kextload_t_read(&(message->event.kextload), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_MMAP :{
			size += swr_es_event_mmap_t_read(&(message->event.mmap), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_MPROTECT :{
			size += swr_es_event_mprotect_t_read(&(message->event.mprotect), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_MOUNT :{
			size += swr_es_event_mount_t_read(&(message->event.mount), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_RENAME :{
			size += swr_es_event_rename_t_read(&(message->event.rename), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SIGNAL :{
			size += swr_es_event_signal_t_read(&(message->event.signal), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_UNLINK :{
			size += swr_es_event_unlink_t_read(&(message->event.unlink), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_EXEC :{
			size += swr_es_event_exec_t_read(&(message->event.exec), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_OPEN :{
			size += swr_es_event_open_t_read(&(message->event.open), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_FORK :{
			size += swr_es_event_fork_t_read(&(message->event.fork), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CLOSE :{
			size += swr_es_event_close_t_read(&(message->event.close), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CREATE :{
			size += swr_es_event_create_t_read(&(message->event.create), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_EXCHANGEDATA :{
			size += swr_es_event_exchangedata_t_read(&(message->event.exchangedata), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_EXIT :{
			size += swr_es_event_exit_t_read(&(message->event.exit), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK :{
			size += swr_es_event_get_task_t_read(&(message->event.get_task), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_KEXTLOAD :{
			size += swr_es_event_kextload_t_read(&(message->event.kextload), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_KEXTUNLOAD :{
			size += swr_es_event_kextunload_t_read(&(message->event.kextunload), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LINK :{
			size += swr_es_event_link_t_read(&(message->event.link), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_MMAP :{
			size += swr_es_event_mmap_t_read(&(message->event.mmap), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_MPROTECT :{
			size += swr_es_event_mprotect_t_read(&(message->event.mprotect), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_MOUNT :{
			size += swr_es_event_mount_t_read(&(message->event.mount), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_UNMOUNT :{
			size += swr_es_event_unmount_t_read(&(message->event.unmount), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_IOKIT_OPEN :{
			size += swr_es_event_iokit_open_t_read(&(message->event.iokit_open), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_RENAME :{
			size += swr_es_event_rename_t_read(&(message->event.rename), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETATTRLIST :{
			size += swr_es_event_setattrlist_t_read(&(message->event.setattrlist), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETEXTATTR :{
			size += swr_es_event_setextattr_t_read(&(message->event.setextattr), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETFLAGS :{
			size += swr_es_event_setflags_t_read(&(message->event.setflags), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETMODE :{
			size += swr_es_event_setmode_t_read(&(message->event.setmode), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETOWNER :{
			size += swr_es_event_setowner_t_read(&(message->event.setowner), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SIGNAL :{
			size += swr_es_event_signal_t_read(&(message->event.signal), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_UNLINK :{
			size += swr_es_event_unlink_t_read(&(message->event.unlink), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_WRITE :{
			size += swr_es_event_write_t_read(&(message->event.write), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_MATERIALIZE :{
			size += swr_es_event_file_provider_materialize_t_read(&(message->event.file_provider_materialize), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_MATERIALIZE :{
			size += swr_es_event_file_provider_materialize_t_read(&(message->event.file_provider_materialize), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_FILE_PROVIDER_UPDATE :{
			size += swr_es_event_file_provider_update_t_read(&(message->event.file_provider_update), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_FILE_PROVIDER_UPDATE :{
			size += swr_es_event_file_provider_update_t_read(&(message->event.file_provider_update), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_READLINK :{
			size += swr_es_event_readlink_t_read(&(message->event.readlink), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_READLINK :{
			size += swr_es_event_readlink_t_read(&(message->event.readlink), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_TRUNCATE :{
			size += swr_es_event_truncate_t_read(&(message->event.truncate), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_TRUNCATE :{
			size += swr_es_event_truncate_t_read(&(message->event.truncate), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_LINK :{
			size += swr_es_event_link_t_read(&(message->event.link), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LOOKUP :{
			size += swr_es_event_lookup_t_read(&(message->event.lookup), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_CREATE :{
			size += swr_es_event_create_t_read(&(message->event.create), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETATTRLIST :{
			size += swr_es_event_setattrlist_t_read(&(message->event.setattrlist), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETEXTATTR :{
			size += swr_es_event_setextattr_t_read(&(message->event.setextattr), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETFLAGS :{
			size += swr_es_event_setflags_t_read(&(message->event.setflags), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETMODE :{
			size += swr_es_event_setmode_t_read(&(message->event.setmode), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETOWNER :{
			size += swr_es_event_setowner_t_read(&(message->event.setowner), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_CHDIR :{
			size += swr_es_event_chdir_t_read(&(message->event.chdir), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CHDIR :{
			size += swr_es_event_chdir_t_read(&(message->event.chdir), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_GETATTRLIST :{
			size += swr_es_event_getattrlist_t_read(&(message->event.getattrlist), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GETATTRLIST :{
			size += swr_es_event_getattrlist_t_read(&(message->event.getattrlist), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_STAT :{
			size += swr_es_event_stat_t_read(&(message->event.stat), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_ACCESS :{
			size += swr_es_event_access_t_read(&(message->event.access), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_CHROOT :{
			size += swr_es_event_chroot_t_read(&(message->event.chroot), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CHROOT :{
			size += swr_es_event_chroot_t_read(&(message->event.chroot), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_UTIMES :{
			size += swr_es_event_utimes_t_read(&(message->event.utimes), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_UTIMES :{
			size += swr_es_event_utimes_t_read(&(message->event.utimes), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_CLONE :{
			size += swr_es_event_clone_t_read(&(message->event.clone), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CLONE :{
			size += swr_es_event_clone_t_read(&(message->event.clone), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_FCNTL :{
			size += swr_es_event_fcntl_t_read(&(message->event.fcntl), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_GETEXTATTR :{
			size += swr_es_event_getextattr_t_read(&(message->event.getextattr), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GETEXTATTR :{
			size += swr_es_event_getextattr_t_read(&(message->event.getextattr), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_LISTEXTATTR :{
			size += swr_es_event_listextattr_t_read(&(message->event.listextattr), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LISTEXTATTR :{
			size += swr_es_event_listextattr_t_read(&(message->event.listextattr), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_READDIR :{
			size += swr_es_event_readdir_t_read(&(message->event.readdir), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_READDIR :{
			size += swr_es_event_readdir_t_read(&(message->event.readdir), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_DELETEEXTATTR :{
			size += swr_es_event_deleteextattr_t_read(&(message->event.deleteextattr), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_DELETEEXTATTR :{
			size += swr_es_event_deleteextattr_t_read(&(message->event.deleteextattr), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_FSGETPATH :{
			size += swr_es_event_fsgetpath_t_read(&(message->event.fsgetpath), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_FSGETPATH :{
			size += swr_es_event_fsgetpath_t_read(&(message->event.fsgetpath), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_DUP :{
			size += swr_es_event_dup_t_read(&(message->event.dup), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETTIME :{
			size += swr_es_event_settime_t_read(&(message->event.settime), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETTIME :{
			size += swr_es_event_settime_t_read(&(message->event.settime), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_UIPC_BIND :{
			size += swr_es_event_uipc_bind_t_read(&(message->event.uipc_bind), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_UIPC_BIND :{
			size += swr_es_event_uipc_bind_t_read(&(message->event.uipc_bind), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_UIPC_CONNECT :{
			size += swr_es_event_uipc_connect_t_read(&(message->event.uipc_connect), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_UIPC_CONNECT :{
			size += swr_es_event_uipc_connect_t_read(&(message->event.uipc_connect), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_EXCHANGEDATA :{
			size += swr_es_event_exchangedata_t_read(&(message->event.exchangedata), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SETACL :{
			size += swr_es_event_setacl_t_read(&(message->event.setacl), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETACL :{
			size += swr_es_event_setacl_t_read(&(message->event.setacl), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_PTY_GRANT :{
			size += swr_es_event_pty_grant_t_read(&(message->event.pty_grant), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_PTY_CLOSE :{
			size += swr_es_event_pty_close_t_read(&(message->event.pty_close), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_PROC_CHECK :{
			size += swr_es_event_proc_check_t_read(&(message->event.proc_check), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_PROC_CHECK :{
			size += swr_es_event_proc_check_t_read(&(message->event.proc_check), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_GET_TASK :{
			size += swr_es_event_get_task_t_read(&(message->event.get_task), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_SEARCHFS :{
			size += swr_es_event_searchfs_t_read(&(message->event.searchfs), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SEARCHFS :{
			size += swr_es_event_searchfs_t_read(&(message->event.searchfs), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_FCNTL :{
			size += swr_es_event_fcntl_t_read(&(message->event.fcntl), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_IOKIT_OPEN :{
			size += swr_es_event_iokit_open_t_read(&(message->event.iokit_open), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_PROC_SUSPEND_RESUME :{
			size += swr_es_event_proc_suspend_resume_t_read(&(message->event.proc_suspend_resume), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_PROC_SUSPEND_RESUME :{
			size += swr_es_event_proc_suspend_resume_t_read(&(message->event.proc_suspend_resume), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_CS_INVALIDATED :{
			size += swr_es_event_cs_invalidated_t_read(&(message->event.cs_invalidated), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK_NAME :{
			size += swr_es_event_get_task_name_t_read(&(message->event.get_task_name), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_TRACE :{
			size += swr_es_event_trace_t_read(&(message->event.trace), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_REMOTE_THREAD_CREATE :{
			size += swr_es_event_remote_thread_create_t_read(&(message->event.remote_thread_create), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_REMOUNT :{
			size += swr_es_event_remount_t_read(&(message->event.remount), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_REMOUNT :{
			size += swr_es_event_remount_t_read(&(message->event.remount), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_GET_TASK_READ :{
			size += swr_es_event_get_task_read_t_read(&(message->event.get_task_read), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK_READ :{
			size += swr_es_event_get_task_read_t_read(&(message->event.get_task_read), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_GET_TASK_INSPECT :{
			size += swr_es_event_get_task_inspect_t_read(&(message->event.get_task_inspect), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETUID :{
			size += swr_es_event_setuid_t_read(&(message->event.setuid), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETGID :{
			size += swr_es_event_setgid_t_read(&(message->event.setgid), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETEUID :{
			size += swr_es_event_seteuid_t_read(&(message->event.seteuid), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETEGID :{
			size += swr_es_event_setegid_t_read(&(message->event.setegid), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETREUID :{
			size += swr_es_event_setreuid_t_read(&(message->event.setreuid), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SETREGID :{
			size += swr_es_event_setregid_t_read(&(message->event.setregid), p+size);
		}break;
		case ES_EVENT_TYPE_AUTH_COPYFILE :{
			size += swr_es_event_copyfile_t_read(&(message->event.copyfile), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_COPYFILE :{
			size += swr_es_event_copyfile_t_read(&(message->event.copyfile), p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_AUTHENTICATION :{
			message->event.authentication = malloc(sizeof(es_event_authentication_t));
			size += swr_es_event_authentication_t_read(message->event.authentication, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_DETECTED :{
			message->event.xp_malware_detected = malloc(sizeof(es_event_xp_malware_detected_t));
			size += swr_es_event_xp_malware_detected_t_read(message->event.xp_malware_detected, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_XP_MALWARE_REMEDIATED :{
			message->event.xp_malware_remediated = malloc(sizeof(es_event_xp_malware_remediated_t));
			size += swr_es_event_xp_malware_remediated_t_read(message->event.xp_malware_remediated, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGIN :{
			message->event.lw_session_login = malloc(sizeof(es_event_lw_session_login_t));
			size += swr_es_event_lw_session_login_t_read(message->event.lw_session_login, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOGOUT :{
			message->event.lw_session_logout = malloc(sizeof(es_event_lw_session_logout_t));
			size += swr_es_event_lw_session_logout_t_read(message->event.lw_session_logout, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_LOCK :{
			message->event.lw_session_lock = malloc(sizeof(es_event_lw_session_lock_t));
			size += swr_es_event_lw_session_lock_t_read(message->event.lw_session_lock, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LW_SESSION_UNLOCK :{
			message->event.lw_session_unlock = malloc(sizeof(es_event_lw_session_unlock_t));
			size += swr_es_event_lw_session_unlock_t_read(message->event.lw_session_unlock, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_ATTACH :{
			message->event.screensharing_attach = malloc(sizeof(es_event_screensharing_attach_t));
			size += swr_es_event_screensharing_attach_t_read(message->event.screensharing_attach, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_SCREENSHARING_DETACH :{
			message->event.screensharing_detach = malloc(sizeof(es_event_screensharing_detach_t));
			size += swr_es_event_screensharing_detach_t_read(message->event.screensharing_detach, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGIN :{
			message->event.openssh_login = malloc(sizeof(es_event_openssh_login_t));
			size += swr_es_event_openssh_login_t_read(message->event.openssh_login, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_OPENSSH_LOGOUT :{
			message->event.openssh_logout = malloc(sizeof(es_event_openssh_logout_t));
			size += swr_es_event_openssh_logout_t_read(message->event.openssh_logout, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGIN :{
			message->event.login_login = malloc(sizeof(es_event_login_login_t));
			size += swr_es_event_login_login_t_read(message->event.login_login, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_LOGIN_LOGOUT :{
			message->event.login_logout = malloc(sizeof(es_event_login_logout_t));
			size += swr_es_event_login_logout_t_read(message->event.login_logout, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_ADD :{
			message->event.btm_launch_item_add = malloc(sizeof(es_event_btm_launch_item_add_t));
			size += swr_es_event_btm_launch_item_add_t_read(message->event.btm_launch_item_add, p+size);
		}break;
		case ES_EVENT_TYPE_NOTIFY_BTM_LAUNCH_ITEM_REMOVE :{
			message->event.btm_launch_item_remove = malloc(sizeof(es_event_btm_launch_item_remove_t));
			size += swr_es_event_btm_launch_item_remove_t_read(message->event.btm_launch_item_remove, p+size);
		}break;
		default:
			break;
	}

	message->thread = malloc(sizeof(es_thread_t));
	size += swr_es_thread_t_read(message->thread, p+size);
	message->global_seq_num = *(uint64_t*)(p+size);
	size += sizeof(uint64_t);
    return size;
}

