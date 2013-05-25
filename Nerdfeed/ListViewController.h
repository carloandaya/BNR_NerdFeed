//
//  ListViewController.h
//  Nerdfeed
//
//  Created by Carlo Andaya on 1/5/13.
//  Copyright (c) 2013 Carlo Andaya. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RSSChannel;
@class WebViewController;

@interface ListViewController : UITableViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate>
{
    NSURLConnection *conn;
    NSMutableData *xmlData;
    
    RSSChannel *channel;
}

@property (nonatomic, strong) WebViewController *webViewController;

- (void)fetchEntries;

@end
