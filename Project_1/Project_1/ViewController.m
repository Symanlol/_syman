//
//  ViewController.m
//  Project_1
//
//  Created by 尧永昌 on 16/3/24.
//  Copyright © 2016年 Syman. All rights reserved.
//

#import "ViewController.h"
#import "wangjimimaViewController.h"
#import "zhuceViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //加载view
    UIView *logninView = [[UIView alloc]initWithFrame:self.view.frame];
    logninView.backgroundColor = [UIColor colorWithRed:0.52 green:0.52 blue:0.52 alpha:1];
    [self.view addSubview:logninView];
    //创建两个输入框
    UILabel *shouji = [[UILabel alloc]initWithFrame:(CGRect){20,100,280,44}];
    UILabel *mima =[[UILabel alloc]initWithFrame:(CGRect){20,146,280,44}];
    [self.view addSubview:shouji];
    [self.view addSubview:mima];
    UITextField  *usedName = [[UITextField  alloc]initWithFrame:(CGRect){20,100,280,44}];
    UITextField  *Password = [[UITextField  alloc]initWithFrame:(CGRect){20,146,280,44}];
    //提示文字及设置器颜色
    usedName.placeholder = @"手机:";
    Password.placeholder = @"密码:";
    [usedName setValue:[UIColor lightTextColor] forKeyPath:@"_placeholderLabel.textColor"];
    [Password setValue:[UIColor lightTextColor] forKeyPath:@"_placeholderLabel.textColor"];
    Password.secureTextEntry = YES;
    usedName.font = [UIFont systemFontOfSize:16];
    Password.font = [UIFont systemFontOfSize:16];
    usedName.textAlignment = NSTextAlignmentLeft;
    Password.textAlignment = NSTextAlignmentLeft;
    usedName.textColor=[UIColor whiteColor];
    Password.textColor = [UIColor whiteColor];
    [self.view addSubview:usedName];
    [self.view addSubview:Password];
    //加两个输出线
    UILabel *shuRu1 =[[UILabel alloc]initWithFrame:(CGRect){20,136,280,1}];
    shuRu1.backgroundColor = [UIColor lightTextColor];
    UILabel *shuRu2 =[[UILabel alloc]initWithFrame:(CGRect){20,184,280,1}];
    shuRu2.backgroundColor = [UIColor lightTextColor];
    [self.view addSubview:shuRu1];
    [self.view addSubview:shuRu2];
    //创建登录按钮，忘记密码按钮，注册按钮
    UIButton *loginBtn =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginBtn .frame=(CGRect){20,220,280,40};
    UIButton *wangJimima = [[UIButton alloc]initWithFrame:(CGRect){10,540,60,20}];
    UIButton *zhuCe = [[UIButton alloc]initWithFrame:(CGRect){250,540,60,20}];
    loginBtn.tag =1;
    wangJimima.tag =2;
    zhuCe.tag = 3;
    loginBtn.backgroundColor =[UIColor colorWithRed:1 green:0.5 blue:0.49 alpha:1];
    [loginBtn.layer setMasksToBounds:YES];
    [loginBtn.layer setCornerRadius:5.0];
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [loginBtn setTitleColor:[UIColor lightTextColor] forState:UIControlStateNormal];
    [wangJimima setTitle:@"忘记密码?" forState:UIControlStateNormal];
    [wangJimima addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [wangJimima.titleLabel setFont:[UIFont systemFontOfSize:11]];
    [wangJimima setTitleColor:[UIColor lightTextColor] forState:UIControlStateNormal];
    [zhuCe setTitle:@"注册账号" forState:UIControlStateNormal];
    [zhuCe addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [zhuCe setTitleColor:[UIColor lightTextColor] forState:UIControlStateNormal];
    [zhuCe.titleLabel setFont:[UIFont systemFontOfSize:11]];
    [self.view addSubview:loginBtn];
    [self.view addSubview:wangJimima];
    [self.view addSubview:zhuCe];
    // Do any additional setup after loading the view, typically from a nib.
}
//绑定跳转事件
- (void)onClick:(UIButton *)button{
    switch (button.tag) {
        case 1://登录
            NSLog(@"1");
            break;
        case 2://忘记密码
        {
            wangjimimaViewController *controller = [[wangjimimaViewController alloc]init];
            UIWindow *window = [[UIApplication sharedApplication].delegate window];
            
            window.rootViewController = controller;
        }
            break;
        case 3://注册账号
        {
            zhuceViewController *controller = [[zhuceViewController alloc]init];
            UIWindow *window = [[UIApplication sharedApplication].delegate window];
            
            window.rootViewController = controller;
        }
            break;
        default:
            break;
    }
   
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
