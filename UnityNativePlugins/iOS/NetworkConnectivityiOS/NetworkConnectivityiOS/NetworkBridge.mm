//
//  NetworkBridge.mm
//  NetworkConnectivityiOS
//
//  Created by Smit Suchak on 17/08/15.
//  Copyright (c) 2015 JMGD. All rights reserved.
//

#include "NetworkBridge.h"
#include "NetworkConnectivityiOS.h"

void CallMethod(){
    // TODO: Othere Things
}

const char* ReturnString(){
    return "Hello There";
}

int ReturnInt(){
    return 5;
}

const char* CreateInstance(){
    return [[NetworkConnectivityiOS createInstance] cStringUsingEncoding:NSUTF8StringEncoding];
}

const int GetInstanceInt(const char* instanceKey){
    NSString *key = [NSString stringWithCString:instanceKey encoding:NSUTF8StringEncoding];
    NetworkConnectivityiOS *nwObj = [NetworkConnectivityiOS getInstanceForKey:key];
    return [nwObj returnInstanceInt];
}


void SendUnityBridgeMessage(const char* objectName, const char* messageName, const char* parameterString){
    
    [NetworkConnectivityiOS sendMessage:[NSString stringWithCString:messageName encoding:NSUTF8StringEncoding]
               toObject:[NSString stringWithCString:objectName encoding:NSUTF8StringEncoding]
          withParameter:[NSString stringWithCString:parameterString encoding:NSUTF8StringEncoding]];
    
}
