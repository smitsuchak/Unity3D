//
//  NetworkBridge.h
//  NetworkConnectivityiOS
//
//  Created by Smit Suchak on 17/08/15.
//  Copyright (c) 2015 JMGD. All rights reserved.
//

extern "C" {
    
    void CallMethod();
    
    const char* ReturnString();
    
    int ReturnInt();
    
    const char* CreateInstance();
    
    const int GetInstanceInt(const char* instanceKey);
    
    
    void SendUnityBridgeMessage(const char* objectName, const char* messageName, const char* parameterString);
    
}
