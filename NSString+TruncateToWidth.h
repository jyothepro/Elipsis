//
//  NSString+TruncateToWidth.h
//  AlbumSyncer
//
//  Created by Jyothidhar Pulakunta on 7/30/12.
//  Copyright (c) 2012 jyothepro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TruncateToWidth)

- (NSString*)stringByTruncatingToWidth:(CGFloat)width withFont:(UIFont *)font;

@end
