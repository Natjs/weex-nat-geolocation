//
//  WeexNatGeolocation.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Instapp. All rights reserved.
//


#import "WeexNatGeolocation.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <NatGeolocation/NatGeolocation.h>

@implementation WeexNatGeolocation
@synthesize weexInstance;

WX_PlUGIN_EXPORT_MODULE(nat/geolocation, WeexNatGeolocation)
WX_EXPORT_METHOD(@selector(get:))
WX_EXPORT_METHOD(@selector(watch::))
WX_EXPORT_METHOD(@selector(clearWatch:))

- (void)clearWatch:(WXModuleCallback)callback{
    [[NatGeolocation singletonManger] clearWatch:^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

- (void)watch:(NSDictionary *)options :(WXModuleKeepAliveCallback)callback{
    [[NatGeolocation singletonManger] watch:options :^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error, YES);
            } else {
                callback(result, YES);
            }
        }
    }];
}

- (void)get:(WXModuleCallback)callback{
    [[NatGeolocation singletonManger] get:^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

- (void)dealloc{
}

@end
