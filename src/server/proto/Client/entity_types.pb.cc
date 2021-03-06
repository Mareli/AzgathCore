// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: entity_types.proto

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "entity_types.pb.h"

#include <algorithm>
#include <utility>

#include <google/protobuf/stubs/common.h>
#include <google/protobuf/stubs/once.h>
#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/wire_format_lite_inl.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
#include "Log.h"
// @@protoc_insertion_point(includes)

namespace bgs {
namespace protocol {

namespace {

const ::google::protobuf::Descriptor* EntityId_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  EntityId_reflection_ = NULL;
const ::google::protobuf::Descriptor* Identity_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  Identity_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_entity_5ftypes_2eproto() {
  protobuf_AddDesc_entity_5ftypes_2eproto();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "entity_types.proto");
  GOOGLE_CHECK(file != NULL);
  EntityId_descriptor_ = file->message_type(0);
  static const int EntityId_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(EntityId, high_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(EntityId, low_),
  };
  EntityId_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      EntityId_descriptor_,
      EntityId::default_instance_,
      EntityId_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(EntityId, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(EntityId, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(EntityId));
  Identity_descriptor_ = file->message_type(1);
  static const int Identity_offsets_[2] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(Identity, account_id_),
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(Identity, game_account_id_),
  };
  Identity_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      Identity_descriptor_,
      Identity::default_instance_,
      Identity_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(Identity, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(Identity, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(Identity));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_entity_5ftypes_2eproto);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    EntityId_descriptor_, &EntityId::default_instance());
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    Identity_descriptor_, &Identity::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_entity_5ftypes_2eproto() {
  delete EntityId::default_instance_;
  delete EntityId_reflection_;
  delete Identity::default_instance_;
  delete Identity_reflection_;
}

void protobuf_AddDesc_entity_5ftypes_2eproto() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::bgs::protocol::protobuf_AddDesc_global_5fextensions_2ffield_5foptions_2eproto();
  ::bgs::protocol::protobuf_AddDesc_global_5fextensions_2fmessage_5foptions_2eproto();
  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n\022entity_types.proto\022\014bgs.protocol\032%glob"
    "al_extensions/field_options.proto\032\'globa"
    "l_extensions/message_options.proto\"=\n\010En"
    "tityId\022\024\n\004high\030\001 \002(\006B\006\202\371+\002\010\002\022\023\n\003low\030\002 \002("
    "\006B\006\202\371+\002\010\002:\006\202\371+\002\010\001\"{\n\010Identity\0224\n\naccount"
    "_id\030\001 \001(\0132\026.bgs.protocol.EntityIdB\010\212\371+\004:"
    "\002\020\001\0229\n\017game_account_id\030\002 \001(\0132\026.bgs.proto"
    "col.EntityIdB\010\212\371+\004:\002\020\002B\036\n\rbnet.protocolB"
    "\013EntityProtoH\001", 334);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "entity_types.proto", &protobuf_RegisterTypes);
  EntityId::default_instance_ = new EntityId();
  Identity::default_instance_ = new Identity();
  EntityId::default_instance_->InitAsDefaultInstance();
  Identity::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_entity_5ftypes_2eproto);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_entity_5ftypes_2eproto {
  StaticDescriptorInitializer_entity_5ftypes_2eproto() {
    protobuf_AddDesc_entity_5ftypes_2eproto();
  }
} static_descriptor_initializer_entity_5ftypes_2eproto_;

// ===================================================================

#ifndef _MSC_VER
const int EntityId::kHighFieldNumber;
const int EntityId::kLowFieldNumber;
#endif  // !_MSC_VER

EntityId::EntityId()
  : ::google::protobuf::Message() {
  SharedCtor();
  // @@protoc_insertion_point(constructor:bgs.protocol.EntityId)
}

void EntityId::InitAsDefaultInstance() {
}

EntityId::EntityId(const EntityId& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
  // @@protoc_insertion_point(copy_constructor:bgs.protocol.EntityId)
}

void EntityId::SharedCtor() {
  _cached_size_ = 0;
  high_ = GOOGLE_ULONGLONG(0);
  low_ = GOOGLE_ULONGLONG(0);
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

EntityId::~EntityId() {
  // @@protoc_insertion_point(destructor:bgs.protocol.EntityId)
  SharedDtor();
}

void EntityId::SharedDtor() {
  if (this != default_instance_) {
  }
}

void EntityId::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* EntityId::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return EntityId_descriptor_;
}

const EntityId& EntityId::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_entity_5ftypes_2eproto();
  return *default_instance_;
}

EntityId* EntityId::default_instance_ = NULL;

EntityId* EntityId::New() const {
  return new EntityId;
}

void EntityId::Clear() {
#define OFFSET_OF_FIELD_(f) (reinterpret_cast<char*>(      \
  &reinterpret_cast<EntityId*>(16)->f) - \
   reinterpret_cast<char*>(16))

#define ZR_(first, last) do {                              \
    size_t f = OFFSET_OF_FIELD_(first);                    \
    size_t n = OFFSET_OF_FIELD_(last) - f + sizeof(last);  \
    ::memset(&first, 0, n);                                \
  } while (0)

  ZR_(high_, low_);

#undef OFFSET_OF_FIELD_
#undef ZR_

  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool EntityId::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) goto failure
  ::google::protobuf::uint32 tag;
  // @@protoc_insertion_point(parse_start:bgs.protocol.EntityId)
  for (;;) {
    ::std::pair< ::google::protobuf::uint32, bool> p = input->ReadTagWithCutoff(127);
    tag = p.first;
    if (!p.second) goto handle_unusual;
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // required fixed64 high = 1;
      case 1: {
        if (tag == 9) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::uint64, ::google::protobuf::internal::WireFormatLite::TYPE_FIXED64>(
                 input, &high_)));
          set_has_high();
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(17)) goto parse_low;
        break;
      }

      // required fixed64 low = 2;
      case 2: {
        if (tag == 17) {
         parse_low:
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::uint64, ::google::protobuf::internal::WireFormatLite::TYPE_FIXED64>(
                 input, &low_)));
          set_has_low();
        } else {
          goto handle_unusual;
        }
        if (input->ExpectAtEnd()) goto success;
        break;
      }

      default: {
      handle_unusual:
        if (tag == 0 ||
            ::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_END_GROUP) {
          goto success;
        }
        DO_(::google::protobuf::internal::WireFormat::SkipField(
              input, tag, mutable_unknown_fields()));
        break;
      }
    }
  }
success:
  // @@protoc_insertion_point(parse_success:bgs.protocol.EntityId)
  return true;
failure:
  // @@protoc_insertion_point(parse_failure:bgs.protocol.EntityId)
  return false;
#undef DO_
}

void EntityId::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // @@protoc_insertion_point(serialize_start:bgs.protocol.EntityId)
  // required fixed64 high = 1;
  if (has_high()) {
    ::google::protobuf::internal::WireFormatLite::WriteFixed64(1, this->high(), output);
  }

  // required fixed64 low = 2;
  if (has_low()) {
    ::google::protobuf::internal::WireFormatLite::WriteFixed64(2, this->low(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
  // @@protoc_insertion_point(serialize_end:bgs.protocol.EntityId)
}

::google::protobuf::uint8* EntityId::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // @@protoc_insertion_point(serialize_to_array_start:bgs.protocol.EntityId)
  // required fixed64 high = 1;
  if (has_high()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteFixed64ToArray(1, this->high(), target);
  }

  // required fixed64 low = 2;
  if (has_low()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteFixed64ToArray(2, this->low(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:bgs.protocol.EntityId)
  return target;
}

int EntityId::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // required fixed64 high = 1;
    if (has_high()) {
      total_size += 1 + 8;
    }

    // required fixed64 low = 2;
    if (has_low()) {
      total_size += 1 + 8;
    }

  }
  if (!unknown_fields().empty()) {
    total_size +=
      ::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        unknown_fields());
  }
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = total_size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
  return total_size;
}

void EntityId::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const EntityId* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const EntityId*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void EntityId::MergeFrom(const EntityId& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_high()) {
      set_high(from.high());
    }
    if (from.has_low()) {
      set_low(from.low());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void EntityId::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void EntityId::CopyFrom(const EntityId& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool EntityId::IsInitialized() const {
  if ((_has_bits_[0] & 0x00000003) != 0x00000003) return false;

  return true;
}

void EntityId::Swap(EntityId* other) {
  if (other != this) {
    std::swap(high_, other->high_);
    std::swap(low_, other->low_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata EntityId::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = EntityId_descriptor_;
  metadata.reflection = EntityId_reflection_;
  return metadata;
}


// ===================================================================

#ifndef _MSC_VER
const int Identity::kAccountIdFieldNumber;
const int Identity::kGameAccountIdFieldNumber;
#endif  // !_MSC_VER

Identity::Identity()
  : ::google::protobuf::Message() {
  SharedCtor();
  // @@protoc_insertion_point(constructor:bgs.protocol.Identity)
}

void Identity::InitAsDefaultInstance() {
  account_id_ = const_cast< ::bgs::protocol::EntityId*>(&::bgs::protocol::EntityId::default_instance());
  game_account_id_ = const_cast< ::bgs::protocol::EntityId*>(&::bgs::protocol::EntityId::default_instance());
}

Identity::Identity(const Identity& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
  // @@protoc_insertion_point(copy_constructor:bgs.protocol.Identity)
}

void Identity::SharedCtor() {
  _cached_size_ = 0;
  account_id_ = NULL;
  game_account_id_ = NULL;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

Identity::~Identity() {
  // @@protoc_insertion_point(destructor:bgs.protocol.Identity)
  SharedDtor();
}

void Identity::SharedDtor() {
  if (this != default_instance_) {
    delete account_id_;
    delete game_account_id_;
  }
}

void Identity::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* Identity::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return Identity_descriptor_;
}

const Identity& Identity::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_entity_5ftypes_2eproto();
  return *default_instance_;
}

Identity* Identity::default_instance_ = NULL;

Identity* Identity::New() const {
  return new Identity;
}

void Identity::Clear() {
  if (_has_bits_[0 / 32] & 3) {
    if (has_account_id()) {
      if (account_id_ != NULL) account_id_->::bgs::protocol::EntityId::Clear();
    }
    if (has_game_account_id()) {
      if (game_account_id_ != NULL) game_account_id_->::bgs::protocol::EntityId::Clear();
    }
  }
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool Identity::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) goto failure
  ::google::protobuf::uint32 tag;
  // @@protoc_insertion_point(parse_start:bgs.protocol.Identity)
  for (;;) {
    ::std::pair< ::google::protobuf::uint32, bool> p = input->ReadTagWithCutoff(127);
    tag = p.first;
    if (!p.second) goto handle_unusual;
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // optional .bgs.protocol.EntityId account_id = 1;
      case 1: {
        if (tag == 10) {
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtual(
               input, mutable_account_id()));
        } else {
          goto handle_unusual;
        }
        if (input->ExpectTag(18)) goto parse_game_account_id;
        break;
      }

      // optional .bgs.protocol.EntityId game_account_id = 2;
      case 2: {
        if (tag == 18) {
         parse_game_account_id:
          DO_(::google::protobuf::internal::WireFormatLite::ReadMessageNoVirtual(
               input, mutable_game_account_id()));
        } else {
          goto handle_unusual;
        }
        if (input->ExpectAtEnd()) goto success;
        break;
      }

      default: {
      handle_unusual:
        if (tag == 0 ||
            ::google::protobuf::internal::WireFormatLite::GetTagWireType(tag) ==
            ::google::protobuf::internal::WireFormatLite::WIRETYPE_END_GROUP) {
          goto success;
        }
        DO_(::google::protobuf::internal::WireFormat::SkipField(
              input, tag, mutable_unknown_fields()));
        break;
      }
    }
  }
success:
  // @@protoc_insertion_point(parse_success:bgs.protocol.Identity)
  return true;
failure:
  // @@protoc_insertion_point(parse_failure:bgs.protocol.Identity)
  return false;
#undef DO_
}

void Identity::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // @@protoc_insertion_point(serialize_start:bgs.protocol.Identity)
  // optional .bgs.protocol.EntityId account_id = 1;
  if (has_account_id()) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      1, this->account_id(), output);
  }

  // optional .bgs.protocol.EntityId game_account_id = 2;
  if (has_game_account_id()) {
    ::google::protobuf::internal::WireFormatLite::WriteMessageMaybeToArray(
      2, this->game_account_id(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
  // @@protoc_insertion_point(serialize_end:bgs.protocol.Identity)
}

::google::protobuf::uint8* Identity::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // @@protoc_insertion_point(serialize_to_array_start:bgs.protocol.Identity)
  // optional .bgs.protocol.EntityId account_id = 1;
  if (has_account_id()) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        1, this->account_id(), target);
  }

  // optional .bgs.protocol.EntityId game_account_id = 2;
  if (has_game_account_id()) {
    target = ::google::protobuf::internal::WireFormatLite::
      WriteMessageNoVirtualToArray(
        2, this->game_account_id(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:bgs.protocol.Identity)
  return target;
}

int Identity::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // optional .bgs.protocol.EntityId account_id = 1;
    if (has_account_id()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::MessageSizeNoVirtual(
          this->account_id());
    }

    // optional .bgs.protocol.EntityId game_account_id = 2;
    if (has_game_account_id()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::MessageSizeNoVirtual(
          this->game_account_id());
    }

  }
  if (!unknown_fields().empty()) {
    total_size +=
      ::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(
        unknown_fields());
  }
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = total_size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
  return total_size;
}

void Identity::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const Identity* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const Identity*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void Identity::MergeFrom(const Identity& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_account_id()) {
      mutable_account_id()->::bgs::protocol::EntityId::MergeFrom(from.account_id());
    }
    if (from.has_game_account_id()) {
      mutable_game_account_id()->::bgs::protocol::EntityId::MergeFrom(from.game_account_id());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void Identity::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void Identity::CopyFrom(const Identity& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool Identity::IsInitialized() const {

  if (has_account_id()) {
    if (!this->account_id().IsInitialized()) return false;
  }
  if (has_game_account_id()) {
    if (!this->game_account_id().IsInitialized()) return false;
  }
  return true;
}

void Identity::Swap(Identity* other) {
  if (other != this) {
    std::swap(account_id_, other->account_id_);
    std::swap(game_account_id_, other->game_account_id_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata Identity::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = Identity_descriptor_;
  metadata.reflection = Identity_reflection_;
  return metadata;
}


// @@protoc_insertion_point(namespace_scope)

}  // namespace protocol
}  // namespace bgs

// @@protoc_insertion_point(global_scope)
