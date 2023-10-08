//
//  ViewController.m
//  appkitT
//
//  Created by lyf on 2023/10/7.
//

#import "ViewController.h"
#import "MadolController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)clicked:(id)sender {
    MadolController *controller = [[MadolController alloc]initWithNibName:@"MadolController" bundle:nil];
    [self presentViewControllerAsModalWindow:controller];
}

@end
