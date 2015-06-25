//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/WrapperEntity.java
//

#ifndef _AMWrapperEntity_H_
#define _AMWrapperEntity_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface AMWrapperEntity : BSBserObject

#pragma mark Public

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (id)toWrapped;

#pragma mark Protected

- (instancetype)initWithInt:(jint)recordField
              withByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)recordField
           withBSBserObject:(BSBserObject *)wrapped;

- (void)applyWrappedWithBSBserObject:(BSBserObject *)wrapped;

- (id)createInstance;

- (id)getWrapped;

- (void)setWrappedWithBSBserObject:(BSBserObject *)wrapped;

@end

J2OBJC_EMPTY_STATIC_INIT(AMWrapperEntity)

FOUNDATION_EXPORT void AMWrapperEntity_initWithInt_withByteArray_(AMWrapperEntity *self, jint recordField, IOSByteArray *data);

FOUNDATION_EXPORT void AMWrapperEntity_initWithInt_withBSBserObject_(AMWrapperEntity *self, jint recordField, BSBserObject *wrapped);

J2OBJC_TYPE_LITERAL_HEADER(AMWrapperEntity)

typedef AMWrapperEntity ImActorModelEntityWrapperEntity;

#endif // _AMWrapperEntity_H_
