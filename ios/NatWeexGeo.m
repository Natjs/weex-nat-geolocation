//
//  NatWeexGeo.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//


#import "NatWeexGeo.h"
#import "NatGeoLocation.h"

@implementation NatWeexGeo
WX_EXPORT_METHOD(@selector(get:))
WX_EXPORT_METHOD(@selector(watch::))
WX_EXPORT_METHOD(@selector(clearWatch:))


- (void)clearWatch:(WXModuleCallback)callback{
    [[NatGeoLocation singletonManger] clearWatch:^(id error,id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        }else{
            if (callback) {
                callback(result);
            }
        }
    }];
}


- (void)watch:(NSDictionary *)options :(WXKeepAliveCallback)callback{
    [[NatGeoLocation singletonManger] watch:options :^(id error,id result) {
        if (error) {
            if (callback) {
                callback(error,YES);
            }
        }else{
            if (callback) {
                callback(result,YES);
            }
        }

    }];
    
}
- (void)get:(WXModuleCallback)callback{
    
    [[NatGeoLocation singletonManger] get:^(id error,id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        }else{
            if (callback) {
                callback(result);
            }
        }

    }];
}


- (void)dealloc{
    
}

@end
