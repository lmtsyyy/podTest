//
//  ViewController.m
//  podTest
//
//  Created by min on 2019/4/28.
//  Copyright © 2019 min. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableDictionary+SGAnalysisJson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"json: %@",[NSMutableDictionary dictionaryWithJsonString:@"{\"name\" : \"wangcai\"}"]);
}


@end
