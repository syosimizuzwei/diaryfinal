//
//  CalenderViewController.m
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/10/03.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import "CalenderViewController.h"

@interface CalenderViewController ()

@end

@implementation CalenderViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /* -- カレンダーを作って貼り付け -- */
	CKCalendarView *calendar = [[CKCalendarView alloc] init];
    calendar.delegate = self;
    [self.view addSubview:calendar];
    
    //calendar.onlyShowCurrentMonth = NO;
}




#pragma mark - カレンダーのデリゲートメソッド
- (BOOL)calendar:(CKCalendarView *)calendar willSelectDate:(NSDate *)date {
    /* -- 日付選択前に呼ばれる -- */
    return [calendar dateIsInCurrentMonth:date];
}


#pragma mark - 日付選択したとき
- (void)calendar:(CKCalendarView *)calendar didSelectDate:(NSDate *)date {
    
    /* -- 日本時間に変換して送信用の変数に格納 -- */
    /* -- http://bit.ly/NW31ze -- */
    
    sendDate = [date initWithTimeInterval:[[NSTimeZone systemTimeZone] secondsFromGMT] sinceDate:date];
    
    
    /* -- 画面遷移 -- */
    [self performSegueWithIdentifier:@"Detail" sender:self];
    
}


- (void)calendar:(CKCalendarView *)calendar didDeselectDate:(NSDate *)date {
    /* -- 選択解除したときの処理 -- */
}

- (BOOL)calendar:(CKCalendarView *)calendar willChangeToMonth:(NSDate *)date {
    /* -- 月を変更する前に呼ばれる -- */
    return YES;
}

- (void)calendar:(CKCalendarView *)calendar didChangeToMonth:(NSDate *)date {
    /* -- 月を変更後に呼ばれる -- */
}

- (void)calendar:(CKCalendarView *)calendar configureDateItem:(CKDateItem *)dateItem forDate:(NSDate *)date {
    
    /* -- 選択した日付のアイテムの色を変更する場合 -- */
    //    if ([_chosenDates containsObject:date]) {
    //        dateItem.backgroundColor = [UIColor greenColor];
    //    }
}


//#pragma mark - 画面遷移
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if ([segue.identifier isEqualToString:@"Detail"]) {
//        DetailViewController *detailViewController = segue.destinationViewController;
//        /* -- DetailViewControllerに値を渡す -- */
//        detailViewController.receivedDate = sendDate;
//    }
//}


@end
