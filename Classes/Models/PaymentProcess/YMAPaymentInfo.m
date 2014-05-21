//
// Created by mertvetcov on 21.05.14.
// Copyright (c) 2014 Yandex.Money. All rights reserved.
//

#import "YMAPaymentInfo.h"
#import "YMAMoneySources.h"


@implementation YMAPaymentInfo

- (id)initWithMoneySources:(YMAMoneySources *)moneySources requestId:(NSString *)requestId contractAmount:(NSString *)contractAmount balance:(NSString *)balance recipientAccountStatus:(YMAAccountStatus)recipientAccountStatus recipientAccountType:(YMAAccountType)recipientAccountType protectionCode:(NSString *)protectionCode accountUnblockUri:(NSString *)accountUnblockUri extActionUri:(NSString *)extActionUri {
    self = [super init];

    if (self) {
        _moneySources = moneySources;
        _requestId = [requestId copy];
        _contractAmount = [contractAmount copy];
        _balance = [balance copy];
        _recipientAccountStatus = recipientAccountStatus;
        _recipientAccountType = recipientAccountType;
        _protectionCode = [protectionCode copy];
        _accountUnblockUri = [accountUnblockUri copy];
        _extActionUri = [extActionUri copy];
    }

    return self;
}

+ (instancetype)paymentRequestInfoWithMoneySources:(YMAMoneySources *)moneySources requestId:(NSString *)requestId contractAmount:(NSString *)contractAmount balance:(NSString *)balance recipientAccountStatus:(YMAAccountStatus)recipientAccountStatus recipientAccountType:(YMAAccountType)recipientAccountType protectionCode:(NSString *)protectionCode accountUnblockUri:(NSString *)accountUnblockUri extActionUri:(NSString *)extActionUri {
    return [[YMAPaymentInfo alloc] initWithMoneySources:moneySources requestId:requestId contractAmount:contractAmount balance:balance recipientAccountStatus:recipientAccountStatus recipientAccountType:recipientAccountType protectionCode:protectionCode accountUnblockUri:accountUnblockUri extActionUri:extActionUri];
}

#pragma mark -
#pragma mark *** Overridden methods ***
#pragma mark -

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, %@>", [self class], (__bridge void *) self,
                                      @{
                                              @"moneySources" : self.moneySources.description,
                                              @"requestId" : self.requestId,
                                              @"contractAmount" : self.contractAmount,
                                              @"balance" : self.balance,
                                              @"recipientAccountStatus" : [NSNumber numberWithInteger:self.recipientAccountStatus],
                                              @"recipientAccountType" : [NSNumber numberWithInteger:self.recipientAccountType],
                                              @"protectionCode" : self.protectionCode,
                                              @"accountUnblockUri" : self.accountUnblockUri,
                                              @"extActionUri" : self.extActionUri
                                      }];
}

@end