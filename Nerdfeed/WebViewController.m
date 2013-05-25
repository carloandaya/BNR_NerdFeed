//
//  WebViewController.m
//  Nerdfeed
//
//  Created by Carlo Andaya on 1/13/13.
//  Copyright (c) 2013 Carlo Andaya. All rights reserved.
//

#import "WebViewController.h"

@implementation WebViewController

- (void)loadView
{
    // Create an instance of UIWebView as large as the screen
    CGRect screenFrame = [[UIScreen mainScreen] applicationFrame];
    UIWebView *wv = [[UIWebView alloc] initWithFrame:screenFrame];
    // Tell web view to scale web content to fit within bounds of webview
    [wv setScalesPageToFit:YES];
    
    [self setView:wv];
}

- (UIWebView *)webView
{
    return (UIWebView *) [self view];
}

@end
