//
//  RIBCollectionViewCommon.h
//  InterfaceBuilder
//
//  Created by Evadne Wu on 9/26/12.
//  Copyright (c) 2012 Radius. All rights reserved.
//

#if __IPHONE_OS_VERSION_MIN_REQUIRED < 60000
	#import "PSTCollectionViewController.h"
	#define RIBPlatformCollectionView PSTCollectionView
	#define RIBPlatformCollectionViewLayout PSTCollectionViewLayout
	#define RIBPlatformCollectionViewController PSTCollectionViewController
	#define RIBPlatformCollectionViewDelegate PSTCollectionViewDelegate
	#define RIBPlatformCollectionViewDataSource PSTCollectionViewDataSource
	#define RIBPlatformCollectionViewCell PSTCollectionViewCell
#else
	#define RIBPlatformCollectionView UICollectionView
	#define RIBPlatformCollectionViewLayout UICollectionViewLayout
	#define RIBPlatformCollectionViewController UICollectionViewController
	#define RIBPlatformCollectionViewDelegate UICollectionViewDelegate
	#define RIBPlatformCollectionViewDataSource UICollectionViewDataSource
	#define RIBPlatformCollectionViewCell UICollectionViewCell
#endif
