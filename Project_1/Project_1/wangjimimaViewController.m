//
//  wangjimimaViewController.m
//  Project_1
//
//  Created by 尧永昌 on 16/3/24.
//  Copyright © 2016年 Syman. All rights reserved.
//

#import "wangjimimaViewController.h"
#import "ViewController.h"
@interface wangjimimaViewController ()

@end

@implementation wangjimimaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //加载view
    UIView *logninView = [[UIView alloc]initWithFrame:self.view.frame];
    logninView.backgroundColor = [UIColor colorWithRed:0.52 green:0.52 blue:0.52 alpha:1];
    [self.view addSubview:logninView];
    //创建三个输入框
    UILabel *shouji = [[UILabel alloc]initWithFrame:(CGRect){20,60,280,44}];
    UILabel *yanzhen = [[UILabel alloc]initWithFrame:(CGRect){20,100,175,44}];
    UILabel *mima =[[UILabel alloc]initWithFrame:(CGRect){20,154,280,44}];
    [self.view addSubview:shouji];
    [self.view addSubview:mima];
    [self.view addSubview:yanzhen];
    UITextField  *usedName = [[UITextField  alloc]initWithFrame:(CGRect){20,60,280,44}];
    UITextField  *Password = [[UITextField  alloc]initWithFrame:(CGRect){20,154,280,44}];
    UITextField  *yanZhen = [[UITextField  alloc]initWithFrame:(CGRect){20,106,175,44}];
    //提示文字及设置器颜色
    usedName.placeholder = @"手机号码:";
    Password.placeholder = @"输入新密码:";
    yanZhen.placeholder = @"输入验证码:";
    [usedName setValue:[UIColor lightTextColor] forKeyPath:@"_placeholderLabel.textColor"];
    [Password setValue:[UIColor lightTextColor] forKeyPath:@"_placeholderLabel.textColor"];
    [yanZhen setValue:[UIColor lightTextColor] forKeyPath:@"_placeholderLabel.textColor"];
    Password.secureTextEntry = YES;
    usedName.font = [UIFont systemFontOfSize:16];
    yanZhen.font = [UIFont systemFontOfSize:16];
    Password.font = [UIFont systemFontOfSize:16];
    usedName.textAlignment = NSTextAlignmentLeft;
    yanZhen.textAlignment = NSTextAlignmentLeft;
    Password.textAlignment = NSTextAlignmentLeft;
    usedName.textColor=[UIColor whiteColor];
    yanZhen.textColor=[UIColor whiteColor];
    Password.textColor = [UIColor whiteColor];
    [self.view addSubview:usedName];
    [self.view addSubview:Password];
    [self.view addSubview:yanZhen];
    //加三个输出线
    UILabel *shuRu1 =[[UILabel alloc]initWithFrame:(CGRect){20,96,280,1}];
    shuRu1.backgroundColor = [UIColor lightTextColor];
    UILabel *shuRu2 =[[UILabel alloc]initWithFrame:(CGRect){20,144,175,1}];
    shuRu2.backgroundColor = [UIColor lightTextColor];
    UILabel *shuRu3 =[[UILabel alloc]initWithFrame:(CGRect){20,192,280,1}];
    shuRu3.backgroundColor = [UIColor lightTextColor];
    [self.view addSubview:shuRu1];
    [self.view addSubview:shuRu2];
    [self.view addSubview:shuRu3];
    //创建确定按钮
    UIButton *loginBtn =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginBtn .frame=(CGRect){20,220,280,40};
    loginBtn.tag =1;
    [loginBtn.layer setMasksToBounds:YES];
    [loginBtn.layer setCornerRadius:5.0];
    loginBtn.backgroundColor =[UIColor colorWithRed:1 green:0.5 blue:0.49 alpha:1];
    [loginBtn setTitle:@"确定" forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [loginBtn setTitleColor:[UIColor lightTextColor] forState:UIControlStateNormal];
    //验证码发送按钮码
    UIButton *yanzhenBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    yanzhenBtn. frame=(CGRect){200,106,100,38};
    yanzhenBtn.layer.borderColor = [[UIColor lightTextColor] CGColor];
    [yanzhenBtn.layer setMasksToBounds:YES];
    [yanzhenBtn.layer setCornerRadius:3.0];
    yanzhenBtn.layer.borderWidth = 1.0f;
    yanzhenBtn.tag = 2;
    [yanzhenBtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    [yanzhenBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [yanzhenBtn setTitleColor:[UIColor lightTextColor] forState:UIControlStateNormal];
    //创建返回按钮
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    backBtn .frame=(CGRect){10,25,30,30};
    backBtn.tag =3;
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn setTitleColor:[UIColor lightTextColor] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    [self.view addSubview:loginBtn];
    [self.view addSubview:yanzhenBtn];

    // Do any additional setup after loading the view from its nib.
}
- (void)onClick:(UIButton *)button{
    switch (button.tag) {
        case 1://登录
            NSLog(@"1");
            break;
        case 2://忘记密码
        {
//            wangjimimaViewController *controller = [[wangjimimaViewController alloc]init];
//            UIWindow *window = [[UIApplication sharedApplication].delegate window];
//            
//            window.rootViewController = controller;
        }
            break;
        case 3://注册账号
        {
            ViewController *controller = [[ViewController alloc]init];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
