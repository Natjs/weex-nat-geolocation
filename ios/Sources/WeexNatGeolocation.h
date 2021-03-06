//
//  WeexNatGeolocation.h
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Instapp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>
#import <CoreLocation/CoreLocation.h>

@protocol NatGeolocationPro <WXModuleProtocol>

- (void)get:(WXModuleCallback)callback;
- (void)watch:(NSDictionary *)options :(WXModuleKeepAliveCallback)callback;
- (void)clearWatch:(WXModuleCallback)callback;

@end

@interface WeexNatGeolocation : NSObject<NatGeolocationPro>

@end
