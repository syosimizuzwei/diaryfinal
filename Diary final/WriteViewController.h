//
//  WriteViewController.h
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/08/04.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "DiaryData.h"
@interface WriteViewController : UIViewController<UIPickerViewDataSource, UITextFieldDelegate,UITextViewDelegate,UIAccelerometerDelegate>
{
    int index;
    IBOutlet UITextField *titleInput;
NSArray *diaryListArray;
        NSString *assetsUrl;
        ALAssetsLibrary *library;
    NSManagedObjectContext *magicalContext;
    NSDictionary *dic;
    int num;
}



@property(weak,nonatomic)IBOutlet UIImageView *imageview;
@property(weak,nonatomic)IBOutlet UITextView *textview;

//-(void)textViewDidChange: (UITextView*) textView ;
//-(IBAction)button:(id)sender;
- (IBAction)tapCameraButton:(id)sender;
-(IBAction)userDefaultDone:(id)sender;
@property(nonatomic) int diaryid;
@property(nonatomic) int reid;


@end
