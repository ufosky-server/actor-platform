//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/content/PhotoContent.java
//

#ifndef _AMPhotoContent_H_
#define _AMPhotoContent_H_

#include "J2ObjC_header.h"
#include "im/actor/model/entity/content/DocumentContent.h"

@class AMFastThumb;
@class AMFileReference;
@class ImActorModelEntityContentInternalContentLocalContainer;
@class ImActorModelEntityContentInternalContentRemoteContainer;

@interface AMPhotoContent : AMDocumentContent

#pragma mark Public

- (instancetype)initWithImActorModelEntityContentInternalContentLocalContainer:(ImActorModelEntityContentInternalContentLocalContainer *)contentLocalContainer;

- (instancetype)initWithImActorModelEntityContentInternalContentRemoteContainer:(ImActorModelEntityContentInternalContentRemoteContainer *)contentRemoteContainer;

+ (AMPhotoContent *)createLocalPhotoWithNSString:(NSString *)descriptor
                                    withNSString:(NSString *)fileName
                                         withInt:(jint)fileSize
                                         withInt:(jint)w
                                         withInt:(jint)h
                                 withAMFastThumb:(AMFastThumb *)fastThumb;

+ (AMPhotoContent *)createRemotePhotoWithAMFileReference:(AMFileReference *)reference
                                                 withInt:(jint)w
                                                 withInt:(jint)h
                                         withAMFastThumb:(AMFastThumb *)fastThumb;

- (jint)getH;

- (jint)getW;

@end

J2OBJC_EMPTY_STATIC_INIT(AMPhotoContent)

FOUNDATION_EXPORT AMPhotoContent *AMPhotoContent_createLocalPhotoWithNSString_withNSString_withInt_withInt_withInt_withAMFastThumb_(NSString *descriptor, NSString *fileName, jint fileSize, jint w, jint h, AMFastThumb *fastThumb);

FOUNDATION_EXPORT AMPhotoContent *AMPhotoContent_createRemotePhotoWithAMFileReference_withInt_withInt_withAMFastThumb_(AMFileReference *reference, jint w, jint h, AMFastThumb *fastThumb);

FOUNDATION_EXPORT void AMPhotoContent_initWithImActorModelEntityContentInternalContentLocalContainer_(AMPhotoContent *self, ImActorModelEntityContentInternalContentLocalContainer *contentLocalContainer);

FOUNDATION_EXPORT AMPhotoContent *new_AMPhotoContent_initWithImActorModelEntityContentInternalContentLocalContainer_(ImActorModelEntityContentInternalContentLocalContainer *contentLocalContainer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void AMPhotoContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(AMPhotoContent *self, ImActorModelEntityContentInternalContentRemoteContainer *contentRemoteContainer);

FOUNDATION_EXPORT AMPhotoContent *new_AMPhotoContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(ImActorModelEntityContentInternalContentRemoteContainer *contentRemoteContainer) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMPhotoContent)

typedef AMPhotoContent ImActorModelEntityContentPhotoContent;

#endif // _AMPhotoContent_H_
