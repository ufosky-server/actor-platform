//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-async/src/main/java/im/actor/model/mvvm/DisplayWindow.java
//

#ifndef _AMDisplayWindow_H_
#define _AMDisplayWindow_H_

#include "J2ObjC_header.h"

@class JavaLangLong;

@interface AMDisplayWindow : NSObject

#pragma mark Public

- (void)completeForwardLoading;

- (void)completeInitBackwardWithJavaLangLong:(JavaLangLong *)head;

- (void)completeInitCenterWithJavaLangLong:(JavaLangLong *)forwardHead
                          withJavaLangLong:(JavaLangLong *)backwardHead;

- (void)completeInitForwardWithJavaLangLong:(JavaLangLong *)tail;

- (void)emptyInit;

- (void)endBackwardLoading;

- (JavaLangLong *)getCurrentBackwardHead;

- (JavaLangLong *)getCurrentForwardHead;

- (jboolean)isBackwardLoaded;

- (jboolean)isForwardCompleted;

- (jboolean)isInited;

- (void)onBackwardCompleted;

- (void)onBackwardSliceLoadedWithJavaLangLong:(JavaLangLong *)head;

- (void)onForwardCompleted;

- (void)onForwardSliceLoadedWithJavaLangLong:(JavaLangLong *)tail;

- (jboolean)startBackwardLoading;

- (jboolean)startForwardLoading;

- (void)startInitBackward;

- (void)startInitCenter;

- (void)startInitForward;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDisplayWindow)

FOUNDATION_EXPORT void AMDisplayWindow_init(AMDisplayWindow *self);

FOUNDATION_EXPORT AMDisplayWindow *new_AMDisplayWindow_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(AMDisplayWindow)

typedef AMDisplayWindow ImActorModelMvvmDisplayWindow;

#endif // _AMDisplayWindow_H_
