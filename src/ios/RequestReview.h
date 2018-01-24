//
//  RequestReview.h

#import <Cordova/CDV.h>
#import <MyTargetSDK/MyTargetSDK.h>

@interface RequestReview : CDVPlugin

- (void)requestReview:(CDVInvokedUrlCommand*)command;

@end
