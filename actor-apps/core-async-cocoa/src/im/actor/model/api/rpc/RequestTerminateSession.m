//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestTerminateSession.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestTerminateSession.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestTerminateSession () {
 @public
  jint id__;
}

@end

@implementation APRequestTerminateSession

+ (APRequestTerminateSession *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestTerminateSession_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)id_ {
  APRequestTerminateSession_initWithInt_(self, id_);
  return self;
}

- (instancetype)init {
  APRequestTerminateSession_init(self);
  return self;
}

- (jint)getId {
  return self->id__;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->id__ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
}

- (NSString *)description {
  NSString *res = @"rpc TerminateSession{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"id=", self->id__));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestTerminateSession_HEADER;
}

@end

APRequestTerminateSession *APRequestTerminateSession_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestTerminateSession_initialize();
  return ((APRequestTerminateSession *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestTerminateSession_init(), data));
}

void APRequestTerminateSession_initWithInt_(APRequestTerminateSession *self, jint id_) {
  (void) APRequest_init(self);
  self->id__ = id_;
}

APRequestTerminateSession *new_APRequestTerminateSession_initWithInt_(jint id_) {
  APRequestTerminateSession *self = [APRequestTerminateSession alloc];
  APRequestTerminateSession_initWithInt_(self, id_);
  return self;
}

void APRequestTerminateSession_init(APRequestTerminateSession *self) {
  (void) APRequest_init(self);
}

APRequestTerminateSession *new_APRequestTerminateSession_init() {
  APRequestTerminateSession *self = [APRequestTerminateSession alloc];
  APRequestTerminateSession_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestTerminateSession)
