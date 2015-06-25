//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestLoadDialogs.java
//

#ifndef _APRequestLoadDialogs_H_
#define _APRequestLoadDialogs_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestLoadDialogs_HEADER 104

@interface APRequestLoadDialogs : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)minDate
                     withInt:(jint)limit;

+ (APRequestLoadDialogs *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getLimit;

- (jlong)getMinDate;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestLoadDialogs)

J2OBJC_STATIC_FIELD_GETTER(APRequestLoadDialogs, HEADER, jint)

FOUNDATION_EXPORT APRequestLoadDialogs *APRequestLoadDialogs_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestLoadDialogs_initWithLong_withInt_(APRequestLoadDialogs *self, jlong minDate, jint limit);

FOUNDATION_EXPORT APRequestLoadDialogs *new_APRequestLoadDialogs_initWithLong_withInt_(jlong minDate, jint limit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestLoadDialogs_init(APRequestLoadDialogs *self);

FOUNDATION_EXPORT APRequestLoadDialogs *new_APRequestLoadDialogs_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestLoadDialogs)

typedef APRequestLoadDialogs ImActorModelApiRpcRequestLoadDialogs;

#endif // _APRequestLoadDialogs_H_
