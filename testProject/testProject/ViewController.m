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
    
//    UIImage *image = [UIImage imageNamed:@"2.jpg"];
//    UIGraphicsBeginImageContextWithOptions(image.size, YES, 0);
//    [image drawAtPoint:CGPointMake(0, 0)];
//    UIImage *image1 = [UIImage imageNamed:@"vip_ic_reason_1"];
//    [image1 drawAtPoint:CGPointMake(200, 200)];
//    NSString *str = @"我是超人";
//    [str drawAtPoint:CGPointMake(120, 120) withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]}];
//    UIImage *image11 = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
//    NSData *data = UIImageJPEGRepresentation(image11, 1);
//    [data writeToFile:@"/Users/zhoupengju/Desktop/test@.png" atomically:YES];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 175, 50)];
    [self.view addSubview:btn];

    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    CFRunLoopObserverRef observer = CFRunLoopObserverCreateWithHandler(CFAllocatorGetDefault(), kCFRunLoopAllActivities, YES, 0, ^(CFRunLoopObserverRef observer, CFRunLoopActivity activity) {
        
        NSLog(@"监听到的RunLoop状态的改变---%zd", activity);
    });
    
    CFRunLoopAddObserver(CFRunLoopGetCurrent(), observer, kCFRunLoopDefaultMode);
    
    // 凡是CF开头的函数创建出来的对象, 都要释放
    CFRelease(observer);
    
}

- (void)btnClick {

    NSLog(@"********************************");
    
    UIImageView *imageView = [[UIImageView alloc] init];
    
    [imageView performSelector:@selector(setImage:) withObject:[UIImage imageNamed:@"2.png"] afterDelay:3.0 inModes:@[NSDefaultRunLoopMode]];
}

@end
