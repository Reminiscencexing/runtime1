//
//  ViewController.m
//  runtime
//
//  Created by zengqiang xing on 2018/6/5.
//  Copyright © 2018年 zengqiang xing. All rights reserved.
//  利用 runtime 交换方法


//  需求：给imageNamed方法提供功能，每次加载图片就判断下图片是否加载成功。
#import "ViewController.h"
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image=[UIImage imageNamed:@"131"];
}
@end
