//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/DocumentEx.java
//

#ifndef _APDocumentEx_H_
#define _APDocumentEx_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class IOSByteArray;

@interface APDocumentEx : BSBserObject

#pragma mark Public

- (instancetype)init;

- (IOSByteArray *)buildContainer;

+ (APDocumentEx *)fromBytesWithByteArray:(IOSByteArray *)src;

- (jint)getHeader;

@end

J2OBJC_EMPTY_STATIC_INIT(APDocumentEx)

FOUNDATION_EXPORT APDocumentEx *APDocumentEx_fromBytesWithByteArray_(IOSByteArray *src);

FOUNDATION_EXPORT void APDocumentEx_init(APDocumentEx *self);

J2OBJC_TYPE_LITERAL_HEADER(APDocumentEx)

typedef APDocumentEx ImActorModelApiDocumentEx;

#endif // _APDocumentEx_H_
