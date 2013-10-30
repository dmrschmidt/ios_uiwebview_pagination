//
//  MLViewController.m
//  Pager
//
//  Created by Dennis Schmidt on 10/29/13.
//  Copyright (c) 2013 Dennis Schmidt. All rights reserved.
//

#import "MLViewController.h"

@interface MLViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation MLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"untitled" ofType:@"html"];
    NSData *htmlData = [NSData dataWithContentsOfFile:filePath];
        [self.webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:nil];
    
    self.webView.scrollView.pagingEnabled = YES;
    self.webView.scrollView.alwaysBounceVertical = NO;
    self.webView.scrollView.alwaysBounceHorizontal = YES;
    self.webView.scrollView.bounces = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
