//
//  GBFibonacciGenerator.m
//  BolandFibonacciDisplay
//
//  Created by boland on 4/9/14.
//  Copyright (c) 2014 axial. All rights reserved.
//

#import "GBFibonacciGenerator.h"

static GBFibonacciGenerator *_sharedGenerator = nil;


@interface GBFibonacciGenerator ()

@property (nonatomic, strong) NSMutableDictionary *numCache;
@property (nonatomic, strong) NSMutableArray *numbersArray;

@end

@implementation GBFibonacciGenerator

+ (instancetype)sharedGenerator
{
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        _sharedGenerator = [[self alloc] init];
    });
    
    return _sharedGenerator;
}

- (id)init{
    
    if(self = [super init]){
        //initialize any information here
        self.numCache = [[NSMutableDictionary alloc] init];
        self.numCache[@"0"] = @(0);
        self.numCache[@"1"] = @(1);
    }
    
    return self;
}


- (NSArray *)seedFibonacciNumbers:(NSInteger)maxCount
{
    NSLog(@"count of long %lu", maxCount);
    self.numbersArray = [[NSMutableArray alloc] init];
    //[self fibonacci:maxCount];
    [self createFibonacci];
    return self.numbersArray;
}

- (NSInteger)fibonacci:(NSInteger)number
{
    
    if (number < 2) {
        NSLog(@"Num 1");
        return 1;
        
    }
    NSNumber *value = [@(number) copy];
    if (self.numCache[value.stringValue]) {
        return [self.numCache[value.stringValue] integerValue];
    }
    __block NSInteger result;
   
    result = ([self fibonacci:number-1] + [self fibonacci:(number-2)]);
    
    NSLog(@"Num result %lu", (long)result);
    self.numCache[value.stringValue] = value;
    [self.numbersArray addObject:@(result)];
    return result;
}

- (void)createFibonacci
{
    NSInteger f1 = 1; // seed value 1
    NSInteger f2 = 0;
    NSInteger result; // used as a holder for each new value in the loop
    
    
    for (NSInteger i = 1; i<ULONG_MAX; i++){
        
        result = f1 + f2;
        f1 = f2;
        f2 = result;
        
        if (result <= ULONG_MAX && result >= 0) {
            NSLog(@"COUNT : %lu Num %lu", (long)[self.numbersArray count], (long)result);
            [self.numbersArray addObject:@(result)];
        }else {
            break;
        }
        
         // print each value of fn
        
    }
}

@end
