//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/messages/OwnReadActor.java
//


#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/engine/SyncKeyValue.h"
#include "im/actor/model/entity/ContentDescription.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/modules/Messages.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/Notifications.h"
#include "im/actor/model/modules/messages/CursorReaderActor.h"
#include "im/actor/model/modules/messages/DialogsActor.h"
#include "im/actor/model/modules/messages/OwnReadActor.h"
#include "im/actor/model/modules/messages/entity/UnreadMessage.h"
#include "im/actor/model/modules/messages/entity/UnreadMessagesStorage.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Set.h"

@interface ImActorModelModulesMessagesOwnReadActor () {
 @public
  ImActorModelModulesMessagesEntityUnreadMessagesStorage *messagesStorage_;
  DKSyncKeyValue *syncKeyValue_;
}

- (void)saveStorage;

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesOwnReadActor, messagesStorage_, ImActorModelModulesMessagesEntityUnreadMessagesStorage *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesOwnReadActor, syncKeyValue_, DKSyncKeyValue *)

__attribute__((unused)) static void ImActorModelModulesMessagesOwnReadActor_saveStorage(ImActorModelModulesMessagesOwnReadActor *self);

@implementation ImActorModelModulesMessagesOwnReadActor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  ImActorModelModulesMessagesOwnReadActor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

- (void)preStart {
  [super preStart];
  messagesStorage_ = new_ImActorModelModulesMessagesEntityUnreadMessagesStorage_init();
  IOSByteArray *st = [((DKSyncKeyValue *) nil_chk(syncKeyValue_)) getWithLong:ImActorModelModulesUtilsModuleActor_CURSOR_OWN_READ];
  if (st != nil) {
    @try {
      messagesStorage_ = ImActorModelModulesMessagesEntityUnreadMessagesStorage_fromBytesWithByteArray_(st);
    }
    @catch (JavaIoIOException *e) {
      [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    }
  }
}

- (void)onNewInMessageWithAMPeer:(AMPeer *)peer
                        withLong:(jlong)rid
                        withLong:(jlong)sortingDate
                         withInt:(jint)senderUid
        withAMContentDescription:(AMContentDescription *)contentDescription
                     withBoolean:(jboolean)hasCurrentUserMention {
  jlong readState = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) loadReadStateWithAMPeer:peer];
  if (sortingDate <= readState) {
    return;
  }
  if (contentDescription != nil) {
    [((ImActorModelModulesNotifications *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getNotifications])) onInMessageWithAMPeer:peer withInt:senderUid withLong:sortingDate withAMContentDescription:contentDescription withBoolean:hasCurrentUserMention withBoolean:NO withBoolean:NO];
  }
  JavaUtilHashSet *unread = [((ImActorModelModulesMessagesEntityUnreadMessagesStorage *) nil_chk(messagesStorage_)) getUnreadWithAMPeer:peer];
  [((JavaUtilHashSet *) nil_chk(unread)) addWithId:new_ImActorModelModulesMessagesEntityUnreadMessage_initWithAMPeer_withLong_withLong_(peer, rid, sortingDate)];
  ImActorModelModulesMessagesOwnReadActor_saveStorage(self);
  [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor])) sendWithId:new_ImActorModelModulesMessagesDialogsActor_CounterChanged_initWithAMPeer_withInt_(peer, [unread size])];
}

- (void)onMessageReadWithAMPeer:(AMPeer *)peer
                       withLong:(jlong)sortingDate {
  jlong readState = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) loadReadStateWithAMPeer:peer];
  if (sortingDate <= readState) {
    return;
  }
  JavaUtilHashSet *unread = [((ImActorModelModulesMessagesEntityUnreadMessagesStorage *) nil_chk(messagesStorage_)) getUnreadWithAMPeer:peer];
  jlong maxPlainReadDate = sortingDate;
  jboolean removed = NO;
  {
    IOSObjectArray *a__ = [unread toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[((JavaUtilHashSet *) nil_chk(unread)) size] type:ImActorModelModulesMessagesEntityUnreadMessage_class_()]];
    ImActorModelModulesMessagesEntityUnreadMessage * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    ImActorModelModulesMessagesEntityUnreadMessage * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      ImActorModelModulesMessagesEntityUnreadMessage *u = *b__++;
      if ([((ImActorModelModulesMessagesEntityUnreadMessage *) nil_chk(u)) getSortDate] <= sortingDate) {
        maxPlainReadDate = JavaLangMath_maxWithLong_withLong_([u getSortDate], maxPlainReadDate);
        removed = YES;
        [unread removeWithId:u];
      }
    }
  }
  if (removed) {
    ImActorModelModulesMessagesOwnReadActor_saveStorage(self);
  }
  if (maxPlainReadDate > 0) {
    [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getPlainReadActor])) sendWithId:new_ImActorModelModulesMessagesCursorReaderActor_MarkRead_initWithAMPeer_withLong_(peer, maxPlainReadDate)];
  }
  [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) saveReadStateWithAMPeer:peer withLong:sortingDate];
  [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor])) sendWithId:new_ImActorModelModulesMessagesDialogsActor_CounterChanged_initWithAMPeer_withInt_(peer, [unread size])];
  [((ImActorModelModulesNotifications *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getNotifications])) onOwnReadWithAMPeer:peer withLong:sortingDate];
}

- (void)onMessageReadByMeWithAMPeer:(AMPeer *)peer
                           withLong:(jlong)sortingDate {
  jlong msgSortingDate = 0;
  id<JavaUtilSet> unread = [((ImActorModelModulesMessagesEntityUnreadMessagesStorage *) nil_chk(messagesStorage_)) getUnreadWithAMPeer:peer];
  {
    IOSObjectArray *a__ = [unread toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[((id<JavaUtilSet>) nil_chk(unread)) size] type:ImActorModelModulesMessagesEntityUnreadMessage_class_()]];
    ImActorModelModulesMessagesEntityUnreadMessage * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    ImActorModelModulesMessagesEntityUnreadMessage * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      ImActorModelModulesMessagesEntityUnreadMessage *u = *b__++;
      if ([((ImActorModelModulesMessagesEntityUnreadMessage *) nil_chk(u)) getSortDate] <= sortingDate && [u getSortDate] > msgSortingDate) {
        msgSortingDate = [u getSortDate];
      }
    }
  }
  if (msgSortingDate > 0) {
    [self onMessageReadWithAMPeer:peer withLong:msgSortingDate];
  }
}

- (void)onMessageDeleteWithAMPeer:(AMPeer *)peer
                 withJavaUtilList:(id<JavaUtilList>)rids {
  id<JavaUtilSet> unread = [((ImActorModelModulesMessagesEntityUnreadMessagesStorage *) nil_chk(messagesStorage_)) getUnreadWithAMPeer:peer];
  jboolean isRemoved = NO;
  {
    IOSObjectArray *a__ = [unread toArrayWithNSObjectArray:[IOSObjectArray newArrayWithLength:[((id<JavaUtilSet>) nil_chk(unread)) size] type:ImActorModelModulesMessagesEntityUnreadMessage_class_()]];
    ImActorModelModulesMessagesEntityUnreadMessage * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    ImActorModelModulesMessagesEntityUnreadMessage * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      ImActorModelModulesMessagesEntityUnreadMessage *u = *b__++;
      if ([((id<JavaUtilList>) nil_chk(rids)) containsWithId:JavaLangLong_valueOfWithLong_([((ImActorModelModulesMessagesEntityUnreadMessage *) nil_chk(u)) getRid])]) {
        [unread removeWithId:u];
        isRemoved = YES;
      }
    }
  }
  if (!isRemoved) {
    return;
  }
  ImActorModelModulesMessagesOwnReadActor_saveStorage(self);
  [((DKActorRef *) nil_chk([((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getMessagesModule])) getDialogsActor])) sendWithId:new_ImActorModelModulesMessagesDialogsActor_CounterChanged_initWithAMPeer_withInt_(peer, [unread size])];
}

- (void)saveStorage {
  ImActorModelModulesMessagesOwnReadActor_saveStorage(self);
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesMessagesOwnReadActor_NewMessage class]]) {
    ImActorModelModulesMessagesOwnReadActor_NewMessage *newMessage = (ImActorModelModulesMessagesOwnReadActor_NewMessage *) check_class_cast(message, [ImActorModelModulesMessagesOwnReadActor_NewMessage class]);
    [self onNewInMessageWithAMPeer:[((ImActorModelModulesMessagesOwnReadActor_NewMessage *) nil_chk(newMessage)) getPeer] withLong:[newMessage getRid] withLong:[newMessage getSortingDate] withInt:[newMessage getSenderUId] withAMContentDescription:[newMessage getContentDescription] withBoolean:[newMessage getHasCurrentUserMention]];
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesOwnReadActor_MessageRead class]]) {
    ImActorModelModulesMessagesOwnReadActor_MessageRead *messageRead = (ImActorModelModulesMessagesOwnReadActor_MessageRead *) check_class_cast(message, [ImActorModelModulesMessagesOwnReadActor_MessageRead class]);
    [self onMessageReadWithAMPeer:[((ImActorModelModulesMessagesOwnReadActor_MessageRead *) nil_chk(messageRead)) getPeer] withLong:[messageRead getSortingDate]];
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesOwnReadActor_MessageReadByMe class]]) {
    ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *readByMe = (ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *) check_class_cast(message, [ImActorModelModulesMessagesOwnReadActor_MessageReadByMe class]);
    [self onMessageReadByMeWithAMPeer:[((ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *) nil_chk(readByMe)) getPeer] withLong:[readByMe getSortDate]];
  }
  else if ([message isKindOfClass:[ImActorModelModulesMessagesOwnReadActor_MessageDeleted class]]) {
    ImActorModelModulesMessagesOwnReadActor_MessageDeleted *deleted = (ImActorModelModulesMessagesOwnReadActor_MessageDeleted *) check_class_cast(message, [ImActorModelModulesMessagesOwnReadActor_MessageDeleted class]);
    [self onMessageDeleteWithAMPeer:[((ImActorModelModulesMessagesOwnReadActor_MessageDeleted *) nil_chk(deleted)) getPeer] withJavaUtilList:[deleted getRids]];
  }
  else {
    [self dropWithId:message];
  }
}

@end

void ImActorModelModulesMessagesOwnReadActor_initWithImActorModelModulesModules_(ImActorModelModulesMessagesOwnReadActor *self, ImActorModelModulesModules *messenger) {
  (void) ImActorModelModulesUtilsModuleActor_initWithImActorModelModulesModules_(self, messenger);
  self->syncKeyValue_ = [((ImActorModelModulesMessages *) nil_chk([((ImActorModelModulesModules *) nil_chk(messenger)) getMessagesModule])) getCursorStorage];
}

ImActorModelModulesMessagesOwnReadActor *new_ImActorModelModulesMessagesOwnReadActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) {
  ImActorModelModulesMessagesOwnReadActor *self = [ImActorModelModulesMessagesOwnReadActor alloc];
  ImActorModelModulesMessagesOwnReadActor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

void ImActorModelModulesMessagesOwnReadActor_saveStorage(ImActorModelModulesMessagesOwnReadActor *self) {
  [((DKSyncKeyValue *) nil_chk(self->syncKeyValue_)) putWithLong:ImActorModelModulesUtilsModuleActor_CURSOR_OWN_READ withByteArray:[((ImActorModelModulesMessagesEntityUnreadMessagesStorage *) nil_chk(self->messagesStorage_)) toByteArray]];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesOwnReadActor)

@implementation ImActorModelModulesMessagesOwnReadActor_MessageReadByMe

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)sortDate {
  ImActorModelModulesMessagesOwnReadActor_MessageReadByMe_initWithAMPeer_withLong_(self, peer, sortDate);
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (jlong)getSortDate {
  return sortDate_;
}

@end

void ImActorModelModulesMessagesOwnReadActor_MessageReadByMe_initWithAMPeer_withLong_(ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *self, AMPeer *peer, jlong sortDate) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->sortDate_ = sortDate;
}

ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *new_ImActorModelModulesMessagesOwnReadActor_MessageReadByMe_initWithAMPeer_withLong_(AMPeer *peer, jlong sortDate) {
  ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *self = [ImActorModelModulesMessagesOwnReadActor_MessageReadByMe alloc];
  ImActorModelModulesMessagesOwnReadActor_MessageReadByMe_initWithAMPeer_withLong_(self, peer, sortDate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesOwnReadActor_MessageReadByMe)

@implementation ImActorModelModulesMessagesOwnReadActor_MessageRead

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)sortingDate {
  ImActorModelModulesMessagesOwnReadActor_MessageRead_initWithAMPeer_withLong_(self, peer, sortingDate);
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (jlong)getSortingDate {
  return sortingDate_;
}

@end

void ImActorModelModulesMessagesOwnReadActor_MessageRead_initWithAMPeer_withLong_(ImActorModelModulesMessagesOwnReadActor_MessageRead *self, AMPeer *peer, jlong sortingDate) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->sortingDate_ = sortingDate;
}

ImActorModelModulesMessagesOwnReadActor_MessageRead *new_ImActorModelModulesMessagesOwnReadActor_MessageRead_initWithAMPeer_withLong_(AMPeer *peer, jlong sortingDate) {
  ImActorModelModulesMessagesOwnReadActor_MessageRead *self = [ImActorModelModulesMessagesOwnReadActor_MessageRead alloc];
  ImActorModelModulesMessagesOwnReadActor_MessageRead_initWithAMPeer_withLong_(self, peer, sortingDate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesOwnReadActor_MessageRead)

@implementation ImActorModelModulesMessagesOwnReadActor_NewMessage

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)rid
                      withLong:(jlong)sortingDate {
  ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_(self, peer, rid, sortingDate);
  return self;
}

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)rid
                      withLong:(jlong)sortingDate
                       withInt:(jint)senderUId
      withAMContentDescription:(AMContentDescription *)contentDescription
                   withBoolean:(jboolean)hasCurrentUserMention {
  ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_withInt_withAMContentDescription_withBoolean_(self, peer, rid, sortingDate, senderUId, contentDescription, hasCurrentUserMention);
  return self;
}

- (jint)getSenderUId {
  return senderUId_;
}

- (AMContentDescription *)getContentDescription {
  return contentDescription_;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (jlong)getRid {
  return rid_;
}

- (jlong)getSortingDate {
  return sortingDate_;
}

- (jboolean)getHasCurrentUserMention {
  return hasCurrentUserMention_;
}

@end

void ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_(ImActorModelModulesMessagesOwnReadActor_NewMessage *self, AMPeer *peer, jlong rid, jlong sortingDate) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->rid_ = rid;
  self->sortingDate_ = sortingDate;
}

ImActorModelModulesMessagesOwnReadActor_NewMessage *new_ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_(AMPeer *peer, jlong rid, jlong sortingDate) {
  ImActorModelModulesMessagesOwnReadActor_NewMessage *self = [ImActorModelModulesMessagesOwnReadActor_NewMessage alloc];
  ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_(self, peer, rid, sortingDate);
  return self;
}

void ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_withInt_withAMContentDescription_withBoolean_(ImActorModelModulesMessagesOwnReadActor_NewMessage *self, AMPeer *peer, jlong rid, jlong sortingDate, jint senderUId, AMContentDescription *contentDescription, jboolean hasCurrentUserMention) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->rid_ = rid;
  self->sortingDate_ = sortingDate;
  self->senderUId_ = senderUId;
  self->contentDescription_ = contentDescription;
  self->hasCurrentUserMention_ = hasCurrentUserMention;
}

ImActorModelModulesMessagesOwnReadActor_NewMessage *new_ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_withInt_withAMContentDescription_withBoolean_(AMPeer *peer, jlong rid, jlong sortingDate, jint senderUId, AMContentDescription *contentDescription, jboolean hasCurrentUserMention) {
  ImActorModelModulesMessagesOwnReadActor_NewMessage *self = [ImActorModelModulesMessagesOwnReadActor_NewMessage alloc];
  ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_withInt_withAMContentDescription_withBoolean_(self, peer, rid, sortingDate, senderUId, contentDescription, hasCurrentUserMention);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesOwnReadActor_NewMessage)

@implementation ImActorModelModulesMessagesOwnReadActor_MessageDeleted

- (instancetype)initWithAMPeer:(AMPeer *)peer
              withJavaUtilList:(id<JavaUtilList>)rids {
  ImActorModelModulesMessagesOwnReadActor_MessageDeleted_initWithAMPeer_withJavaUtilList_(self, peer, rids);
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (id<JavaUtilList>)getRids {
  return rids_;
}

@end

void ImActorModelModulesMessagesOwnReadActor_MessageDeleted_initWithAMPeer_withJavaUtilList_(ImActorModelModulesMessagesOwnReadActor_MessageDeleted *self, AMPeer *peer, id<JavaUtilList> rids) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->rids_ = rids;
}

ImActorModelModulesMessagesOwnReadActor_MessageDeleted *new_ImActorModelModulesMessagesOwnReadActor_MessageDeleted_initWithAMPeer_withJavaUtilList_(AMPeer *peer, id<JavaUtilList> rids) {
  ImActorModelModulesMessagesOwnReadActor_MessageDeleted *self = [ImActorModelModulesMessagesOwnReadActor_MessageDeleted alloc];
  ImActorModelModulesMessagesOwnReadActor_MessageDeleted_initWithAMPeer_withJavaUtilList_(self, peer, rids);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesOwnReadActor_MessageDeleted)
