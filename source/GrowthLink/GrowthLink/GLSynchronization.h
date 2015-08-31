//
//  GLSynchronization.h
//  GrowthLink
//
//  Created by Naoyuki Kataoka on 2015/06/05.
//  Copyright (c) 2015年 SIROK, Inc. All rights reserved.
//

#import <Growthbeat/GBDomain.h>

@interface GLSynchronization : GBDomain <NSCoding> {
    
    BOOL browser;
    NSString *clickId;
    
}

@property (nonatomic, assign) BOOL browser;
@property (nonatomic, strong) NSString *clickId;

+ (instancetype) synchronizeWithApplicationId:(NSString *)applicationId version:(NSString *)version credentialId:(NSString *)credentialId fingerprintParameters:(NSString *)fingerprintParameters;
+ (void) save:(GLSynchronization *)synchronization;
+ (GLSynchronization *) load;

@end
