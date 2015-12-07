//
//  NetworkConnectivityiOS.h
//  NetworkConnectivityiOS
//
//  Created by Smit Suchak on 17/08/15.
//  Copyright (c) 2015 JMGD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkConnectivityiOS : NSObject

- (int) returnInstanceInt;
+ (NSString*) createInstance;
+ (NetworkConnectivityiOS*) getInstanceForKey:(NSString*) key;

+ (NetworkConnectivityiOS *)sharedInstance;


+ (void) sendMessage:(NSString*) messageName toObject:(NSString*) objectName withParameter:(NSString*) parameterString;

@end
