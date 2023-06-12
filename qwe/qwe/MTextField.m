//
//  MTextField.m
//  qwe
//
//  Created by lyf on 2023/5/31.
//

#import "MTextField.h"
#import "MTextFieldCell.h"

@implementation MTextField

+ (void)setCellClass:(Class)factoryId {
    [super setCellClass:[MTextFieldCell class]];
}

+ (Class)cellClass {
    return [MTextFieldCell class];
}

//- (BOOL)performKeyEquivalent:(NSEvent *)event
//{
//    NSLog(@"%@",event);
//    if (([event modifierFlags] & NSDeviceIndependentModifierFlagsMask) == NSCommandKeyMask) {
//        if ([[event charactersIgnoringModifiers] isEqualToString:@"x"]) {
//            return [NSApp sendAction:@selector(cut:) to:[[self window] firstResponder] from:self];
//        } else if ([[event charactersIgnoringModifiers] isEqualToString:@"c"]) {
//            return [NSApp sendAction:@selector(copy:) to:[[self window] firstResponder] from:self];
//        } else if ([[event charactersIgnoringModifiers] isEqualToString:@"v"]) {
//            return NO;
//            return [NSApp sendAction:@selector(paste:) to:[[self window] firstResponder] from:self];
//        } else if ([[event charactersIgnoringModifiers] isEqualToString:@"a"]) {
//            return NO;
//            return [NSApp sendAction:@selector(selectAll:) to:[[self window] firstResponder] from:self];
//        } else if ([[event charactersIgnoringModifiers] isEqualToString:@"z"]) {
//            return [NSApp sendAction:@selector(keyDown:) to:[[self window] firstResponder] from:self];
//        }
//    }
//    return [super performKeyEquivalent:event];
//}



@end
