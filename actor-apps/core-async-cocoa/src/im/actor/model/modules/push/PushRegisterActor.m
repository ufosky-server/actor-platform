//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/push/PushRegisterActor.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestRegisterApplePush.h"
#include "im/actor/model/api/rpc/RequestRegisterGooglePush.h"
#include "im/actor/model/api/rpc/ResponseVoid.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/engine/PreferencesStorage.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/push/PushRegisterActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/network/RpcCallback.h"
#include "im/actor/model/network/RpcException.h"

@interface ImActorModelModulesPushPushRegisterActor ()

- (void)registerGooglePushWithLong:(jlong)projectId
                      withNSString:(NSString *)token;

- (void)registerApplePushWithInt:(jint)apnsId
                    withNSString:(NSString *)token;

- (void)resendPush;

@end

__attribute__((unused)) static void ImActorModelModulesPushPushRegisterActor_registerGooglePushWithLong_withNSString_(ImActorModelModulesPushPushRegisterActor *self, jlong projectId, NSString *token);

__attribute__((unused)) static void ImActorModelModulesPushPushRegisterActor_registerApplePushWithInt_withNSString_(ImActorModelModulesPushPushRegisterActor *self, jint apnsId, NSString *token);

__attribute__((unused)) static void ImActorModelModulesPushPushRegisterActor_resendPush(ImActorModelModulesPushPushRegisterActor *self);

@interface ImActorModelModulesPushPushRegisterActor_RegisterGooglePush () {
 @public
  jlong projectId_;
  NSString *token_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPushPushRegisterActor_RegisterGooglePush, token_, NSString *)

@interface ImActorModelModulesPushPushRegisterActor_RegisterApplePush () {
 @public
  jint apnsKey_;
  NSString *token_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPushPushRegisterActor_RegisterApplePush, token_, NSString *)

@interface ImActorModelModulesPushPushRegisterActor_$1 : NSObject < AMRpcCallback > {
 @public
  ImActorModelModulesPushPushRegisterActor *this$0_;
}

- (void)onResult:(APResponseVoid *)response;

- (void)onError:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesPushPushRegisterActor:(ImActorModelModulesPushPushRegisterActor *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPushPushRegisterActor_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesPushPushRegisterActor_$1, this$0_, ImActorModelModulesPushPushRegisterActor *)

__attribute__((unused)) static void ImActorModelModulesPushPushRegisterActor_$1_initWithImActorModelModulesPushPushRegisterActor_(ImActorModelModulesPushPushRegisterActor_$1 *self, ImActorModelModulesPushPushRegisterActor *outer$);

__attribute__((unused)) static ImActorModelModulesPushPushRegisterActor_$1 *new_ImActorModelModulesPushPushRegisterActor_$1_initWithImActorModelModulesPushPushRegisterActor_(ImActorModelModulesPushPushRegisterActor *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPushPushRegisterActor_$1)

@interface ImActorModelModulesPushPushRegisterActor_$2 : NSObject < AMRpcCallback > {
 @public
  ImActorModelModulesPushPushRegisterActor *this$0_;
}

- (void)onResult:(APResponseVoid *)response;

- (void)onError:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesPushPushRegisterActor:(ImActorModelModulesPushPushRegisterActor *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPushPushRegisterActor_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesPushPushRegisterActor_$2, this$0_, ImActorModelModulesPushPushRegisterActor *)

__attribute__((unused)) static void ImActorModelModulesPushPushRegisterActor_$2_initWithImActorModelModulesPushPushRegisterActor_(ImActorModelModulesPushPushRegisterActor_$2 *self, ImActorModelModulesPushPushRegisterActor *outer$);

__attribute__((unused)) static ImActorModelModulesPushPushRegisterActor_$2 *new_ImActorModelModulesPushPushRegisterActor_$2_initWithImActorModelModulesPushPushRegisterActor_(ImActorModelModulesPushPushRegisterActor *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPushPushRegisterActor_$2)

@implementation ImActorModelModulesPushPushRegisterActor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesPushPushRegisterActor_initWithImActorModelModulesModules_(self, modules);
  return self;
}

- (void)preStart {
  if ([((id<DKPreferencesStorage>) nil_chk([self preferences])) getBoolWithKey:@"push.google" withDefault:NO]) {
    if (![((id<DKPreferencesStorage>) nil_chk([self preferences])) getBoolWithKey:@"push.google.registered" withDefault:NO]) {
      jlong projectId = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getLongWithKey:@"push.google.id" withDefault:0];
      NSString *token = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getStringWithKey:@"push.google.token"];
      ImActorModelModulesPushPushRegisterActor_registerGooglePushWithLong_withNSString_(self, projectId, token);
    }
  }
  if ([((id<DKPreferencesStorage>) nil_chk([self preferences])) getBoolWithKey:@"push.apple" withDefault:NO]) {
    if (![((id<DKPreferencesStorage>) nil_chk([self preferences])) getBoolWithKey:@"push.apple.registered" withDefault:NO]) {
      jint apnsId = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getIntWithKey:@"push.apple.id" withDefault:0];
      NSString *token = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getStringWithKey:@"push.apple.token"];
      ImActorModelModulesPushPushRegisterActor_registerApplePushWithInt_withNSString_(self, apnsId, token);
    }
  }
}

- (void)registerGooglePushWithLong:(jlong)projectId
                      withNSString:(NSString *)token {
  ImActorModelModulesPushPushRegisterActor_registerGooglePushWithLong_withNSString_(self, projectId, token);
}

- (void)registerApplePushWithInt:(jint)apnsId
                    withNSString:(NSString *)token {
  ImActorModelModulesPushPushRegisterActor_registerApplePushWithInt_withNSString_(self, apnsId, token);
}

- (void)resendPush {
  ImActorModelModulesPushPushRegisterActor_resendPush(self);
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesPushPushRegisterActor_RegisterGooglePush class]]) {
    ImActorModelModulesPushPushRegisterActor_RegisterGooglePush *registerGooglePush = (ImActorModelModulesPushPushRegisterActor_RegisterGooglePush *) check_class_cast(message, [ImActorModelModulesPushPushRegisterActor_RegisterGooglePush class]);
    ImActorModelModulesPushPushRegisterActor_registerGooglePushWithLong_withNSString_(self, [((ImActorModelModulesPushPushRegisterActor_RegisterGooglePush *) nil_chk(registerGooglePush)) getProjectId], [registerGooglePush getToken]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesPushPushRegisterActor_RegisterApplePush class]]) {
    ImActorModelModulesPushPushRegisterActor_RegisterApplePush *applePush = (ImActorModelModulesPushPushRegisterActor_RegisterApplePush *) check_class_cast(message, [ImActorModelModulesPushPushRegisterActor_RegisterApplePush class]);
    ImActorModelModulesPushPushRegisterActor_registerApplePushWithInt_withNSString_(self, [((ImActorModelModulesPushPushRegisterActor_RegisterApplePush *) nil_chk(applePush)) getApnsKey], [applePush getToken]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesPushPushRegisterActor_ResendPush class]]) {
    ImActorModelModulesPushPushRegisterActor_resendPush(self);
  }
  else {
    [self dropWithId:message];
  }
}

@end

void ImActorModelModulesPushPushRegisterActor_initWithImActorModelModulesModules_(ImActorModelModulesPushPushRegisterActor *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesUtilsModuleActor_initWithImActorModelModulesModules_(self, modules);
}

ImActorModelModulesPushPushRegisterActor *new_ImActorModelModulesPushPushRegisterActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesPushPushRegisterActor *self = [ImActorModelModulesPushPushRegisterActor alloc];
  ImActorModelModulesPushPushRegisterActor_initWithImActorModelModulesModules_(self, modules);
  return self;
}

void ImActorModelModulesPushPushRegisterActor_registerGooglePushWithLong_withNSString_(ImActorModelModulesPushPushRegisterActor *self, jlong projectId, NSString *token) {
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBoolWithKey:@"push.google" withValue:YES];
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBoolWithKey:@"push.google.registered" withValue:NO];
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putLongWithKey:@"push.google.id" withValue:projectId];
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putStringWithKey:@"push.google.token" withValue:token];
  [self requestWithAPRequest:new_APRequestRegisterGooglePush_initWithLong_withNSString_(projectId, token) withAMRpcCallback:new_ImActorModelModulesPushPushRegisterActor_$1_initWithImActorModelModulesPushPushRegisterActor_(self)];
}

void ImActorModelModulesPushPushRegisterActor_registerApplePushWithInt_withNSString_(ImActorModelModulesPushPushRegisterActor *self, jint apnsId, NSString *token) {
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBoolWithKey:@"push.apple" withValue:YES];
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBoolWithKey:@"push.apple.registered" withValue:NO];
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putIntWithKey:@"push.apple.id" withValue:apnsId];
  [((id<DKPreferencesStorage>) nil_chk([self preferences])) putStringWithKey:@"push.apple.token" withValue:token];
  [self requestWithAPRequest:new_APRequestRegisterApplePush_initWithInt_withNSString_(apnsId, token) withAMRpcCallback:new_ImActorModelModulesPushPushRegisterActor_$2_initWithImActorModelModulesPushPushRegisterActor_(self)];
}

void ImActorModelModulesPushPushRegisterActor_resendPush(ImActorModelModulesPushPushRegisterActor *self) {
  if ([((id<DKPreferencesStorage>) nil_chk([self preferences])) getBoolWithKey:@"push.google" withDefault:NO]) {
    [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBoolWithKey:@"push.google.registered" withValue:NO];
    jlong projectId = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getLongWithKey:@"push.google.id" withDefault:0];
    NSString *token = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getStringWithKey:@"push.google.token"];
    ImActorModelModulesPushPushRegisterActor_registerGooglePushWithLong_withNSString_(self, projectId, token);
  }
  if ([((id<DKPreferencesStorage>) nil_chk([self preferences])) getBoolWithKey:@"push.apple" withDefault:NO]) {
    [((id<DKPreferencesStorage>) nil_chk([self preferences])) putBoolWithKey:@"push.apple.registered" withValue:NO];
    jint apnsId = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getIntWithKey:@"push.apple.id" withDefault:0];
    NSString *token = [((id<DKPreferencesStorage>) nil_chk([self preferences])) getStringWithKey:@"push.apple.token"];
    ImActorModelModulesPushPushRegisterActor_registerApplePushWithInt_withNSString_(self, apnsId, token);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPushPushRegisterActor)

@implementation ImActorModelModulesPushPushRegisterActor_RegisterGooglePush

- (instancetype)initWithLong:(jlong)projectId
                withNSString:(NSString *)token {
  ImActorModelModulesPushPushRegisterActor_RegisterGooglePush_initWithLong_withNSString_(self, projectId, token);
  return self;
}

- (jlong)getProjectId {
  return projectId_;
}

- (NSString *)getToken {
  return token_;
}

@end

void ImActorModelModulesPushPushRegisterActor_RegisterGooglePush_initWithLong_withNSString_(ImActorModelModulesPushPushRegisterActor_RegisterGooglePush *self, jlong projectId, NSString *token) {
  (void) NSObject_init(self);
  self->projectId_ = projectId;
  self->token_ = token;
}

ImActorModelModulesPushPushRegisterActor_RegisterGooglePush *new_ImActorModelModulesPushPushRegisterActor_RegisterGooglePush_initWithLong_withNSString_(jlong projectId, NSString *token) {
  ImActorModelModulesPushPushRegisterActor_RegisterGooglePush *self = [ImActorModelModulesPushPushRegisterActor_RegisterGooglePush alloc];
  ImActorModelModulesPushPushRegisterActor_RegisterGooglePush_initWithLong_withNSString_(self, projectId, token);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPushPushRegisterActor_RegisterGooglePush)

@implementation ImActorModelModulesPushPushRegisterActor_RegisterApplePush

- (instancetype)initWithInt:(jint)apnsKey
               withNSString:(NSString *)token {
  ImActorModelModulesPushPushRegisterActor_RegisterApplePush_initWithInt_withNSString_(self, apnsKey, token);
  return self;
}

- (jint)getApnsKey {
  return apnsKey_;
}

- (NSString *)getToken {
  return token_;
}

@end

void ImActorModelModulesPushPushRegisterActor_RegisterApplePush_initWithInt_withNSString_(ImActorModelModulesPushPushRegisterActor_RegisterApplePush *self, jint apnsKey, NSString *token) {
  (void) NSObject_init(self);
  self->apnsKey_ = apnsKey;
  self->token_ = token;
}

ImActorModelModulesPushPushRegisterActor_RegisterApplePush *new_ImActorModelModulesPushPushRegisterActor_RegisterApplePush_initWithInt_withNSString_(jint apnsKey, NSString *token) {
  ImActorModelModulesPushPushRegisterActor_RegisterApplePush *self = [ImActorModelModulesPushPushRegisterActor_RegisterApplePush alloc];
  ImActorModelModulesPushPushRegisterActor_RegisterApplePush_initWithInt_withNSString_(self, apnsKey, token);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPushPushRegisterActor_RegisterApplePush)

@implementation ImActorModelModulesPushPushRegisterActor_ResendPush

- (instancetype)init {
  ImActorModelModulesPushPushRegisterActor_ResendPush_init(self);
  return self;
}

@end

void ImActorModelModulesPushPushRegisterActor_ResendPush_init(ImActorModelModulesPushPushRegisterActor_ResendPush *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesPushPushRegisterActor_ResendPush *new_ImActorModelModulesPushPushRegisterActor_ResendPush_init() {
  ImActorModelModulesPushPushRegisterActor_ResendPush *self = [ImActorModelModulesPushPushRegisterActor_ResendPush alloc];
  ImActorModelModulesPushPushRegisterActor_ResendPush_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPushPushRegisterActor_ResendPush)

@implementation ImActorModelModulesPushPushRegisterActor_$1

- (void)onResult:(APResponseVoid *)response {
  [((id<DKPreferencesStorage>) nil_chk([this$0_ preferences])) putBoolWithKey:@"push.google.registered" withValue:YES];
}

- (void)onError:(AMRpcException *)e {
}

- (instancetype)initWithImActorModelModulesPushPushRegisterActor:(ImActorModelModulesPushPushRegisterActor *)outer$ {
  ImActorModelModulesPushPushRegisterActor_$1_initWithImActorModelModulesPushPushRegisterActor_(self, outer$);
  return self;
}

@end

void ImActorModelModulesPushPushRegisterActor_$1_initWithImActorModelModulesPushPushRegisterActor_(ImActorModelModulesPushPushRegisterActor_$1 *self, ImActorModelModulesPushPushRegisterActor *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesPushPushRegisterActor_$1 *new_ImActorModelModulesPushPushRegisterActor_$1_initWithImActorModelModulesPushPushRegisterActor_(ImActorModelModulesPushPushRegisterActor *outer$) {
  ImActorModelModulesPushPushRegisterActor_$1 *self = [ImActorModelModulesPushPushRegisterActor_$1 alloc];
  ImActorModelModulesPushPushRegisterActor_$1_initWithImActorModelModulesPushPushRegisterActor_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPushPushRegisterActor_$1)

@implementation ImActorModelModulesPushPushRegisterActor_$2

- (void)onResult:(APResponseVoid *)response {
  [((id<DKPreferencesStorage>) nil_chk([this$0_ preferences])) putBoolWithKey:@"push.apple.registered" withValue:YES];
}

- (void)onError:(AMRpcException *)e {
}

- (instancetype)initWithImActorModelModulesPushPushRegisterActor:(ImActorModelModulesPushPushRegisterActor *)outer$ {
  ImActorModelModulesPushPushRegisterActor_$2_initWithImActorModelModulesPushPushRegisterActor_(self, outer$);
  return self;
}

@end

void ImActorModelModulesPushPushRegisterActor_$2_initWithImActorModelModulesPushPushRegisterActor_(ImActorModelModulesPushPushRegisterActor_$2 *self, ImActorModelModulesPushPushRegisterActor *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesPushPushRegisterActor_$2 *new_ImActorModelModulesPushPushRegisterActor_$2_initWithImActorModelModulesPushPushRegisterActor_(ImActorModelModulesPushPushRegisterActor *outer$) {
  ImActorModelModulesPushPushRegisterActor_$2 *self = [ImActorModelModulesPushPushRegisterActor_$2 alloc];
  ImActorModelModulesPushPushRegisterActor_$2_initWithImActorModelModulesPushPushRegisterActor_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPushPushRegisterActor_$2)
