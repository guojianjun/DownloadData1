//
//  RootViewController.m
//  DownloadData
//
//  Created by qianfeng001 on 15/8/19.
//  Copyright (c) 2015年 ZhangYunguang. All rights reserved.
//

#import "RootViewController.h"
#import "GJJHttpRequest.h"

#define kURL @"http://www.youyuwei.com/api/recommend?oauth_version=1.0&oauth_nonce=ded1339b-cfa2-45be-9421-9acef5c799ad&oauth_consumer_key=5&device_type=android&screen_width=1080&device_id=40%3AF3%3A08%3AEE%3A9C%3A7C&ver=1&ywsdk_ver=20140507&sys_ver=4.4.2&ver_code=9&channel_id=wandoujia&oauth_signature=UcXuw9Ycz0iQV05aO2Li9oMaGbU%3D&x_auth_mode=client_auth&device_token=AhMj3PFcpCIQt8FqVIUkPoWJfQE8kTHTo9uvX5YbFNy6&oauth_signature_method=HMAC-SHA1&oauth_token=0_9837387abc33331ab&open_udid=40%3AF3%3A08%3AEE%3A9C%3A7C&app_ver=1.7&app_code=com.yuwei.android&oauth_timestamp=1439369636&screen_height=1920"

@interface RootViewController ()
{
    GJJHttpRequest *_httpRequest;
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createRequest];
    [self download];
}
//创建下载对象
-(void)createRequest{
    _httpRequest = [[GJJHttpRequest alloc] init];
}
//下载数据
-(void)download{
    
   // __weak typeof(self)weakSelf = self;
    [_httpRequest downloadDataWithUrl:kURL success:^(NSMutableData *download) {
        NSLog(@"下载成功");
        if (download) {
            NSLog(@"%@",download);
        }
    } failed:^(NSError *error) {
        NSLog(@"下载失败");
    }];
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
