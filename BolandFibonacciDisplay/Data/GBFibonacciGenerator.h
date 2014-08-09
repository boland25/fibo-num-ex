//
//  GBFibonacciGenerator.h
//  BolandFibonacciDisplay
//
//  Created by boland on 4/9/14.
//  Copyright (c) 2014 axial. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBFibonacciGenerator : NSObject

+ (instancetype)sharedGenerator;

- (NSArray *)seedFibonacciNumbers:(NSInteger)maxCount;
- (NSInteger)fibonacci:(NSInteger)number;

@end
