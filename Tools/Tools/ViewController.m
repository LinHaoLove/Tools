//
//  ViewController.m
//  Tools
//
//  Created by jit-mac on 16/8/30.
//  Copyright © 2016年 LLH. All rights reserved.
//

#import "ViewController.h"
#import "Tools.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    Tools *tools=[[Tools alloc]init];
    //北京时间格式统一yyyy-MM-dd,如有需求,请自行修改
    NSLog(@"北京时间==>时间戳:%@",[tools getTimestampFromBeiJingTime:@"2016-8-30"]);
    NSLog(@"时间戳==>北京时间:%@",[tools getBeiJingTimeFromTimestamp:@"1472486400"]);
    
    
    NSString *mobile=@"13 4567 890 ";
    mobile=[Tools filterString:mobile];//过滤空白字符
    if ([Tools checkEmail:mobile]) {
        [Tools showSuccess:@"是手机号码"];
    }else{
        [Tools showFailure:@"不是手机号码"];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
