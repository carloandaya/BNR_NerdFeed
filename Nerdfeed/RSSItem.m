//
//  RSSItem.m
//  Nerdfeed
//
//  Created by Carlo Andaya on 1/6/13.
//  Copyright (c) 2013 Carlo Andaya. All rights reserved.
//

#import "RSSItem.h"

@implementation RSSItem

@synthesize parentParserDelegate, title, link;

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    NSLog(@"\t\t%@ found a %@ element", self, elementName);
    
    if ([elementName isEqual:@"title"]) {
        currentString = [[NSMutableString alloc] init];
        [self setTitle:currentString];
    }
    else if ([elementName isEqual:@"link"])
    {
        currentString = [[NSMutableString alloc] init];
        [self setLink:currentString];
    }
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    [currentString appendString:string]; // We are already in the element and getting its contents
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    currentString = nil;
    if ([elementName isEqual:@"item"]) {
        [parser setDelegate:parentParserDelegate]; // This passes control back to its caller
    }
}

@end
