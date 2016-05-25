//
//  ViewController.m
//  ThirdPartyStudy
//
//  Created by 李青海 on 16/5/18.
//  Copyright © 2016年 李青海. All rights reserved.
//

#import "ViewController.h"

#import "MMDrawerController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // 1、初始化控制器
    UIViewController *leftDrawe = [[UIViewController alloc] init];
    leftDrawe.view.backgroundColor = [UIColor blueColor];
    
    
    UIViewController *centerDrawe = [[UIViewController alloc] init];
    centerDrawe.view.backgroundColor = [UIColor redColor];
    
    
    UIViewController *rightDrawe = [[UIViewController alloc] init];
    
    // 2、使用MMDrawerController
    MMDrawerController *drawerController = [[MMDrawerController alloc] initWithCenterViewController:centerDrawe leftDrawerViewController:leftDrawe rightDrawerViewController:rightDrawe];
    
    
    // 3、设置打开、关闭抽屉的手势
    drawerController.openDrawerGestureModeMask = MMOpenDrawerGestureModeAll;
    drawerController.closeDrawerGestureModeMask = MMCloseDrawerGestureModeAll;
    
    // 4、
    
    [self addChildViewController:drawerController];
    [self.view addSubview:drawerController.view];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
