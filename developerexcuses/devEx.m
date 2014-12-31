//
//  devEx.m
//  developerexcuses
//
//  Created by tihm on 31.12.14.
//  Copyright (c) 2014 tihmstar. All rights reserved.
//

#import "devEx.h"

@implementation devEx

+(NSString *)getExcuse{
    //http://www.developerexcuses.com/
    
    NSURL *url = [NSURL URLWithString:@"http://www.developerexcuses.com/"];

    NSError *error;
    NSString *page = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
    
    NSString *excuse = [[page componentsSeparatedByString:@"<a href=\"/\""] objectAtIndex:1];
    excuse = [[excuse componentsSeparatedByString:@">"] objectAtIndex:1];
    excuse = [[excuse componentsSeparatedByString:@"<"] firstObject];
    if (error) {
        NSLog(@"ERROR=%@",error);
    }
    return excuse;
}

@end
