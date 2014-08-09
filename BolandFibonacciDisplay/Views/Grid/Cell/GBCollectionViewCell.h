//
//  GBCollectionViewCell.h
//  BolandFibonacciDisplay
//
//  Created by boland on 4/9/14.
//  Copyright (c) 2014 axial. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GBCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UILabel *numberLabel;

- (void)setLabelWithNumber:(NSNumber *)num;

@end
