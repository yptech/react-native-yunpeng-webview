/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "RCTYPWebView.h"
#import <React/RCTConvert.h>

@implementation RCTYPWebView

- (void)setUserAgent:(NSString *)userAgent
{
    if (userAgent == nil) {
        return;
    }
    if (![userAgent isEqualToString:_userAgent]) {
        _userAgent = userAgent;
        [[NSUserDefaults standardUserDefaults] registerDefaults:@{@"UserAgent":userAgent}];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [super webViewDidFinishLoad:webView];
    if (self.scalesPageToFit) {
        [webView.scrollView setZoomScale:1.0f animated:NO];
        CGSize fsize = webView.frame.size;
        CGSize size = webView.scrollView.contentSize;
        double scale = fsize.width / size.width;
        if (scale < 1.0 && scale > 0.0) {
            webView.scrollView.minimumZoomScale = scale;
            [webView.scrollView setZoomScale:scale animated:NO];
        }
    }
}
@end
