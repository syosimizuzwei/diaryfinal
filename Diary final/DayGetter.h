//
//  DayGetter.h
//  CalenderSample
//
//  Created by Master on 2014/03/06.
//  Copyright (c) 2014年 jp.co.mappy. All rights reserved.
//


#pragma mark - 参考文献
/* -- http://ch3cooh.hatenablog.jp/entry/20120328/1332867424 -- */

#import <Foundation/Foundation.h>

@interface DayGetter : NSDate

// 曜日のインデックス値を取得する
- (NSInteger) weekday;
// 短い曜日(例:火曜日ならば火など)を取得する
- (NSString*) stringShortweekday;

@end
