//
//  GBCollectionViewController.m
//  BolandFibonacciDisplay
//
//  Created by boland on 4/9/14.
//  Copyright (c) 2014 axial. All rights reserved.
//

#import "GBCollectionViewController.h"
#import "GBCollectionViewCell.h"
#import "GBFibonacciGenerator.h"

@interface GBCollectionViewController ()

@property (nonatomic, strong) NSArray *numbersArray;

@end

@implementation GBCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Greg Boland Fibonacci Display";
    self.numbersArray = [[GBFibonacciGenerator sharedGenerator] seedFibonacciNumbers:SHRT_MAX];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSLog(@"the total count is %lu", (unsigned long)[self.numbersArray count]);
    return [self.numbersArray count];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (GBCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    GBCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"GBCollectionViewCell" forIndexPath:indexPath];
    
    [cell setLabelWithNumber:self.numbersArray[indexPath.row]];
    return cell;
}

#pragma mark UICollectionViewDelegate


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
