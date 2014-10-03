//
//  PassLockViewController.m
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/09/05.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import "PassLockViewController.h"

@interface PassLockViewController ()

@end

@implementation PassLockViewController

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
    hantei=1;
}

- (void)viewWillAppear:(BOOL)animated{
//    NSUserDefaults *defoults=[NSUserDefaults standardUserDefaults];
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)one{
    if (hantei==1) {
    first=1;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    hantei=2;}
    if (hantei==2) {
        second=1;
        hantei=3;
        twolabel.text=[NSString stringWithFormat:@"%d",second];
    }
    if (hantei==3) {
        third=1;
        hantei=4;
        threelabel.text=[NSString stringWithFormat:@"%d",third];
    }
    if (hantei==4) {
        fourth=1;
        hantei=5;
        fourlabel.text=[NSString stringWithFormat:@"%d",fourth];
    }
}
-(IBAction)two{
    if (hantei==1) {
        first=2;
        onelabel.text=[NSString stringWithFormat:@"%d",first];
        hantei=2;}
    if (hantei==2) {
        second=2;
        hantei=3;
        twolabel.text=[NSString stringWithFormat:@"%d",second];
    }
    if (hantei==3) {
        third=2;
        hantei=4;
        threelabel.text=[NSString stringWithFormat:@"%d",third];
    }
    if (hantei==4) {
        fourth=2;
        hantei=5;
        fourlabel.text=[NSString stringWithFormat:@"%d",fourth];
    }
}
-(IBAction)three{
    if (hantei==1) {
        first=3;
        onelabel.text=[NSString stringWithFormat:@"%d",first];
        hantei=2;}
    if (hantei==2) {
        second=3;
        hantei=3;
        twolabel.text=[NSString stringWithFormat:@"%d",second];
    }
    if (hantei==3) {
        third=3;
        hantei=4;
        threelabel.text=[NSString stringWithFormat:@"%d",third];
    }
    if (hantei==4) {
        fourth=3;
        hantei=5;
        fourlabel.text=[NSString stringWithFormat:@"%d",fourth];
    }
}
-(IBAction)four{
    if (hantei==1) {
        first=4;
        onelabel.text=[NSString stringWithFormat:@"%d",first];
        hantei=2;}
    if (hantei==2) {
        second=4;
        hantei=3;
        twolabel.text=[NSString stringWithFormat:@"%d",second];
    }
    if (hantei==3) {
        third=4;
        hantei=4;
        threelabel.text=[NSString stringWithFormat:@"%d",third];
    }
    if (hantei==4) {
        fourth=4;
        hantei=5;
        fourlabel.text=[NSString stringWithFormat:@"%d",fourth];
    }
}
-(IBAction)five{
    if (hantei==1) {
        first=5;
        onelabel.text=[NSString stringWithFormat:@"%d",first];
        hantei=2;}
    if (hantei==2) {
        second=5;
        hantei=3;
        twolabel.text=[NSString stringWithFormat:@"%d",second];
    }
    if (hantei==3) {
        third =5;
        hantei=4;
        threelabel.text=[NSString stringWithFormat:@"%d",third];
    }
    if (hantei==4) {
        fourth=5;
        hantei=5;
        fourlabel.text=[NSString stringWithFormat:@"%d",fourth];
    }
}
-(IBAction)six{
    if (hantei==1) {
        first=6;
        onelabel.text=[NSString stringWithFormat:@"%d",first];
        hantei=2;}
    if (hantei==2) {
        second=6;
        hantei=3;
        twolabel.text=[NSString stringWithFormat:@"%d",second];
    }
    if (hantei==3) {
        third=6;
        hantei=4;
        threelabel.text=[NSString stringWithFormat:@"%d",third];
    }
    if (hantei==4) {
        fourth=6;
        hantei=5;
        fourlabel.text=[NSString stringWithFormat:@"%d",fourth];
    }
}
-(IBAction)seven{
    if (hantei==1) {
        first=7;
        onelabel.text=[NSString stringWithFormat:@"%d",first];
        hantei=2;}
    if (hantei==2) {
        second=7;
        hantei=3;
        twolabel.text=[NSString stringWithFormat:@"%d",second];
    }
    if (hantei==3) {
        third=7;
        hantei=4;
        threelabel.text=[NSString stringWithFormat:@"%d",third];
    }
    if (hantei==4) {
        fourth=7;
        hantei=5;
        fourlabel.text=[NSString stringWithFormat:@"%d",fourth];
    }
}
-(IBAction)eight{
    if (hantei==1) {
        first=8;
        onelabel.text=[NSString stringWithFormat:@"%d",first];
        hantei=2;}
    if (hantei==2) {
        second=8;
        hantei=3;
        twolabel.text=[NSString stringWithFormat:@"%d",second];
    }
    if (hantei==3) {
        third=8;
        hantei=4;
        threelabel.text=[NSString stringWithFormat:@"%d",third];
    }
    if (hantei==4) {
        fourth=8;
        hantei=5;
        fourlabel.text=[NSString stringWithFormat:@"%d",fourth];
    }
}
-(IBAction)nine{
    if (hantei==1) {
        first=9;
        onelabel.text=[NSString stringWithFormat:@"%d",first];
        hantei=2;}
    if (hantei==2) {
        second=9;
        hantei=3;
        twolabel.text=[NSString stringWithFormat:@"%d",second];
    }
    if (hantei==3) {
        third=9;
        hantei=4;
        threelabel.text=[NSString stringWithFormat:@"%d",third];
    }
    if (hantei==4) {
        fourth=9;
        hantei=5;
        fourlabel.text=[NSString stringWithFormat:@"%d",fourth];
    }
}
-(IBAction)zero{
    if (hantei==1) {
        first=0;
        onelabel.text=[NSString stringWithFormat:@"%d",first];
        hantei=2;}
    if (hantei==2) {
        second=0;
        hantei=3;
        twolabel.text=[NSString stringWithFormat:@"%d",second];
    }
    if (hantei==3) {
        third=0;
        hantei=4;
        threelabel.text=[NSString stringWithFormat:@"%d",third];
    }
    if (hantei==4) {
        fourth=0;
        hantei=5;
        fourlabel.text=[NSString stringWithFormat:@"%d",fourth];
    }
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
