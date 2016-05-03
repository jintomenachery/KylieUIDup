//
//  ViewController.m
//  KylieUIDup
//
//  Created by Jinto Thomas Menachery on 03/05/16.
//  Copyright © 2016 jintos. All rights reserved.
//

#import "ViewController.h"
#import "StoryHeadingCollectionViewCell.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *storyCollectionView;
@property (nonatomic, strong) NSArray* stories;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.stories = @[
                     @{
                         @"Color" : [UIColor blackColor],
                         @"Title" : @"blackColor"
                         },
                     @{
                         @"Color" : [UIColor blueColor],
                         @"Title" : @"blueColor"
                         },
                     @{
                         @"Color" : [UIColor redColor],
                         @"Title" : @"redColor"
                         },
                      ];
    [self.storyCollectionView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CollectionView data source methods - 

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.stories count];
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    StoryHeadingCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"StoryHeadingCell" forIndexPath:indexPath];
    [cell setCellData:self.stories[indexPath.row]];
    return cell;
}

@end
