//
//  DiaryListViewController.h
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/08/04.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "CKCalendarView.h"
#import "DiaryData.h"
#import "LookViewController.h"

@interface DiaryListViewController : UITableViewController<UINavigationControllerDelegate>
{

    NSArray *diaryListArray;
    IBOutlet UIImageView *diaryImage;
    IBOutlet UILabel *titlelabel;
    NSString *str;//日付の文字列を格納する変数

}
-(IBAction)back;

@property(nonatomic)NSDate*receivedDate;
@property(nonatomic) int diaryid;
@property(nonatomic) int reid;
@end
