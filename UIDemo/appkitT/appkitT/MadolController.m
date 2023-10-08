//
//  MadolController.m
//  appkitT
//
//  Created by lyf on 2023/10/7.
//

#import "MadolController.h"

@interface MadolController ()

@end

@implementation MadolController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(windowWillClose:) name:NSWindowWillCloseNotification object:nil];
}

- (void)windowWillClose:(NSNotification *)note {
    if (self.view.window == note.object) {
        NSLog(@"%@", note);
    }
}
- (IBAction)clicked:(id)sender {
    [self.view.window close];
}

@end
