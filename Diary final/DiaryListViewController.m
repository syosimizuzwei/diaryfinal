//
//  DiaryListViewController.m
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/08/04.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import "DiaryListViewController.h"

@interface DiaryListViewController ()

@end

@implementation DiaryListViewController
@synthesize receivedDate;




- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated direction:direction {

    
    //共通の処理はここに書く
    //つまり viewWillAppear:(BOOL)animated の方はオーバーライドすべきではない
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
//    UIBarButtonItem* rightItem = [[UIBarButtonItem alloc] initWithTitle:@"完了"
//                                                                 target:self
//                                                                 action:@selector(clickDone:)];
//    self.navigationItem.rightBarButtonItem = rightItem;
//    
//    
//
}

-(void)viewDidAppear:(BOOL)animated {
    diaryListArray = [NSMutableArray arrayWithArray:[DiaryData MR_findAll]];
    
        NSLog(@"%d", [diaryListArray count]);
    [self.tableView reloadData];
    
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    /* -- 受け取ったデータをローカル変数に -- */
    NSDate *date = receivedDate;
    
    /* -- 生データを分かりやすいフォーマットに -- */
    /* -- 参考文献(http://age-d.com/alog/2012/07/ios-tips-nsdate/) -- */
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComps = [calendar components:NSYearCalendarUnit |
                                   NSMonthCalendarUnit  |
                                   NSDayCalendarUnit    |
                                   NSHourCalendarUnit   |
                                   NSMinuteCalendarUnit |
                                   NSSecondCalendarUnit
                                              fromDate:date];
    NSLog(@"現在は %d年 %02d月 %02d日 %02d時 %02d分 %02d秒",
          (int)dateComps.year,
          (int)dateComps.month,
          (int)dateComps.day,
          (int)dateComps.hour,
          (int)dateComps.minute,
          (int)dateComps.second);
    
    /* -- 受け渡されたデータをタイトルに表示 -- */
    str = [NSString stringWithFormat:@"%d年%d月%d日", (int)dateComps.year, (int)dateComps.month, (int)dateComps.day];
    self.navigationItem.title = str;
    
    
    /* -- ユーザーデフォルトから日付のキーでデータを取得し、ボタンの背景画像に -- */
    NSUserDefaults *udtwo = [NSUserDefaults standardUserDefaults];
    NSData *imageData = [udtwo objectForKey:str];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [diaryListArray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"diary_entry"];
    UILabel *label1 = (UILabel*)[cell viewWithTag:1];
    UIImageView *imageview = (UIImageView*)[cell viewWithTag:2];
    
    NSLog(@"updating row %d ", [indexPath row]);
    
    DiaryData *dd = [diaryListArray objectAtIndex:[indexPath row]] ;
    label1.text = dd.title;
    
    NSLog(@"url");
    
    NSURL *url  =  [NSURL  URLWithString : dd.photoimage ];
    NSData *data =  [NSData dataWithContentsOfURL: url];
    
    ALAssetsLibraryAssetForURLResultBlock resultblock = ^(ALAsset *myasset)
    {
        ALAssetRepresentation *rep = [myasset defaultRepresentation];
        CGImageRef iref = [rep fullResolutionImage];
        if (iref) {
            imageview.image = [UIImage imageWithCGImage:iref];
        }
    };
    
    //
    ALAssetsLibraryAccessFailureBlock failureblock  = ^(NSError *myerror)
    {
        NSLog(@"booya, cant get image - %@",[myerror localizedDescription]);
    };
    
    ALAssetsLibrary* assetslibrary = [[ALAssetsLibrary alloc] init];
    [assetslibrary assetForURL:url
                   resultBlock:resultblock
                  failureBlock:failureblock];
    
    
    
    /*
NSURL *urlsecond= (NSURL*) [[asset valueForProperty:ALAssetPropertyURLs] valueForKey:[[[asset valueForProperty:ALAssetPropertyURLs] allKeys] objectAtIndex:0]];
    
    
    ALAssetsLibraryAssetForURLResultBlock resultblock = ^(ALAsset *myasset)
    {
        ALAssetRepresentation *rep = [myasset defaultRepresentation];
        @autoreleasepool {
            CGImageRef iref = [rep fullScreenImage];
            if (iref) {
                UIImage *image = [UIImage imageWithCGImage:iref];
                self.url = image;
                dispatch_async(dispatch_get_main_queue(), ^{
                    //UIMethod trigger...
                });
                iref = nil;
            }
        }
    };
    
    ALAssetsLibraryAccessFailureBlock failureblock  = ^(NSError *myerror)
    {
        NSLog(@"Can't get image - %@",[myerror localizedDescription]);
    };
    
    ALAssetsLibrary* assetslibrary = [[ALAssetsLibrary alloc] init];
    [assetslibrary assetForURL:url
                   resultBlock:resultblock
                  failureBlock:failureblock];
     
     */

    return cell;
    
}




- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES]; // 選択状態の解除をします。
    
    _diaryid = [indexPath row];
    
    NSLog(@"diaryid == %d", _diaryid);
    
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

 
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"toLookView"]){
        LookViewController *lvc = (LookViewController*)[segue destinationViewController];
        //lvc.diaryid = _diaryid;
        
        
        
        lvc.diaryid = [self.tableView.indexPathForSelectedRow row];
        NSLog(@"sdjんゔぃうbゔぃwづ === %d", lvc.diaryid);
        //[self presentModalViewController:lvc animated:YES];

    }
    // Pass the selected object to the new view controller.
}




- (void)dismissDiaryView {
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}



-(IBAction)back{
    
}







@end
