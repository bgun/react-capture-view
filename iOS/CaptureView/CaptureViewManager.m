//
//  CaptureViewManager.m
//  CaptureView
//
//  Created by Ben Gundersen on 9/3/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "CaptureViewManager.h"

#import "CaptureView.h"

#import "RCTBridge.h"

@implementation CaptureViewManager

RCT_EXPORT_METHOD(export:(NSNumber *)reactTag callback:(RCTResponseSenderBlock)callback) {

  [self.bridge.uiManager addUIBlock:^(RCTUIManager *uiManager, RCTSparseArray *viewRegistry) {
    CaptureView *view = viewRegistry[reactTag];
    if (![view isKindOfClass:[CaptureView class]]) {
      RCTLogMustFix(@"Invalid view returned from registry, expecting CaptureView, got: %@", view);
    }
    NSData * imageData = [view export];
    callback(@[[NSNull null], [imageData base64EncodedStringWithOptions:0]]);
  }];
  
}

@end