//
//  PassLockViewController.h
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/09/05.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PassLockViewController : UIViewController<UIAccelerometerDelegate>{
    
     IBOutlet UILabel * onelabel;
    IBOutlet UILabel * twolabel;

    IBOutlet UILabel * threelabel;

    IBOutlet UILabel * fourlabel;

    int first ;
    int second ;

    int third;
    int fourth ;
    int hantei;
    
    
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



@end
