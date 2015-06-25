//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/network/NetworkState.java
//

#ifndef _AMNetworkState_H_
#define _AMNetworkState_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, AMNetworkState) {
  AMNetworkState_UNKNOWN = 0,
  AMNetworkState_MOBILE = 1,
  AMNetworkState_WI_FI = 2,
  AMNetworkState_NO_CONNECTION = 3,
};

@interface AMNetworkStateEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *AMNetworkStateEnum_values();

+ (AMNetworkStateEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT AMNetworkStateEnum *AMNetworkStateEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(AMNetworkStateEnum)

FOUNDATION_EXPORT AMNetworkStateEnum *AMNetworkStateEnum_values_[];

#define AMNetworkStateEnum_UNKNOWN AMNetworkStateEnum_values_[AMNetworkState_UNKNOWN]
J2OBJC_ENUM_CONSTANT_GETTER(AMNetworkStateEnum, UNKNOWN)

#define AMNetworkStateEnum_MOBILE AMNetworkStateEnum_values_[AMNetworkState_MOBILE]
J2OBJC_ENUM_CONSTANT_GETTER(AMNetworkStateEnum, MOBILE)

#define AMNetworkStateEnum_WI_FI AMNetworkStateEnum_values_[AMNetworkState_WI_FI]
J2OBJC_ENUM_CONSTANT_GETTER(AMNetworkStateEnum, WI_FI)

#define AMNetworkStateEnum_NO_CONNECTION AMNetworkStateEnum_values_[AMNetworkState_NO_CONNECTION]
J2OBJC_ENUM_CONSTANT_GETTER(AMNetworkStateEnum, NO_CONNECTION)

J2OBJC_TYPE_LITERAL_HEADER(AMNetworkStateEnum)

typedef AMNetworkStateEnum ImActorModelNetworkNetworkStateEnum;

#endif // _AMNetworkState_H_
