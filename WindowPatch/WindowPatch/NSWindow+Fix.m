//
//  NSWindow+Fix.m
//  WindowPatch
//
//  Created by Alex Nichol on 8/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSWindow+Fix.h"
#include <objc/objc-class.h>


void swizzleMethods () {
	// printf("Applying no space patch!\n");
	Method orig_method = nil, alt_method = nil;
	
    // First, look for the methods
    orig_method = class_getInstanceMethod([NSWindow class], @selector(setCollectionBehavior:));
    alt_method = class_getInstanceMethod([NSWindow class], @selector(setCollectionBehaviorPatched:));
	
    // If both are found, swizzle them
    if ((orig_method != nil) && (alt_method != nil)) {
		method_exchangeImplementations(orig_method, alt_method);
	}
}

@implementation NSWindow (Fix)

- (void)setCollectionBehaviorPatched:(NSWindowCollectionBehavior)behavior {
	if ((behavior & NSWindowCollectionBehaviorCanJoinAllSpaces) != 0) {
		NSLog(@"WindowPatch: Preventing NSWindowCollectionBehaviorCanJoinAllSpaces behavior.");
	}
	[self setCollectionBehaviorPatched:(behavior & (0xfffff ^ NSWindowCollectionBehaviorCanJoinAllSpaces))];
}

@end
