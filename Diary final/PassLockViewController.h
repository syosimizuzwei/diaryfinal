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
    
    int first ;
    
    
    
    
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
