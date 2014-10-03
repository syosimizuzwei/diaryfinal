//
//  PassSetViewController.h
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/09/12.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PassSetViewController : UIViewController
{
    
    IBOutlet UILabel * onelabel;
    IBOutlet UILabel * twolabel;
    
    IBOutlet UILabel * threelabel;
    
    IBOutlet UILabel * fourlabel;
    
    int first ;
    int second ;
    
    int third;
    int fourth ;
    int hantei;
    NSString *save;
    
    
}
-(IBAction)one;
-(IBAction)two;
-(IBAction)three;
-(IBAction)four;
-(IBAction)five;
-(IBAction)six;
-(IBAction)seven;
-(IBAction)eight;
-(IBAction)nine;
-(IBAction)zero;
-(IBAction)cancel;
-(IBAction)set;
@end
