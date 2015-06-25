//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/utils/PreferenceApiStorage.java
//

#ifndef _ImActorModelModulesUtilsPreferenceApiStorage_H_
#define _ImActorModelModulesUtilsPreferenceApiStorage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/AuthKeyStorage.h"

@protocol DKPreferencesStorage;

@interface ImActorModelModulesUtilsPreferenceApiStorage : NSObject < AMAuthKeyStorage >

#pragma mark Public

- (instancetype)initWithDKPreferencesStorage:(id<DKPreferencesStorage>)preferencesStorage;

- (jlong)getAuthKey;

- (void)saveAuthKey:(jlong)key;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUtilsPreferenceApiStorage)

FOUNDATION_EXPORT void ImActorModelModulesUtilsPreferenceApiStorage_initWithDKPreferencesStorage_(ImActorModelModulesUtilsPreferenceApiStorage *self, id<DKPreferencesStorage> preferencesStorage);

FOUNDATION_EXPORT ImActorModelModulesUtilsPreferenceApiStorage *new_ImActorModelModulesUtilsPreferenceApiStorage_initWithDKPreferencesStorage_(id<DKPreferencesStorage> preferencesStorage) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUtilsPreferenceApiStorage)

#endif // _ImActorModelModulesUtilsPreferenceApiStorage_H_
