//
//  RCTWebView+WebView.h
//  RNWebView
//
//  Created by Johnny iDay on 2017/12/13.
//  Copyright © 2017年 Johnny iDay. All rights reserved.
//

#import "RCTWebView.h"

@interface RCTWebView (WebView)

- (BOOL)webView:(__unused UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request
 navigationType:(UIWebViewNavigationType)navigationType;

- (void)webViewDidFinishLoad:(UIWebView *)webView;

@end
