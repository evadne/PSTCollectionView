//
//  RIBCollectionView.h
//  InterfaceBuilder
//
//  Created by Evadne Wu on 9/26/12.
//  Copyright (c) 2012 Radius. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RIBCollectionViewCommon.h"

@interface RIBCollectionView : RIBPlatformCollectionView

@property (nonatomic, assign) IBOutlet id <RIBPlatformCollectionViewDelegate> delegate;
@property (nonatomic, assign) IBOutlet id <RIBPlatformCollectionViewDataSource> dataSource;

@end
