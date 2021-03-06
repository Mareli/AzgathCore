// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: global_extensions/method_options.proto

#define INTERNAL_SUPPRESS_PROTOBUF_FIELD_DEPRECATION
#include "global_extensions/method_options.pb.h"

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

const ::google::protobuf::Descriptor* BGSMethodOptions_descriptor_ = NULL;
const ::google::protobuf::internal::GeneratedMessageReflection*
  BGSMethodOptions_reflection_ = NULL;

}  // namespace


void protobuf_AssignDesc_global_5fextensions_2fmethod_5foptions_2eproto() {
  protobuf_AddDesc_global_5fextensions_2fmethod_5foptions_2eproto();
  const ::google::protobuf::FileDescriptor* file =
    ::google::protobuf::DescriptorPool::generated_pool()->FindFileByName(
      "global_extensions/method_options.proto");
  GOOGLE_CHECK(file != NULL);
  BGSMethodOptions_descriptor_ = file->message_type(0);
  static const int BGSMethodOptions_offsets_[1] = {
    GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(BGSMethodOptions, id_),
  };
  BGSMethodOptions_reflection_ =
    new ::google::protobuf::internal::GeneratedMessageReflection(
      BGSMethodOptions_descriptor_,
      BGSMethodOptions::default_instance_,
      BGSMethodOptions_offsets_,
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(BGSMethodOptions, _has_bits_[0]),
      GOOGLE_PROTOBUF_GENERATED_MESSAGE_FIELD_OFFSET(BGSMethodOptions, _unknown_fields_),
      -1,
      ::google::protobuf::DescriptorPool::generated_pool(),
      ::google::protobuf::MessageFactory::generated_factory(),
      sizeof(BGSMethodOptions));
}

namespace {

GOOGLE_PROTOBUF_DECLARE_ONCE(protobuf_AssignDescriptors_once_);
inline void protobuf_AssignDescriptorsOnce() {
  ::google::protobuf::GoogleOnceInit(&protobuf_AssignDescriptors_once_,
                 &protobuf_AssignDesc_global_5fextensions_2fmethod_5foptions_2eproto);
}

void protobuf_RegisterTypes(const ::std::string&) {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage(
    BGSMethodOptions_descriptor_, &BGSMethodOptions::default_instance());
}

}  // namespace

void protobuf_ShutdownFile_global_5fextensions_2fmethod_5foptions_2eproto() {
  delete BGSMethodOptions::default_instance_;
  delete BGSMethodOptions_reflection_;
}

void protobuf_AddDesc_global_5fextensions_2fmethod_5foptions_2eproto() {
  static bool already_here = false;
  if (already_here) return;
  already_here = true;
  GOOGLE_PROTOBUF_VERIFY_VERSION;

  ::google::protobuf::protobuf_AddDesc_google_2fprotobuf_2fdescriptor_2eproto();
  ::google::protobuf::DescriptorPool::InternalAddGeneratedFile(
    "\n&global_extensions/method_options.proto"
    "\022\014bgs.protocol\032 google/protobuf/descript"
    "or.proto\"\036\n\020BGSMethodOptions\022\n\n\002id\030\001 \001(\r"
    ":X\n\016method_options\022\036.google.protobuf.Met"
    "hodOptions\030\220\277\005 \001(\0132\036.bgs.protocol.BGSMet"
    "hodOptionsB%\n\rbnet.protocolB\022MethodOptio"
    "nsProtoH\001", 249);
  ::google::protobuf::MessageFactory::InternalRegisterGeneratedFile(
    "global_extensions/method_options.proto", &protobuf_RegisterTypes);
  BGSMethodOptions::default_instance_ = new BGSMethodOptions();
  ::google::protobuf::internal::ExtensionSet::RegisterMessageExtension(
    &::google::protobuf::MethodOptions::default_instance(),
    90000, 11, false, false,
    &::bgs::protocol::BGSMethodOptions::default_instance());
  BGSMethodOptions::default_instance_->InitAsDefaultInstance();
  ::google::protobuf::internal::OnShutdown(&protobuf_ShutdownFile_global_5fextensions_2fmethod_5foptions_2eproto);
}

// Force AddDescriptors() to be called at static initialization time.
struct StaticDescriptorInitializer_global_5fextensions_2fmethod_5foptions_2eproto {
  StaticDescriptorInitializer_global_5fextensions_2fmethod_5foptions_2eproto() {
    protobuf_AddDesc_global_5fextensions_2fmethod_5foptions_2eproto();
  }
} static_descriptor_initializer_global_5fextensions_2fmethod_5foptions_2eproto_;

// ===================================================================

#ifndef _MSC_VER
const int BGSMethodOptions::kIdFieldNumber;
#endif  // !_MSC_VER

BGSMethodOptions::BGSMethodOptions()
  : ::google::protobuf::Message() {
  SharedCtor();
  // @@protoc_insertion_point(constructor:bgs.protocol.BGSMethodOptions)
}

void BGSMethodOptions::InitAsDefaultInstance() {
}

BGSMethodOptions::BGSMethodOptions(const BGSMethodOptions& from)
  : ::google::protobuf::Message() {
  SharedCtor();
  MergeFrom(from);
  // @@protoc_insertion_point(copy_constructor:bgs.protocol.BGSMethodOptions)
}

void BGSMethodOptions::SharedCtor() {
  _cached_size_ = 0;
  id_ = 0u;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
}

BGSMethodOptions::~BGSMethodOptions() {
  // @@protoc_insertion_point(destructor:bgs.protocol.BGSMethodOptions)
  SharedDtor();
}

void BGSMethodOptions::SharedDtor() {
  if (this != default_instance_) {
  }
}

void BGSMethodOptions::SetCachedSize(int size) const {
  GOOGLE_SAFE_CONCURRENT_WRITES_BEGIN();
  _cached_size_ = size;
  GOOGLE_SAFE_CONCURRENT_WRITES_END();
}
const ::google::protobuf::Descriptor* BGSMethodOptions::descriptor() {
  protobuf_AssignDescriptorsOnce();
  return BGSMethodOptions_descriptor_;
}

const BGSMethodOptions& BGSMethodOptions::default_instance() {
  if (default_instance_ == NULL) protobuf_AddDesc_global_5fextensions_2fmethod_5foptions_2eproto();
  return *default_instance_;
}

BGSMethodOptions* BGSMethodOptions::default_instance_ = NULL;

BGSMethodOptions* BGSMethodOptions::New() const {
  return new BGSMethodOptions;
}

void BGSMethodOptions::Clear() {
  id_ = 0u;
  ::memset(_has_bits_, 0, sizeof(_has_bits_));
  mutable_unknown_fields()->Clear();
}

bool BGSMethodOptions::MergePartialFromCodedStream(
    ::google::protobuf::io::CodedInputStream* input) {
#define DO_(EXPRESSION) if (!(EXPRESSION)) goto failure
  ::google::protobuf::uint32 tag;
  // @@protoc_insertion_point(parse_start:bgs.protocol.BGSMethodOptions)
  for (;;) {
    ::std::pair< ::google::protobuf::uint32, bool> p = input->ReadTagWithCutoff(127);
    tag = p.first;
    if (!p.second) goto handle_unusual;
    switch (::google::protobuf::internal::WireFormatLite::GetTagFieldNumber(tag)) {
      // optional uint32 id = 1;
      case 1: {
        if (tag == 8) {
          DO_((::google::protobuf::internal::WireFormatLite::ReadPrimitive<
                   ::google::protobuf::uint32, ::google::protobuf::internal::WireFormatLite::TYPE_UINT32>(
                 input, &id_)));
          set_has_id();
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
  // @@protoc_insertion_point(parse_success:bgs.protocol.BGSMethodOptions)
  return true;
failure:
  // @@protoc_insertion_point(parse_failure:bgs.protocol.BGSMethodOptions)
  return false;
#undef DO_
}

void BGSMethodOptions::SerializeWithCachedSizes(
    ::google::protobuf::io::CodedOutputStream* output) const {
  // @@protoc_insertion_point(serialize_start:bgs.protocol.BGSMethodOptions)
  // optional uint32 id = 1;
  if (has_id()) {
    ::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this->id(), output);
  }

  if (!unknown_fields().empty()) {
    ::google::protobuf::internal::WireFormat::SerializeUnknownFields(
        unknown_fields(), output);
  }
  // @@protoc_insertion_point(serialize_end:bgs.protocol.BGSMethodOptions)
}

::google::protobuf::uint8* BGSMethodOptions::SerializeWithCachedSizesToArray(
    ::google::protobuf::uint8* target) const {
  // @@protoc_insertion_point(serialize_to_array_start:bgs.protocol.BGSMethodOptions)
  // optional uint32 id = 1;
  if (has_id()) {
    target = ::google::protobuf::internal::WireFormatLite::WriteUInt32ToArray(1, this->id(), target);
  }

  if (!unknown_fields().empty()) {
    target = ::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(
        unknown_fields(), target);
  }
  // @@protoc_insertion_point(serialize_to_array_end:bgs.protocol.BGSMethodOptions)
  return target;
}

int BGSMethodOptions::ByteSize() const {
  int total_size = 0;

  if (_has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    // optional uint32 id = 1;
    if (has_id()) {
      total_size += 1 +
        ::google::protobuf::internal::WireFormatLite::UInt32Size(
          this->id());
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

void BGSMethodOptions::MergeFrom(const ::google::protobuf::Message& from) {
  GOOGLE_CHECK_NE(&from, this);
  const BGSMethodOptions* source =
    ::google::protobuf::internal::dynamic_cast_if_available<const BGSMethodOptions*>(
      &from);
  if (source == NULL) {
    ::google::protobuf::internal::ReflectionOps::Merge(from, this);
  } else {
    MergeFrom(*source);
  }
}

void BGSMethodOptions::MergeFrom(const BGSMethodOptions& from) {
  GOOGLE_CHECK_NE(&from, this);
  if (from._has_bits_[0 / 32] & (0xffu << (0 % 32))) {
    if (from.has_id()) {
      set_id(from.id());
    }
  }
  mutable_unknown_fields()->MergeFrom(from.unknown_fields());
}

void BGSMethodOptions::CopyFrom(const ::google::protobuf::Message& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

void BGSMethodOptions::CopyFrom(const BGSMethodOptions& from) {
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool BGSMethodOptions::IsInitialized() const {

  return true;
}

void BGSMethodOptions::Swap(BGSMethodOptions* other) {
  if (other != this) {
    std::swap(id_, other->id_);
    std::swap(_has_bits_[0], other->_has_bits_[0]);
    _unknown_fields_.Swap(&other->_unknown_fields_);
    std::swap(_cached_size_, other->_cached_size_);
  }
}

::google::protobuf::Metadata BGSMethodOptions::GetMetadata() const {
  protobuf_AssignDescriptorsOnce();
  ::google::protobuf::Metadata metadata;
  metadata.descriptor = BGSMethodOptions_descriptor_;
  metadata.reflection = BGSMethodOptions_reflection_;
  return metadata;
}

::google::protobuf::internal::ExtensionIdentifier< ::google::protobuf::MethodOptions,
    ::google::protobuf::internal::MessageTypeTraits< ::bgs::protocol::BGSMethodOptions >, 11, false >
  method_options(kMethodOptionsFieldNumber, ::bgs::protocol::BGSMethodOptions::default_instance());

// @@protoc_insertion_point(namespace_scope)

}  // namespace protocol
}  // namespace bgs

// @@protoc_insertion_point(global_scope)
