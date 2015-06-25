//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestRemoveGroupAvatar.java
//

#ifndef _APRequestRemoveGroupAvatar_H_
#define _APRequestRemoveGroupAvatar_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class APGroupOutPeer;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestRemoveGroupAvatar_HEADER 101

@interface APRequestRemoveGroupAvatar : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPGroupOutPeer:(APGroupOutPeer *)groupPeer
                              withLong:(jlong)rid;

+ (APRequestRemoveGroupAvatar *)fromBytesWithByteArray:(IOSByteArray *)data;

- (APGroupOutPeer *)getGroupPeer;

- (jint)getHeaderKey;

- (jlong)getRid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestRemoveGroupAvatar)

J2OBJC_STATIC_FIELD_GETTER(APRequestRemoveGroupAvatar, HEADER, jint)

FOUNDATION_EXPORT APRequestRemoveGroupAvatar *APRequestRemoveGroupAvatar_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestRemoveGroupAvatar_initWithAPGroupOutPeer_withLong_(APRequestRemoveGroupAvatar *self, APGroupOutPeer *groupPeer, jlong rid);

FOUNDATION_EXPORT APRequestRemoveGroupAvatar *new_APRequestRemoveGroupAvatar_initWithAPGroupOutPeer_withLong_(APGroupOutPeer *groupPeer, jlong rid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestRemoveGroupAvatar_init(APRequestRemoveGroupAvatar *self);

FOUNDATION_EXPORT APRequestRemoveGroupAvatar *new_APRequestRemoveGroupAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestRemoveGroupAvatar)

typedef APRequestRemoveGroupAvatar ImActorModelApiRpcRequestRemoveGroupAvatar;

#endif // _APRequestRemoveGroupAvatar_H_
