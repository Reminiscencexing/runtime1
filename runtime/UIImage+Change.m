//
//  UIImage+Change.m
//  runtime
//
//  Created by zengqiang xing on 2018/6/5.
//  Copyright © 2018年 zengqiang xing. All rights reserved.
//

#import "UIImage+Change.h"
#import <objc/runtime.h>
@implementation UIImage (Change)


#pragma mark - 交换方法
+(void)load
{
    
    // 获取imageWithName方法地址
    Method imageWithName=class_getClassMethod(self, @selector(imageWithName:));
    // 获取imageNamed方法地址
    Method imageName=class_getClassMethod(self, @selector(imageNamed:));
    // 交换方法地址，相当于交换实现方式
    method_exchangeImplementations(imageWithName, imageName);
    
}
// 不能在分类中重写系统方法imageNamed,因为他会把系统的功能覆盖掉，而且分类中不能调用super
+(instancetype)imageWithName:(NSString *)name
{
  // 这里调用imageWithName，相当于调用imageNamed
    UIImage *image=[self imageWithName:name];
    if(image==nil)
    {
        NSLog(@"加载的照片是空的");
    }
    return image;

}

@end
