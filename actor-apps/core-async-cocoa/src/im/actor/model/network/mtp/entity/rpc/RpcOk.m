//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/network/mtp/entity/rpc/RpcOk.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcOk.h"
#include "java/io/IOException.h"

@implementation MTRpcOk

- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTRpcOk_initWithBSDataInput_(self, stream);
  return self;
}

- (instancetype)initWithInt:(jint)responseType
              withByteArray:(IOSByteArray *)payload {
  MTRpcOk_initWithInt_withByteArray_(self, responseType, payload);
  return self;
}

- (jint)getResponseType {
  return responseType_;
}

- (IOSByteArray *)getPayload {
  return payload_;
}

- (jbyte)getHeader {
  return MTRpcOk_HEADER;
}

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeIntWithInt:responseType_];
  [bs writeProtoBytesWithByteArray:payload_ withInt:0 withInt:((IOSByteArray *) nil_chk(payload_))->size_];
}

- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  responseType_ = [((BSDataInput *) nil_chk(bs)) readInt];
  payload_ = [bs readProtoBytes];
}

- (NSString *)description {
  return JreStrcat("$IC", @"RpcOk{", responseType_, ']');
}

@end

void MTRpcOk_initWithBSDataInput_(MTRpcOk *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}

MTRpcOk *new_MTRpcOk_initWithBSDataInput_(BSDataInput *stream) {
  MTRpcOk *self = [MTRpcOk alloc];
  MTRpcOk_initWithBSDataInput_(self, stream);
  return self;
}

void MTRpcOk_initWithInt_withByteArray_(MTRpcOk *self, jint responseType, IOSByteArray *payload) {
  (void) MTProtoStruct_init(self);
  self->responseType_ = responseType;
  self->payload_ = payload;
}

MTRpcOk *new_MTRpcOk_initWithInt_withByteArray_(jint responseType, IOSByteArray *payload) {
  MTRpcOk *self = [MTRpcOk alloc];
  MTRpcOk_initWithInt_withByteArray_(self, responseType, payload);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTRpcOk)
