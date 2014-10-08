//
//  CalenderViewController.h
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/10/03.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CKCalendarView.h"

#import "DayGetter.h"//曜日表示用ファイル

#import "DiaryListViewController.h"


@interface CalenderViewController : UIViewController<CKCalendarDelegate>
//CKカレンダーのデリゲートメソッド宣言
{
    /* -- DetailViewControllerに渡すNSDate -- */
    NSDate *sendDate;
}
//@property (nonatomic)NSDate *receivedDate;

@end
