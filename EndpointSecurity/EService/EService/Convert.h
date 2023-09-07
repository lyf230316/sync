//
//  Convert.h
//  EService
//
//  Created by lyf on 2023/7/30.
//

#import <Foundation/Foundation.h>
#import <EndpointSecurity/EndpointSecurity.h>

@interface Convert : NSObject

+(void)events:(NSArray *)array toPointer:(es_event_type_t **)types count:(uint32_t *)enent_count;
+(void)events:(es_event_type_t *)types count:(uint32_t)event_count toArray:(NSArray **)array;

@end

