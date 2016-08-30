//
//  Tools.h
//  Tools
//
//  Created by jit-mac on 16/8/30.
//  Copyright © 2016年 LLH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Tools : NSObject


+ (void)showSuccess;
+ (void)showSuccess:(NSString *)message;

+ (void)showFailure;
+ (void)showFailure:(NSString *)message;
+ (void)showAlertViewWithTitle:(NSString *)title message:(NSString *)message;
+ (NSString *)getTimestampFromNowTime;

+(NSString *)filterString:(NSString *)string;//过滤字符串(过滤空格)

+(BOOL)checkEmail:(NSString *)email;//用正则检查邮箱格式是否正确
+(BOOL)checkMobile:(NSString *)mobile;//检查字符串是否为手机号码
-(NSString *)getTimestampFromBeiJingTime:(NSString *)beijingTime;
-(NSString *)getBeiJingTimeFromTimestamp:(NSString *)timestamp;
@end
