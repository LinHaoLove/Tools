# Tools
在 iOS 日常开发中可能用到的简单工具.提示框,以及对字符串处理

1,将 Tools.h Tools.m 导入到你的项目中

2,导入头文件#import "Tools.h"
3,众多方法请在 Tools.h 中查看,部分实例如下:

对于+方法可以直接调用

    NSString *mobile=@"13 4567 890 ";
    mobile=[Tools filterString:mobile];//过滤空白字符
    if ([Tools checkEmail:mobile]) {
        [Tools showSuccess:@"是手机号码"];
    }else{
        [Tools showFailure:@"不是手机号码"];
    }
    
对于-方法

       Tools *tools=[[Tools alloc]init];
    //北京时间格式统一yyyy-MM-dd,如有需求,请自行修改
    NSLog(@"北京时间==>时间戳:%@",[tools getTimestampFromBeiJingTime:@"2016-8-30"]);
    NSLog(@"时间戳==>北京时间:%@",[tools getBeiJingTimeFromTimestamp:@"1472486400"]);
