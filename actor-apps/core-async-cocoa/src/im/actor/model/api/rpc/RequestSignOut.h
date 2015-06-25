//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestSignOut.java
//

#ifndef _APRequestSignOut_H_
#define _APRequestSignOut_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestSignOut_HEADER 84

@interface APRequestSignOut : APRequest

#pragma mark Public

- (instancetype)init;

+ (APRequestSignOut *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestSignOut)

J2OBJC_STATIC_FIELD_GETTER(APRequestSignOut, HEADER, jint)

FOUNDATION_EXPORT APRequestSignOut *APRequestSignOut_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestSignOut_init(APRequestSignOut *self);

FOUNDATION_EXPORT APRequestSignOut *new_APRequestSignOut_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestSignOut)

typedef APRequestSignOut ImActorModelApiRpcRequestSignOut;

#endif // _APRequestSignOut_H_
