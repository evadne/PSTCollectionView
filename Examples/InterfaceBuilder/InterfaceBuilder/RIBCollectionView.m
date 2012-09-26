//
//  RIBCollectionView.m
//  InterfaceBuilder
//
//  Created by Evadne Wu on 9/26/12.
//  Copyright (c) 2012 Radius. All rights reserved.
//

#import "RIBCollectionView.h"

@implementation RIBCollectionView
@dynamic delegate;
@dynamic dataSource;

+ (void) load {

	NSLog(@"%s", __PRETTY_FUNCTION__);

}

- (void) setCollectionViewClassString:(NSString *)string {

	if (!self.collectionViewLayout) {
		
		UICollectionViewLayout *layout = [[NSClassFromString(string) alloc] init];
		
		self.collectionViewLayout = layout;

	}
	
}

- (NSString *) collectionViewClassString {

	return NSStringFromClass([self.collectionViewLayout class]);

}

@end
