//
//  Convert.m
//  EService
//
//  Created by lyf on 2023/7/30.
//

#import "Convert.h"

@implementation Convert

+(void)events:(NSArray *)array toPointer:(es_event_type_t **)types count:(uint32_t *)enent_count{
    es_event_type_t *res = malloc(sizeof(es_event_type_t)*array.count);
    for (int i = 0; i< array.count; i++) {
        NSNumber *item = array[i];
        *(res+i) = item.intValue;
    }
    *types = res;
    *enent_count = (uint32_t)array.count;
}

+(void)events:(es_event_type_t *)types count:(uint32_t)event_count toArray:(NSArray **)array {
    NSMutableArray *res = [NSMutableArray array];
    for (int i = 0; i < event_count; i++) {
        [res addObject:@(*(types + i))];
    }
    *array = [NSArray arrayWithArray:res];
}

@end
