//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateGroupInvite.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateGroupInvite.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface APUpdateGroupInvite () {
 @public
  jint groupId_;
  jlong rid_;
  jint inviteUid_;
  jlong date_;
}

@end

@implementation APUpdateGroupInvite

+ (APUpdateGroupInvite *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateGroupInvite_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)inviteUid
                   withLong:(jlong)date {
  APUpdateGroupInvite_initWithInt_withLong_withInt_withLong_(self, groupId, rid, inviteUid, date);
  return self;
}

- (instancetype)init {
  APUpdateGroupInvite_init(self);
  return self;
}

- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jint)getInviteUid {
  return self->inviteUid_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:9];
  self->inviteUid_ = [values getIntWithInt:5];
  self->date_ = [values getLongWithInt:8];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:9 withLong:self->rid_];
  [writer writeIntWithInt:5 withInt:self->inviteUid_];
  [writer writeLongWithInt:8 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"update GroupInvite{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", inviteUid=", self->inviteUid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateGroupInvite_HEADER;
}

@end

APUpdateGroupInvite *APUpdateGroupInvite_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateGroupInvite_initialize();
  return ((APUpdateGroupInvite *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateGroupInvite_init(), data));
}

void APUpdateGroupInvite_initWithInt_withLong_withInt_withLong_(APUpdateGroupInvite *self, jint groupId, jlong rid, jint inviteUid, jlong date) {
  (void) APUpdate_init(self);
  self->groupId_ = groupId;
  self->rid_ = rid;
  self->inviteUid_ = inviteUid;
  self->date_ = date;
}

APUpdateGroupInvite *new_APUpdateGroupInvite_initWithInt_withLong_withInt_withLong_(jint groupId, jlong rid, jint inviteUid, jlong date) {
  APUpdateGroupInvite *self = [APUpdateGroupInvite alloc];
  APUpdateGroupInvite_initWithInt_withLong_withInt_withLong_(self, groupId, rid, inviteUid, date);
  return self;
}

void APUpdateGroupInvite_init(APUpdateGroupInvite *self) {
  (void) APUpdate_init(self);
}

APUpdateGroupInvite *new_APUpdateGroupInvite_init() {
  APUpdateGroupInvite *self = [APUpdateGroupInvite alloc];
  APUpdateGroupInvite_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateGroupInvite)
