//
//  CaptureView.h
//  CaptureView
//
//  Created by Ben Gundersen on 9/2/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "RCTBridgeModule.h"
#import "RCTView.h"

@interface CaptureView : NSObject <RCTBridgeModule>

- (NSData *)export;

//we are making this method visible to public. [Can't find any other way]
- (NSMutableDictionary *)baseEvent;

@end