/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "RCTYPWebViewManager.h"
#import "RCTYPWebView.h"

@interface RCTYPWebViewManager ()

@end

@implementation RCTYPWebViewManager

RCT_EXPORT_MODULE();

- (UIView *)view
{
  RCTYPWebView *webView = [RCTYPWebView new];
  webView.delegate = self;
  return webView;
}

RCT_EXPORT_VIEW_PROPERTY(userAgent, NSString);

@end
