/**
 * Copyright (c) 2015-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "RCTButton.h"
#import "RCTUtils.h"
#import "NSView+React.h"

@implementation RCTButton

#ifdef NSAppKitVersionNumber10_12
#else
- (instancetype)initWithFrame:(CGRect)frame
{
  if ((self = [super initWithFrame:frame])) {
    [self setTarget:self];
    [self setAction:@selector(onPressHandler:)];
  }
  return self;
}
#endif

-(void)onPressHandler:(__unused NSEvent *)theEvent
{
  if (_onClick) {
    _onClick(@{@"state": @(self.state)});
  }
}

- (void)reactSetFrame:(CGRect)frame
{
  [self setFrame:frame];
}

RCT_NOT_IMPLEMENTED(- (instancetype)initWithCoder:(NSCoder *)aDecoder)

@end
