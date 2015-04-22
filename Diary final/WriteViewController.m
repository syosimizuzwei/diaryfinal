//
//  WriteViewController.m
//  Diary final
//
//  Created by 清水 翔太郎 on 2014/08/04.
//  Copyright (c) 2014年 清水 翔太郎. All rights reserved.
//

#import "WriteViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>


@interface WriteViewController ()

@end

@implementation WriteViewController

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
    self.textview.delegate = self;
    // [「改行（Return）」キーの設定]
    self.textview.returnKeyType = UIReturnKeyDone;
    _textview.layer.borderWidth = 1 ;
    _textview.layer.borderColor = [[UIColor blackColor] CGColor];
    titleInput.delegate=self;
    index=0;
    library = [[ALAssetsLibrary alloc]init];
    _textview.text =[NSString stringWithFormat:@"sumple"];1
    
    ;
    
    magicalContext= [NSManagedObjectContext MR_defaultContext];
    
    
}


- (void)viewWillAppear:(BOOL)animated direction:direction {
    if(_diaryid>=0){
        NSLog(@"%d", _diaryid);
        diaryListArray = [NSMutableArray arrayWithArray:[DiaryData MR_findAll]];
        
        NSLog(@"dairyListArray == %@", diaryListArray);
        
        DiaryData *dd = [diaryListArray objectAtIndex:_diaryid ] ;
        NSLog(@"%@ %@ %@", [dd title], [dd main], [dd photoimage]);
        
        titleInput.text=dd.title;
        
        _textview.text=dd.main;
        
        
        NSLog(@"url: %@", dd.photoimage);
        
        NSURL *url  =  [NSURL  URLWithString : dd.photoimage ];
        ALAssetsLibraryAssetForURLResultBlock resultblock = ^(ALAsset *myasset)
        {
            ALAssetRepresentation *rep = [myasset defaultRepresentation];
            CGImageRef iref = [rep fullResolutionImage];
            if (iref) {
                _imageview.image = [UIImage imageWithCGImage:iref];
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
    
    //共通の処理はここに書く
    //つまり viewWillAppear:(BOOL)animated の方はオーバーライドすべきではない
    
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
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [
     textField resignFirstResponder];
    return YES;
}
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
    // YES if the old text should be replaced by the new text;
    // NO if the replacement operation should be aborted. (Apple's Reference より)
}
-(void)showPhoto:(NSString *)url
{
    //URLからALAssetを取得
    [library assetForURL:[NSURL URLWithString:url]
             resultBlock:^(ALAsset *asset) {
                 
                 //画像があればYES、無ければNOを返す
                 if(asset){
                     NSLog(@"データがあります");
                     //ALAssetRepresentationクラスのインスタンスの作成
                     ALAssetRepresentation *assetRepresentation = [asset defaultRepresentation];
                     
                     //ALAssetRepresentationを使用して、フルスクリーン用の画像をUIImageに変換
                     //fullScreenImageで元画像と同じ解像度の写真を取得する。
                     UIImage *fullscreenImage = [UIImage imageWithCGImage:[assetRepresentation fullScreenImage]];
                     self.imageview.image = fullscreenImage; //イメージをセット
                 }else{
                     NSLog(@"データがありません");
                 }
                 
             } failureBlock: nil];
}
//撮影終了後に「use」を押すと呼び出されるメソッド。
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //カメラライブラリから選んだ写真のURLを取得。
    assetsUrl = [(NSURL *)[info objectForKey:@"UIImagePickerControllerReferenceURL"] absoluteString];
    [self showPhoto:assetsUrl];
    
    [picker dismissViewControllerAnimated:YES completion:nil];  //元の画面に戻る
}

- (IBAction)tapCameraButton:(id)sender {
    //イメージピッカーカメラを生成
    UIImagePickerController *picker =
    [[UIImagePickerController alloc] init];
    picker.delegate = (id)self;
    
    picker.allowsEditing = NO;  //撮影後に編集可能にするかの設定
    
    // 画像の取得先をカメラに設定
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    //pickerViewに遷移させる
    [self presentViewController:picker animated:YES completion:nil];
}
//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//    NSArray *array = self.navigationController.viewControllers;
//    int arrayCount = [array count];
//    HogeViewController *parent = [array objectAtIndex:arrayCount - 1];
//    parent.piyo = piyo;
//}




-(IBAction)save{
    
    [MagicalRecord setupCoreDataStack];
    
    magicalContext= [NSManagedObjectContext MR_defaultContext];
    
    DiaryData *dd = [DiaryData MR_createEntity];
    dd.title = titleInput.text;
    dd.main = _textview.text;
    dd.photoimage = assetsUrl;
    dd.dayValue = 1234;
    [magicalContext MR_saveOnlySelfAndWait];
    
    NSArray *res = [DiaryData MR_findAll];
    [res count];
    NSLog(@"aho %d", [res count]);
    
    /*
    
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:
                         assetsUrl,"image",
                         titleInput, "title",
                         _textview.text, "text",
                         nil];
    NSLog(@"%@", @"saved");*/
    
    // 生成
    
    [self.navigationController popViewControllerAnimated:YES];

}










@end
