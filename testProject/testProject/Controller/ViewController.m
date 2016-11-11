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

    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 175, 50)];
    [self.view addSubview:btn];

    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    [btn addObserver:self forKeyPath:@"highlighted" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:@"hahah"];
    
//    CFRunLoopObserverRef observer = CFRunLoopObserverCreateWithHandler(CFAllocatorGetDefault(), kCFRunLoopAllActivities, YES, 0, ^(CFRunLoopObserverRef observer, CFRunLoopActivity activity) {
//        
//        NSLog(@"监听到的RunLoop状态的改变---%zd", activity);
//    });
//    
//    CFRunLoopAddObserver(CFRunLoopGetCurrent(), observer, kCFRunLoopDefaultMode);
//    
//    // 凡是CF开头的函数创建出来的对象, 都要释放
//    CFRelease(observer);
    
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {

    if (context == @"hahah") {
    
        NSLog(@"keyPath= %@, object= %@, change= %@, context= %@", keyPath, object, change, context);
    }
    
    
}

- (void)btnClick {

    NSLog(@"********************************");
    
    UIImageView *imageView = [[UIImageView alloc] init];
    
    [imageView performSelector:@selector(setImage:) withObject:[UIImage imageNamed:@"2.png"] afterDelay:3.0 inModes:@[NSDefaultRunLoopMode]];
}

@end
