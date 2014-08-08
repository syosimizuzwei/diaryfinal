//
//  LookViewController.m
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/08/07.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import "LookViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface LookViewController ()

@end

@implementation LookViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    _diaryid=0;
}
- (void)viewWillAppear:(BOOL)animated{


    //cellForRowAtIndexPath:(NSIndexPath *)
    
    NSLog(@"%d", _diaryid);
    diaryListArray = [NSMutableArray arrayWithArray:[DiaryData MR_findAll]];
    DiaryData *dd = [diaryListArray objectAtIndex:_diaryid ] ;
    NSLog(@"%@ %@ %@", [dd title], [dd main], [dd photoimage]);
    
    titleoutput.text=dd.title;
    
    _textoutputview.text=dd.main;
    
    
    NSLog(@"url: %@", dd.photoimage);
    
    NSURL *url  =  [NSURL  URLWithString : dd.photoimage ];
    ALAssetsLibraryAssetForURLResultBlock resultblock = ^(ALAsset *myasset)
    {
        ALAssetRepresentation *rep = [myasset defaultRepresentation];
        CGImageRef iref = [rep fullResolutionImage];
        if (iref) {
            _photoview.image = [UIImage imageWithCGImage:iref];
        }
    };
    
    ALAssetsLibraryAccessFailureBlock failureblock  = ^(NSError *myerror)
    {
        NSLog(@"booya, cant get image - %@",[myerror localizedDescription]);
    };
    
    ALAssetsLibrary* assetslibrary = [[ALAssetsLibrary alloc] init];
    [assetslibrary assetForURL:url
                   resultBlock:resultblock
                  failureBlock:failureblock];
 
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













@end
