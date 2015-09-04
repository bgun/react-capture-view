//
//  CaptureView.m
//  CaptureView
//
//  Created by Ben Gundersen on 9/2/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import <RCTView.h>
#import <RCTBridge.h>

#import "CaptureView.h"

@implementation CaptureView

- (NSData *)export {
  UIGraphicsBeginImageContext(self.bounds.size);
  [self.layer renderInContext:UIGraphicsGetCurrentContext()];
  UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return UIImagePNGRepresentation(image);
}

@end