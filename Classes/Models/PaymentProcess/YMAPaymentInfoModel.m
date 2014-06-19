//
// Created by Alexander Mertvetsov on 21.05.14.
// Copyright (c) 2014 Yandex.Money. All rights reserved.
//

#import "YMAPaymentInfoModel.h"
#import "YMAMoneySourcesModel.h"


@implementation YMAPaymentInfoModel

- (id)initWithMoneySources:(YMAMoneySourcesModel *)moneySources requestId:(NSString *)requestId contractAmount:(NSString *)contractAmount balance:(NSString *)balance recipientAccountStatus:(YMAAccountStatus)recipientAccountStatus recipientAccountType:(YMAAccountType)recipientAccountType protectionCode:(NSString *)protectionCode extActionUri:(NSURL *)extActionUri {
    self = [super init];

    if (self) {
        _moneySources = moneySources;
        _requestId = [requestId copy];
        _contractAmount = [contractAmount copy];
        _balance = [balance copy];
        _recipientAccountStatus = recipientAccountStatus;
        _recipientAccountType = recipientAccountType;
        _protectionCode = [protectionCode copy];
        _extActionUri = extActionUri;
    }

    return self;
}

+ (instancetype)paymentInfoWithMoneySources:(YMAMoneySourcesModel *)moneySources requestId:(NSString *)requestId contractAmount:(NSString *)contractAmount balance:(NSString *)balance recipientAccountStatus:(YMAAccountStatus)recipientAccountStatus recipientAccountType:(YMAAccountType)recipientAccountType protectionCode:(NSString *)protectionCode extActionUri:(NSURL *)extActionUri {
    return [[YMAPaymentInfoModel alloc] initWithMoneySources:moneySources requestId:requestId contractAmount:contractAmount balance:balance recipientAccountStatus:recipientAccountStatus recipientAccountType:recipientAccountType protectionCode:protectionCode extActionUri:extActionUri];
}

@end