//
//  ViewController.m
//  testProject
//
//  Created by 周鹏钜 on 16/10/25.
//  Copyright © 2016年 周鹏钜. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
//    [self.view addSubview:imageView];
//    imageView.backgroundColor = [UIColor whiteColor];
//    
//    // 创建一个bitmap的上下文
//    UIGraphicsBeginImageContextWithOptions(CGSizeMake(50, 50), YES, 0);
//    
//    // 获取bitmap上下文
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    // 绘图
////    CGContextAddEllipseInRect(context, CGRectMake(0, 0, 50, 50));
////    
////    // 渲染
////    CGContextStrokePath(context);
//    
//    CGContextFillRect(context, CGRectMake(0, 0, 50, 50));
//    
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    imageView.image = image;
//    
//    NSData *data = UIImageJPEGRepresentation(image, 1);
//    [data writeToFile:@"" atomically:YES];
    
    UIImage *image = [UIImage imageNamed:@"2.jpg"];
    UIGraphicsBeginImageContextWithOptions(image.size, YES, 0);
    [image drawAtPoint:CGPointMake(0, 0)];
    UIImage *image1 = [UIImage imageNamed:@"vip_ic_reason_1"];
    [image1 drawAtPoint:CGPointMake(200, 200)];
    NSString *str = @"我是超人";
    [str drawAtPoint:CGPointMake(120, 120) withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]}];
    UIImage *image11 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    NSData *data = UIImageJPEGRepresentation(image11, 1);
    [data writeToFile:@"/Users/zhoupengju/Desktop/test@.png" atomically:YES];
}

@end
