//
//  StoryHeadingCollectionViewCell.m
//  KylieUIDup
//
//  Created by Jinto Thomas Menachery on 03/05/16.
//  Copyright © 2016 jintos. All rights reserved.
//

#import "StoryHeadingCollectionViewCell.h"

@interface StoryHeadingCollectionViewCell()

@property (nonatomic, weak) NSDictionary* cellData;
@property (weak, nonatomic) IBOutlet UILabel *headingLabel;

@end

@implementation StoryHeadingCollectionViewCell

-(void) setCellData:(NSDictionary *)cellData {
    self.cellData = cellData;

    self.backgroundColor = cellData[@"Color"];
    self.headingLabel.text = cellData[@"Title"];
}

@end
