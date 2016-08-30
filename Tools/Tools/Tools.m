//
//  Tools.m
//  Tools
//
//  Created by jit-mac on 16/8/30.
//  Copyright © 2016年 LLH. All rights reserved.
//

#import "Tools.h"
@interface Tools ()

@property(nonatomic,strong)NSDateFormatter *dateFormatter;

@end



@implementation Tools
+ (void)showSuccess {
    [self showSuccess:@"成功"];
}

+ (void)showSuccess:(NSString *)message {
    [self showAlertView:message];
}

+ (void)showFailure {
    [self showFailure:@"失败"];
}

+ (void)showFailure:(NSString *)message {
    [self showAlertView:message];
}
+ (void)showAlertViewWithTitle:(NSString *)title message:(NSString *)message{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
    [alertView show];
}
+ (void)showAlertView:(NSString *)string {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:string message:nil delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
    [alertView show];
}
+(NSString *)filterString:(NSString *)string{
    string=[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    return string;
}
+(BOOL)checkEmail:(NSString *)email
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}
+(BOOL)checkMobile:(NSString *)mobile
{
    NSString *phoneRegex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneRegex];
    return [phoneTest evaluateWithObject:mobile];
}
+(NSString *)getTimestampFromNowTime{
    NSDate *senddate = [NSDate date];
    NSString *date2 = [NSString stringWithFormat:@"%ld", (long)[senddate timeIntervalSince1970]];
    return date2;
}

#pragma mark 一条华丽的分割线(+/-方法分割)

//北京时间格式:2016-8-30//如若其他格式,自行在下方修改NSDateFormatter即可
-(NSString *)getTimestampFromBeiJingTime:(NSString *)beijingTime{
    NSDate *date =[self.dateFormatter dateFromString:beijingTime];//北京时间格式:2016-8-30
    NSString *timeSp=[NSString stringWithFormat:@"%ld",(long)[date timeIntervalSince1970]];
    return timeSp;
}
-(NSString *)getBeiJingTimeFromTimestamp:(NSString *)timestamp{
    NSTimeInterval time=[timestamp doubleValue]+28800;
    NSDate *detaildate=[NSDate dateWithTimeIntervalSince1970:time];
    NSString *currentDateStr=[self.dateFormatter stringFromDate:detaildate];
    return currentDateStr;
}
-(NSDateFormatter *)dateFormatter{
    if (_dateFormatter==nil) {
        _dateFormatter=[[NSDateFormatter alloc] init];
        [_dateFormatter setDateFormat:@"yyyy-MM-dd"];
    }
    return _dateFormatter;
}
@end
