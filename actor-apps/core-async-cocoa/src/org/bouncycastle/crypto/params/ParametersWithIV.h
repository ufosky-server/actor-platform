//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/params/ParametersWithIV.java
//

#ifndef _OrgBouncycastleCryptoParamsParametersWithIV_H_
#define _OrgBouncycastleCryptoParamsParametersWithIV_H_

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/CipherParameters.h"

@class IOSByteArray;

@interface OrgBouncycastleCryptoParamsParametersWithIV : NSObject < OrgBouncycastleCryptoCipherParameters >

#pragma mark Public

- (instancetype)initWithOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)parameters
                                                withByteArray:(IOSByteArray *)iv;

- (instancetype)initWithOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)parameters
                                                withByteArray:(IOSByteArray *)iv
                                                      withInt:(jint)ivOff
                                                      withInt:(jint)ivLen;

- (IOSByteArray *)getIV;

- (id<OrgBouncycastleCryptoCipherParameters>)getParameters;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsParametersWithIV)

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsParametersWithIV_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_(OrgBouncycastleCryptoParamsParametersWithIV *self, id<OrgBouncycastleCryptoCipherParameters> parameters, IOSByteArray *iv);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsParametersWithIV *new_OrgBouncycastleCryptoParamsParametersWithIV_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_(id<OrgBouncycastleCryptoCipherParameters> parameters, IOSByteArray *iv) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleCryptoParamsParametersWithIV_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_withInt_withInt_(OrgBouncycastleCryptoParamsParametersWithIV *self, id<OrgBouncycastleCryptoCipherParameters> parameters, IOSByteArray *iv, jint ivOff, jint ivLen);

FOUNDATION_EXPORT OrgBouncycastleCryptoParamsParametersWithIV *new_OrgBouncycastleCryptoParamsParametersWithIV_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_withInt_withInt_(id<OrgBouncycastleCryptoCipherParameters> parameters, IOSByteArray *iv, jint ivOff, jint ivLen) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsParametersWithIV)

#endif // _OrgBouncycastleCryptoParamsParametersWithIV_H_
