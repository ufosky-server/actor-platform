//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseImportContacts.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/User.h"
#include "im/actor/model/api/rpc/ResponseImportContacts.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface APResponseImportContacts () {
 @public
  id<JavaUtilList> users_;
  jint seq_;
  IOSByteArray *state_;
}

@end

J2OBJC_FIELD_SETTER(APResponseImportContacts, users_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(APResponseImportContacts, state_, IOSByteArray *)

@implementation APResponseImportContacts

+ (APResponseImportContacts *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APResponseImportContacts_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)users
                             withInt:(jint)seq
                       withByteArray:(IOSByteArray *)state {
  APResponseImportContacts_initWithJavaUtilList_withInt_withByteArray_(self, users, seq, state);
  return self;
}

- (instancetype)init {
  APResponseImportContacts_init(self);
  return self;
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (jint)getSeq {
  return self->seq_;
}

- (IOSByteArray *)getState {
  return self->state_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  id<JavaUtilList> _users = new_JavaUtilArrayList_init();
  for (jint i = 0; i < [((BSBserValues *) nil_chk(values)) getRepeatedCountWithInt:1]; i++) {
    [_users addWithId:new_APUser_init()];
  }
  self->users_ = [values getRepeatedObjWithInt:1 withJavaUtilList:_users];
  self->seq_ = [values getIntWithInt:2];
  self->state_ = [values getBytesWithInt:3];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeRepeatedObjWithInt:1 withJavaUtilList:self->users_];
  [writer writeIntWithInt:2 withInt:self->seq_];
  if (self->state_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:3 withByteArray:self->state_];
}

- (NSString *)description {
  NSString *res = @"tuple ImportContacts{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APResponseImportContacts_HEADER;
}

@end

APResponseImportContacts *APResponseImportContacts_fromBytesWithByteArray_(IOSByteArray *data) {
  APResponseImportContacts_initialize();
  return ((APResponseImportContacts *) BSBser_parseWithBSBserObject_withByteArray_(new_APResponseImportContacts_init(), data));
}

void APResponseImportContacts_initWithJavaUtilList_withInt_withByteArray_(APResponseImportContacts *self, id<JavaUtilList> users, jint seq, IOSByteArray *state) {
  (void) APResponse_init(self);
  self->users_ = users;
  self->seq_ = seq;
  self->state_ = state;
}

APResponseImportContacts *new_APResponseImportContacts_initWithJavaUtilList_withInt_withByteArray_(id<JavaUtilList> users, jint seq, IOSByteArray *state) {
  APResponseImportContacts *self = [APResponseImportContacts alloc];
  APResponseImportContacts_initWithJavaUtilList_withInt_withByteArray_(self, users, seq, state);
  return self;
}

void APResponseImportContacts_init(APResponseImportContacts *self) {
  (void) APResponse_init(self);
}

APResponseImportContacts *new_APResponseImportContacts_init() {
  APResponseImportContacts *self = [APResponseImportContacts alloc];
  APResponseImportContacts_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APResponseImportContacts)
