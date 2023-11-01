//
//  StoreEmotionXmlParser.m
//  localFile
//
//  Created by lyf on 2023/10/12.
//

#import "StoreEmotionXmlParser.h"

@interface StoreEmotionXmlParser ()<NSXMLParserDelegate>

@property(nonatomic, strong)NSString *path;
@property(nonatomic, strong)NSXMLParser *parser;

@end

@implementation StoreEmotionXmlParser

- (instancetype)initWithPath:(NSString *)path
{
    self = [super init];
    if (self) {
        BOOL isDir = NO;
        if (!([[NSFileManager defaultManager] fileExistsAtPath:path isDirectory:&isDir] && !isDir)) {
            return nil;
        }
        NSURL *url = [NSURL fileURLWithPath:path];
        self.emotions = [NSMutableArray array];
        self.parser = [[NSXMLParser alloc]initWithContentsOfURL:url];
        self.parser.delegate = self;
        if (![self.parser parse]) {
            return nil;
        }
    }
    return self;
}

- (void)parserDidStartDocument:(NSXMLParser *)parser {
    
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    if ([elementName isEqualToString:@"Face"]) {
        [self.emotions addObject:attributeDict];
    }
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
}

- (void)parserDidEndDocument:(NSXMLParser *)parser {
    
}

@end
