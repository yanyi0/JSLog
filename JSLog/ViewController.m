//
//  ViewController.m
//  JSLog
//
//  Created by fish on 2019/7/1.
//  Copyright © 2019 cloud. All rights reserved.
//

#import "ViewController.h"
#import "WebConsole.h"
@interface ViewController ()
@property(nonatomic,strong)UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [WebConsole enable];
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.view addSubview:self.webView];
    NSError *error = nil;
    NSString *htmlStr = [NSString stringWithContentsOfFile:
                         [[NSBundle mainBundle]
                          pathForResource:@"Sample" ofType:@"html"]
                                                  encoding:NSUTF8StringEncoding
                                                     error:&error];
    
    [self.webView loadHTMLString:htmlStr baseURL:nil];
    // Do any additional setup after loading the view.
}


@end
