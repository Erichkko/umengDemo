//
//  ViewController.m
//  umengDemo
//
//  Created by wanglong on 16/7/30.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import "ViewController.h"
#import <UMSocial.h>


@interface ViewController ()<UMSocialUIDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)shareClick:(id)sender {
    NSString *appKey = @"579c5b0867e58e3458000787";
    NSString *shareContent = @"友盟社会化分享让您快速实现分享等社会化功能，http://umeng.com/social";
    UIImage *shareImage = [UIImage imageNamed:@"xingxing"];
    NSArray *snsArray  = @[UMShareToWechatSession,UMShareToWechatTimeline,UMShareToSina,UMShareToQQ,UMShareToQzone,UMShareToDouban,UMShareToEmail,UMShareToFacebook];
    
    [UMSocialData defaultData].extConfig.title = @"分享的title";
    [UMSocialData defaultData].extConfig.qqData.url = @"http://baidu.com";
    [UMSocialSnsService presentSnsIconSheetView:self
                                         appKey:appKey
                                      shareText:shareContent
                                     shareImage:shareImage
                                shareToSnsNames:snsArray
                                       delegate:self];
}
#pragma mark - UMSocialUIDelegate

@end
