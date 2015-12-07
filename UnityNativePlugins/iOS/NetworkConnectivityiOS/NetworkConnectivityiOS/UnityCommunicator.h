//
//  UnityCommunicator.h
//  NetworkConnectivityiOS
//
//  Created by Smit Suchak on 17/08/15.
//  Copyright (c) 2015 JMGD. All rights reserved.
//

#ifndef NetworkConnectivityiOS_UnityCommunicator_h
#define NetworkConnectivityiOS_UnityCommunicator_h

#ifdef __cplusplus
extern "C" {
#endif
    void UnitySendMessage(const char* obj, const char* method, const char* msg);
#ifdef __cplusplus
}
#endif

#endif
