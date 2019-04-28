//
//  NSMutableDictionary+SGAnalysisJson.h
//  Sugram
//
//  Created by min on 2019/4/22.
//  Copyright © 2019 gossip. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableDictionary (SGAnalysisJson)

/**
 解析json
 */
+ (NSMutableDictionary *_Nullable)dictionaryWithJsonString:(NSString *_Nullable)jsonString;

@end

NS_ASSUME_NONNULL_END
