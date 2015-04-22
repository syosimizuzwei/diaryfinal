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
}

- (void)viewWillAppear:(BOOL)animated{
    
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)one{
    first=first*10+1;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    
}
-(IBAction)two{
    first=first*10+2;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    
    
}
-(IBAction)three{
    first=first*10+3;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    
    
}
-(IBAction)four{
    first=first*10+4;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    
    
}
-(IBAction)five{
    first=first*10+5;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    
}
-(IBAction)six{
    first=first*10+6;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    
}
-(IBAction)seven{
    first=first*10+7;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    
}
-(IBAction)eight{
    first=first*10+8;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    
}
-(IBAction)nine{
    
    first=first*10+9;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    
}
-(IBAction)zero{
    first=first*10+0;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
    
}





-(IBAction)go{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    int number = [ud integerForKey:@"pass"];
    if(first!=number){
        
        //パスワードが違う場合
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"エラー" message:@"ログインできません" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
        [self performSegueWithIdentifier:@"start" sender:nil];
                
        
    }else
    {
        //パスパードがあっていた場合
        [self performSegueWithIdentifier:@"start" sender:self];
       //[self presentmodalViewController:CalenderViewController animated:YES];
           }
}








-(IBAction)clear{
    first=0;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
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
