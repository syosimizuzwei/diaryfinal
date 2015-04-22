//
//  PassSetViewController.m
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/09/12.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import "PassSetViewController.h"

@interface PassSetViewController ()

@end

@implementation PassSetViewController

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


- (void)viewWillAppear:(BOOL)animated{
    NSUserDefaults *ud=[NSUserDefaults standardUserDefaults];

   
    
    
    
//    int first =[defoults objectForKey:save];
//    int second=[defoults objectForKey:save];

    
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

-(IBAction)set{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setInteger:(NSInteger)first
            forKey:@"pass"];
    [ud synchronize];
}

-(IBAction)clear{
    first=0;
    onelabel.text=[NSString stringWithFormat:@"%d",first];
}



@end
