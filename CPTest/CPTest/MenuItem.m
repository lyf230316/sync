//
//  MenuItem.m
//  CPTest
//
//  Created by msi on 2023/7/20.
//

#import "MenuItem.h"

@implementation MenuItem

- (void)awakeFromNib {
    [super awakeFromNib];
    self.action;
    [self addObserver:self forKeyPath:@"target" options:NSKeyValueObservingOptionNew context:nil];
    [self addObserver:self forKeyPath:@"action" options:NSKeyValueObservingOptionNew context:nil];
}

- (BOOL)validateMenuItem:(NSMenuItem *)menuItem {
    BOOL res = [super validateMenuItem:menuItem];
    return res;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"%@, %@",keyPath, change);
}

@end
