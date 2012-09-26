//
//  RIBCollectionViewController.h
//  InterfaceBuilder
//
//  Created by Evadne Wu on 9/26/12.
//  Copyright (c) 2012 Radius. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "RIBCollectionViewCommon.h"
#import "RIBCollectionView.h"

@interface RIBCollectionViewController : RIBPlatformCollectionViewController

@property (nonatomic, retain) IBOutlet RIBCollectionView *collectionView;

@end
