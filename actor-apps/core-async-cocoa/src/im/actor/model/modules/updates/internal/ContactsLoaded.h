//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/updates/internal/ContactsLoaded.java
//

#ifndef _ImActorModelModulesUpdatesInternalContactsLoaded_H_
#define _ImActorModelModulesUpdatesInternalContactsLoaded_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/updates/internal/InternalUpdate.h"

@class APResponseGetContacts;

@interface ImActorModelModulesUpdatesInternalContactsLoaded : ImActorModelModulesUpdatesInternalInternalUpdate

#pragma mark Public

- (instancetype)initWithAPResponseGetContacts:(APResponseGetContacts *)contacts;

- (APResponseGetContacts *)getContacts;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesInternalContactsLoaded)

FOUNDATION_EXPORT void ImActorModelModulesUpdatesInternalContactsLoaded_initWithAPResponseGetContacts_(ImActorModelModulesUpdatesInternalContactsLoaded *self, APResponseGetContacts *contacts);

FOUNDATION_EXPORT ImActorModelModulesUpdatesInternalContactsLoaded *new_ImActorModelModulesUpdatesInternalContactsLoaded_initWithAPResponseGetContacts_(APResponseGetContacts *contacts) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesInternalContactsLoaded)

#endif // _ImActorModelModulesUpdatesInternalContactsLoaded_H_
