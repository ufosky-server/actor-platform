//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/entity/content/DocumentContent.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/DocumentMessage.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/api/FileLocation.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/entity/FileReference.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/DocumentContent.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "im/actor/model/entity/content/FileLocalSource.h"
#include "im/actor/model/entity/content/FileRemoteSource.h"
#include "im/actor/model/entity/content/FileSource.h"
#include "im/actor/model/entity/content/internal/AbsLocalContent.h"
#include "im/actor/model/entity/content/internal/ContentLocalContainer.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"
#include "im/actor/model/entity/content/internal/LocalDocument.h"
#include "im/actor/model/entity/content/internal/LocalFastThumb.h"

@implementation AMDocumentContent

+ (AMDocumentContent *)createLocalWithNSString:(NSString *)fileName
                                       withInt:(jint)fileSize
                                  withNSString:(NSString *)descriptor
                                  withNSString:(NSString *)mimeType
                               withAMFastThumb:(AMFastThumb *)fastThumb {
  return AMDocumentContent_createLocalWithNSString_withInt_withNSString_withNSString_withAMFastThumb_(fileName, fileSize, descriptor, mimeType, fastThumb);
}

+ (AMDocumentContent *)createRemoteDocumentWithAMFileReference:(AMFileReference *)reference
                                               withAMFastThumb:(AMFastThumb *)fastThumb {
  return AMDocumentContent_createRemoteDocumentWithAMFileReference_withAMFastThumb_(reference, fastThumb);
}

- (instancetype)initWithImActorModelEntityContentInternalContentRemoteContainer:(ImActorModelEntityContentInternalContentRemoteContainer *)contentContainer {
  AMDocumentContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  return self;
}

- (instancetype)initWithImActorModelEntityContentInternalContentLocalContainer:(ImActorModelEntityContentInternalContentLocalContainer *)contentContainer {
  AMDocumentContent_initWithImActorModelEntityContentInternalContentLocalContainer_(self, contentContainer);
  return self;
}

- (AMFileSource *)getSource {
  return source_;
}

- (NSString *)getName {
  return name_;
}

- (AMFastThumb *)getFastThumb {
  return fastThumb_;
}

- (NSString *)getExt {
  NSString *ext = @"";
  jint dotIndex = [((NSString *) nil_chk(name_)) lastIndexOf:'.'];
  if (dotIndex >= 0) {
    ext = [name_ substring:dotIndex + 1];
  }
  return ext;
}

- (NSString *)getMimeType {
  return mimeType_;
}

@end

AMDocumentContent *AMDocumentContent_createLocalWithNSString_withInt_withNSString_withNSString_withAMFastThumb_(NSString *fileName, jint fileSize, NSString *descriptor, NSString *mimeType, AMFastThumb *fastThumb) {
  AMDocumentContent_initialize();
  return new_AMDocumentContent_initWithImActorModelEntityContentInternalContentLocalContainer_(new_ImActorModelEntityContentInternalContentLocalContainer_initWithImActorModelEntityContentInternalAbsLocalContent_(new_ImActorModelEntityContentInternalLocalDocument_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_(fileName, descriptor, fileSize, mimeType, fastThumb != nil ? new_ImActorModelEntityContentInternalLocalFastThumb_initWithAMFastThumb_(fastThumb) : nil)));
}

AMDocumentContent *AMDocumentContent_createRemoteDocumentWithAMFileReference_withAMFastThumb_(AMFileReference *reference, AMFastThumb *fastThumb) {
  AMDocumentContent_initialize();
  return new_AMDocumentContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(new_APDocumentMessage_initWithLong_withLong_withInt_withNSString_withNSString_withAPFastThumb_withAPDocumentEx_([((AMFileReference *) nil_chk(reference)) getFileId], [reference getAccessHash], [reference getFileSize], [reference getFileName], @"image/jpeg", fastThumb != nil ? new_APFastThumb_initWithInt_withInt_withByteArray_([fastThumb getW], [fastThumb getH], [fastThumb getImage]) : nil, nil)));
}

void AMDocumentContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(AMDocumentContent *self, ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) {
  (void) AMAbsContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  APDocumentMessage *doc = ((APDocumentMessage *) check_class_cast([((ImActorModelEntityContentInternalContentRemoteContainer *) nil_chk(contentContainer)) getMessage], [APDocumentMessage class]));
  self->source_ = new_AMFileRemoteSource_initWithAMFileReference_(new_AMFileReference_initWithAPFileLocation_withNSString_withInt_(new_APFileLocation_initWithLong_withLong_([((APDocumentMessage *) nil_chk(doc)) getFileId], [doc getAccessHash]), [doc getName], [doc getFileSize]));
  self->mimeType_ = [doc getMimeType];
  self->name_ = [doc getName];
  self->fastThumb_ = [doc getThumb] != nil ? new_AMFastThumb_initWithAPFastThumb_([doc getThumb]) : nil;
}

AMDocumentContent *new_AMDocumentContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(ImActorModelEntityContentInternalContentRemoteContainer *contentContainer) {
  AMDocumentContent *self = [AMDocumentContent alloc];
  AMDocumentContent_initWithImActorModelEntityContentInternalContentRemoteContainer_(self, contentContainer);
  return self;
}

void AMDocumentContent_initWithImActorModelEntityContentInternalContentLocalContainer_(AMDocumentContent *self, ImActorModelEntityContentInternalContentLocalContainer *contentContainer) {
  (void) AMAbsContent_initWithImActorModelEntityContentInternalContentLocalContainer_(self, contentContainer);
  ImActorModelEntityContentInternalLocalDocument *localDocument = (ImActorModelEntityContentInternalLocalDocument *) check_class_cast([((ImActorModelEntityContentInternalContentLocalContainer *) nil_chk(contentContainer)) getContent], [ImActorModelEntityContentInternalLocalDocument class]);
  self->source_ = new_AMFileLocalSource_initWithNSString_withInt_withNSString_([((ImActorModelEntityContentInternalLocalDocument *) nil_chk(localDocument)) getFileName], [localDocument getFileSize], [localDocument getFileDescriptor]);
  self->mimeType_ = [localDocument getMimeType];
  self->name_ = [localDocument getFileName];
  self->fastThumb_ = [localDocument getFastThumb] != nil ? new_AMFastThumb_initWithImActorModelEntityContentInternalLocalFastThumb_([localDocument getFastThumb]) : nil;
}

AMDocumentContent *new_AMDocumentContent_initWithImActorModelEntityContentInternalContentLocalContainer_(ImActorModelEntityContentInternalContentLocalContainer *contentContainer) {
  AMDocumentContent *self = [AMDocumentContent alloc];
  AMDocumentContent_initWithImActorModelEntityContentInternalContentLocalContainer_(self, contentContainer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDocumentContent)
