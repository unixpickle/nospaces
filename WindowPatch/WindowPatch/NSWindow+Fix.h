//
//  NSWindow+Fix.h
//  WindowPatch
//
//  Created by Alex Nichol on 8/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface NSWindow (Fix)

- (void)setCollectionBehaviorPatched:(NSWindowCollectionBehavior)behavior;

@end
