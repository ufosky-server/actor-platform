//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/messages/entity/OutUnreadMessage.java
//

#ifndef _ImActorModelModulesMessagesEntityOutUnreadMessage_H_
#define _ImActorModelModulesMessagesEntityOutUnreadMessage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;

@interface ImActorModelModulesMessagesEntityOutUnreadMessage : BSBserObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)rid
                    withLong:(jlong)date;

- (jlong)getDate;

- (jlong)getRid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesEntityOutUnreadMessage)

FOUNDATION_EXPORT void ImActorModelModulesMessagesEntityOutUnreadMessage_initWithLong_withLong_(ImActorModelModulesMessagesEntityOutUnreadMessage *self, jlong rid, jlong date);

FOUNDATION_EXPORT ImActorModelModulesMessagesEntityOutUnreadMessage *new_ImActorModelModulesMessagesEntityOutUnreadMessage_initWithLong_withLong_(jlong rid, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelModulesMessagesEntityOutUnreadMessage_init(ImActorModelModulesMessagesEntityOutUnreadMessage *self);

FOUNDATION_EXPORT ImActorModelModulesMessagesEntityOutUnreadMessage *new_ImActorModelModulesMessagesEntityOutUnreadMessage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesEntityOutUnreadMessage)

#endif // _ImActorModelModulesMessagesEntityOutUnreadMessage_H_
