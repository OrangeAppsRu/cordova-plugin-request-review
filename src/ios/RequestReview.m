//
//  RequestReview.m

#import "RequestReview.h"
#import <StoreKit/StoreKit.h>

@implementation RequestReview

- (void)requestReview:(CDVInvokedUrlCommand*)command
{
    if ([NSProcessInfo instancesRespondToSelector:@selector(isOperatingSystemAtLeastVersion:)]) {

        NSOperatingSystemVersion ios10_3_0 = (NSOperatingSystemVersion){10, 3, 0};
        if ([[NSProcessInfo processInfo] isOperatingSystemAtLeastVersion:ios10_3_0]) {

            [SKStoreReviewController requestReview];

            CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
            [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
            return;
        }
    }
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end

