//
//  GBCollectionViewCell.m
//  BolandFibonacciDisplay
//
//  Created by boland on 4/9/14.
//  Copyright (c) 2014 axial. All rights reserved.
//

#import "GBCollectionViewCell.h"
#import "UIColor+RandomColor.h"

@implementation GBCollectionViewCell

- (void)prepareForReuse
{
    [super prepareForReuse];
    self.backgroundColor = nil;
    self.numberLabel.text = @"";
    
}

- (void)setLabelWithNumber:(NSNumber *)num
{
    self.backgroundColor = [UIColor randomColor];
    self.numberLabel.text = [num stringValue];
}

@end
