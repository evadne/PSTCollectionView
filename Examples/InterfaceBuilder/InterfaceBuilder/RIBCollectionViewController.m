//
//  RIBCollectionViewController.m
//  InterfaceBuilder
//
//  Created by Evadne Wu on 9/26/12.
//  Copyright (c) 2012 Radius. All rights reserved.
//

#import "RIBCollectionViewController.h"

NSString * const CellIdentifier = @"Cell";

@interface RIBCollectionViewController () <RIBPlatformCollectionViewDelegate, RIBPlatformCollectionViewDataSource>

@end

@implementation RIBCollectionViewController
@dynamic collectionView;

+ (void) load {

	NSLog(@"%s", __PRETTY_FUNCTION__);

}

- (void) viewDidLoad {

	[super viewDidLoad];
	
	UINib *nib = [UINib nibWithNibName:@"RIBCollectionViewCell" bundle:nil];
	
	[self.collectionView registerNib:nib forCellWithReuseIdentifier:CellIdentifier];
	[self.collectionView reloadData];

}

- (NSInteger) collectionView:(RIBPlatformCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

	return 100;

}

- (RIBPlatformCollectionViewCell *) collectionView:(RIBPlatformCollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

	RIBPlatformCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
	
	cell.frame = (CGRect){
		CGPointZero,
		[self collectionView:collectionView layout:collectionView.collectionViewLayout sizeForItemAtIndexPath:indexPath]
	};
	
	cell.layer.borderColor = [UIColor redColor].CGColor;
	cell.layer.borderWidth = 2.0f;
	
	return cell;

}

- (CGSize)collectionView:(RIBPlatformCollectionView *)collectionView layout:(RIBPlatformCollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
	
	return CGSizeMake(80, 80);
	
}

- (CGFloat)collectionView:(RIBPlatformCollectionView *)collectionView layout:(RIBPlatformCollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}

- (CGFloat)collectionView:(RIBPlatformCollectionView *)collectionView layout:(RIBPlatformCollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}

@end
