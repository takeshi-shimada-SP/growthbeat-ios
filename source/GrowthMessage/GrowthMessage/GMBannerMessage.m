//
//  GMBannerMessage.m
//  GrowthMessage
//
//  Created by Baekwoo Chung on 2015/06/02.
//  Copyright (c) 2015年 SIROK, Inc. All rights reserved.
//

#import "GMBannerMessage.h"

@implementation GMBannerMessage

@synthesize picture;
@synthesize caption;
@synthesize text;
@synthesize bannerType;
@synthesize position;
@synthesize duration;

- (instancetype) initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super initWithDictionary:dictionary];
    if (self) {
        if ([dictionary objectForKey:@"picture"] && [dictionary objectForKey:@"picture"] != [NSNull null]) {
            self.picture = [GMPicture domainWithDictionary:[dictionary objectForKey:@"picture"]];
        }
        if ([dictionary objectForKey:@"caption"] && [dictionary objectForKey:@"caption"] != [NSNull null]) {
            self.caption = [dictionary objectForKey:@"caption"];
        }
        if ([dictionary objectForKey:@"text"] && [dictionary objectForKey:@"text"] != [NSNull null]) {
            self.text = [dictionary objectForKey:@"text"];
        }
        if ([dictionary objectForKey:@"bannerType"] && [dictionary objectForKey:@"bannerType"] != [NSNull null]) {
            self.bannerType = GMBannerTypeFromNSString([dictionary objectForKey:@"bannerType"]);
        }
        if ([dictionary objectForKey:@"position"] && [dictionary objectForKey:@"position"] != [NSNull null]) {
            self.position = GMBannerTypeFromNSString([dictionary objectForKey:@"position"]);
        }
        if ([dictionary objectForKey:@"duration"] && [dictionary objectForKey:@"duration"] != [NSNull null]) {
            self.duration = [[dictionary objectForKey:@"duration"] integerValue];
        }
    }
    return self;
    
}

#pragma mark --
#pragma mark NSCoding

- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        if ([aDecoder containsValueForKey:@"picture"]) {
            self.picture = [aDecoder decodeObjectForKey:@"picture"];
        }
        if ([aDecoder containsValueForKey:@"caption"]) {
            self.caption = [aDecoder decodeObjectForKey:@"caption"];
        }
        if ([aDecoder containsValueForKey:@"text"]) {
            self.text = [aDecoder decodeObjectForKey:@"text"];
        }
        if ([aDecoder containsValueForKey:@"bannerType"]) {
            self.bannerType = GMBannerTypeFromNSString([aDecoder decodeObjectForKey:@"bannerType"]);
        }
        if ([aDecoder containsValueForKey:@"position"]) {
            self.position = GMBannerTypeFromNSString([aDecoder decodeObjectForKey:@"position"]);
        }
        if ([aDecoder containsValueForKey:@"duration"]) {
            self.duration = [aDecoder decodeIntegerForKey:@"duration"];
        }
    }
    return self;
}

- (void) encodeWithCoder:(NSCoder *)aCoder {
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:picture forKey:@"picture"];
    [aCoder encodeObject:caption forKey:@"caption"];
    [aCoder encodeObject:text forKey:@"text"];
    [aCoder encodeInteger:bannerType forKey:@"bannerType"];
    [aCoder encodeInteger:position forKey:@"position"];
    [aCoder encodeInteger:duration forKey:@"duration"];
}

@end
