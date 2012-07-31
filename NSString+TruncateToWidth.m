//
//  NSString+TruncateToWidth.m
//  AlbumSyncer
//
//  Created by Jyothidhar Pulakunta on 7/30/12.
//  Copyright (c) 2012 jyothepro. All rights reserved.
//

#import "NSString+TruncateToWidth.h"

#define ellipsis @"…"

@implementation NSString (TruncateToWidth)

- (NSString*)stringByTruncatingToWidth:(CGFloat)width withFont:(UIFont *)font {
	NSMutableString *truncatedString = [self mutableCopy];
	
	// String is longer than the specified width
	if ([self sizeWithFont:font].width > width) {
		width -= [ellipsis sizeWithFont:font].width;
		NSRange range = {truncatedString.length - 1, 1};
		while ([truncatedString sizeWithFont:font].width > width) {
			[truncatedString deleteCharactersInRange:range];
			range.location--;
		}
		// Append ellipsis
		[truncatedString replaceCharactersInRange:range withString:ellipsis];
	}
	
	return truncatedString;
}

@end
