//
//  main.m
//  InterfaceBuilder
//
//  Created by Evadne Wu on 9/26/12.
//  Copyright (c) 2012 Radius. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "RIBAppDelegate.h"
#import "RIBCollectionViewCommon.h"
#import "RIBCollectionView.h"
#import "RIBCollectionViewCell.h"
#import "RIBCollectionViewController.h"


//	Apple mentioned it
//	however you should not use
//	hack stays here for now

Class class_setSuperclass(Class cls, Class newSuper);


int main (int argc, char *argv[]) {

	@autoreleasepool {
	
		NSLog(@"%@", [UIDevice currentDevice].systemVersion);
		
		if ([UICollectionView class])
			class_setSuperclass([RIBCollectionView class], [UICollectionView class]);
		
		if ([UICollectionViewCell class])
			class_setSuperclass([RIBCollectionViewCell class], [UICollectionViewCell class]);
		
		if ([UICollectionViewController class])
			class_setSuperclass([RIBCollectionViewController class], [UICollectionViewController class]);
		
		NSLog(@"%@ < %@", NSStringFromClass([RIBCollectionView class]), NSStringFromClass([RIBCollectionView superclass]));
		
		NSLog(@"%@ < %@", NSStringFromClass([RIBCollectionViewCell class]), NSStringFromClass([RIBCollectionViewCell superclass]));
		
		NSLog(@"%@ < %@", NSStringFromClass([RIBCollectionViewController class]), NSStringFromClass([RIBCollectionViewController superclass]));
		
		return UIApplicationMain(argc, argv, nil, NSStringFromClass([RIBAppDelegate class]));
		
	}
	
}
