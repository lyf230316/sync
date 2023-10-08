//
//  ViewController.m
//  modal
//
//  Created by msi on 2023/9/11.
//

#import "ViewController.h"
#import "ModalWc.h"
#import "ModalViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ModalViewController *ctl = [[ModalViewController alloc]initWithNibName:@"ModalViewController" bundle:nil];
    NSWindow *wd = [[NSWindow alloc]init];
    wd.styleMask = NSWindowStyleMaskClosable | NSWindowStyleMaskTitled | NSWindowStyleMaskResizable | NSWindowStyleMaskMiniaturizable;
    NSWindowController *wctl = [[NSWindowController alloc]initWithWindow:[[NSWindow alloc]init]];
    wctl.contentViewController = ctl;
    [wctl showWindow:self];
    
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)clicked:(NSButton *)sender {
    ModalViewController *ctl = [[ModalViewController alloc]initWithNibName:@"ModalViewController" bundle:nil];
    [self presentViewControllerAsModalWindow:ctl];
}

@end
