//
//  WebConsole.m
//  JSLog
//
//  Created by fish on 2019/7/1.
//  Copyright © 2019 cloud. All rights reserved.
//

#import "WebConsole.h"

@implementation WebConsole
+ (void) enable {
    [NSURLProtocol registerClass:[WebConsole class]];
}

+ (BOOL) canInitWithRequest:(NSURLRequest *)request {
    if ([[[request URL] host] isEqualToString:@"debugger"]){
        NSLog(@"%@", [[[request URL] path] substringFromIndex: 1]);
    }
    
    return FALSE;
}
@end
