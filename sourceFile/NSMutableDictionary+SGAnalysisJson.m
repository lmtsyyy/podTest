//
//  NSMutableDictionary+SGAnalysisJson.m
//  Sugram
//
//  Created by min on 2019/4/22.
//  Copyright © 2019 gossip. All rights reserved.
//

#import "NSMutableDictionary+SGAnalysisJson.h"

#define MYLog(...) NSLog(@"%s_%d: %@", __func__, __LINE__,[NSString stringWithFormat:__VA_ARGS__])

@implementation NSMutableDictionary (SGAnalysisJson)

/**
 解析json
 */
+ (NSMutableDictionary *)dictionaryWithJsonString:(NSString *)jsonString; {
    if (jsonString == nil || [jsonString isEqualToString:@""]) {
        return nil;
    }
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    if (jsonData == nil) {
        return nil;
    }
    NSError *err;
    NSMutableDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&err];
    if(err) {
        MYLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}

@end
