//
//  RSSItem.h
//  Nerdfeed
//
//  Created by Carlo Andaya on 1/6/13.
//  Copyright (c) 2013 Carlo Andaya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSSItem : NSObject <NSXMLParserDelegate>
{
    NSMutableString *currentString;
}

@property (nonatomic, weak) id parentParserDelegate;

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *link;

@end
