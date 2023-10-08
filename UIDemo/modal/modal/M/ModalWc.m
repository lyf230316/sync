//
//  ModalWc.m
//  modal
//
//  Created by msi on 2023/9/11.
//

#import "ModalWc.h"
#import "ModalWindow.h"
#import "ModalViewController.h"
#import <dispatch/dispatch.h>

@interface ModalWc ()

@end

@implementation ModalWc

- (void)windowDidLoad {
    [super windowDidLoad];
    NSLog(@"%@", [NSString stringWithUTF8String:__func__]);
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [NSThread sleepForTimeInterval:0.1];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self afterLoad];
        });
    });
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)afterLoad {
    self.contentViewController = [[ModalViewController alloc]initWithNibName:@"ModalViewController" bundle:nil];
    [self.window.contentView addSubview:self.contentViewController.view];
    NSLog(@"%@", [NSString stringWithUTF8String:__func__]);
}

@end
