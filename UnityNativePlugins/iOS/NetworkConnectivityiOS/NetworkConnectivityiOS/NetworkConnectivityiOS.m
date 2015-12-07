//
//  NetworkConnectivityiOS.m
//  NetworkConnectivityiOS
//
//  Created by Smit Suchak on 17/08/15.
//  Copyright (c) 2015 JMGD. All rights reserved.
//

#import "NetworkConnectivityiOS.h"
#import "UnityCommunicator.h"
@implementation NetworkConnectivityiOS


- (int) returnInstanceInt{
    return 94632165;
}

NSMutableDictionary *_instanceHolder;
+ (NSMutableDictionary*)instanceHolder{
    if (_instanceHolder == nil){
        _instanceHolder = [[NSMutableDictionary alloc] init];
    }
    return _instanceHolder;
}


+ (NSString*) createInstance{
    
    NSUUID *myUUID = [NSUUID UUID];
    
    NetworkConnectivityiOS *_nwIOS = [[NetworkConnectivityiOS alloc] init];
    
    [[NetworkConnectivityiOS instanceHolder] setObject:_nwIOS forKey:[myUUID UUIDString]];
    
    
    
    return [myUUID UUIDString];
}

+ (NetworkConnectivityiOS*) getInstanceForKey:(NSString*) key{
    return [[NetworkConnectivityiOS instanceHolder] valueForKey:key];
}


+ (NetworkConnectivityiOS *)sharedInstance {
    static dispatch_once_t once;
    static NetworkConnectivityiOS *instance;
    dispatch_once(&once, ^{
        instance = [[NetworkConnectivityiOS alloc] init];
    });
    return instance;
}



+ (void) sendMessage:(NSString*) messageName
            toObject:(NSString*) objectName
       withParameter:(NSString*) parameterString{
    
    UnitySendMessage([objectName cStringUsingEncoding:NSUTF8StringEncoding],
                     [messageName cStringUsingEncoding:NSUTF8StringEncoding],
                     [parameterString cStringUsingEncoding:NSUTF8StringEncoding]);
    
}

@end
