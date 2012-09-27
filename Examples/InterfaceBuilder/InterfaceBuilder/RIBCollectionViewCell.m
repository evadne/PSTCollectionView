//
//  RIBCollectionViewCell.m
//  InterfaceBuilder
//
//  Created by Evadne Wu on 9/26/12.
//  Copyright (c) 2012 Radius. All rights reserved.
//

#import "RIBCollectionViewCell.h"

@implementation RIBCollectionViewCell

+ (void) load {

	NSLog(@"%s; superclass %@", __PRETTY_FUNCTION__, NSStringFromClass([self superclass]));

}

+ (id) alloc {

	NSLog(@"%s; superclass %@", __PRETTY_FUNCTION__, NSStringFromClass([self superclass]));
	
	return [super alloc];

}

@end
