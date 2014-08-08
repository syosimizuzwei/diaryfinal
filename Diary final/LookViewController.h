//
//  LookViewController.h
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/08/07.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "DiaryData.h"

@interface LookViewController : UIViewController<UIPickerViewDataSource, UITextFieldDelegate,UITextViewDelegate,UIAccelerometerDelegate>

{
    IBOutlet UITextField *titleoutput;
    NSArray *diaryListArray;
    NSString *assetsUrl;
    ALAssetsLibrary *library;
    NSIndexPath *num;
    NSManagedObjectContext *magicalContext;
    NSDictionary *dic;

}



@property(weak,nonatomic)IBOutlet UIImageView *photoview;
@property(weak,nonatomic)IBOutlet UITextView *textoutputview;
@property(nonatomic) int diaryid;

@property(nonatomic) int reid;

@end
