//
//  DiaryListViewController.h
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/08/04.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>

#import "DiaryData.h"
#import "LookViewController.h"

@interface DiaryListViewController : UITableViewController
{

    NSArray *diaryListArray;
    IBOutlet UIImageView *diaryImage;;
    IBOutlet UILabel *titlelabel;;
}

@property(nonatomic) int diaryid;
@property(nonatomic) int reid;
@end
