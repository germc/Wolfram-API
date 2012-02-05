//
//  WASubPod.m
//  Wolfram
//
//  Created by Alex Nichol on 2/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "WASubPod.h"

@implementation WASubPod

@synthesize title;
@synthesize representations;

- (id)initWithElement:(WAXMLNode *)node {
    if ((self = [super init])) {
        NSMutableArray * mRepresentations = [[NSMutableArray alloc] init];
        WAXMLNode * textNode = [node elementWithName:@"plaintext"];
        if (textNode) {
            NSString * string = [textNode stringContents];
            WAPlainText * plain = [[WAPlainText alloc] initWithText:string];
            [mRepresentations addObject:plain];
        }
        representations = [[NSArray alloc] initWithArray:mRepresentations];
    }
    return self;
}

@end