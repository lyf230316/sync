//
//  ViewController.m
//  UIT
//
//  Created by lyf on 2023/9/20.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    for (NSScreen *screen in [NSScreen screens]) {
        @autoreleasepool {
            unsigned int displayID = [([screen deviceDescription])[@"NSScreenNumber"] unsignedIntValue];
            CGImageRef imgRef = CGDisplayCreateImage(displayID);
            NSRect mainFrame = screen.frame;
            NSImage *img = [[NSImage alloc] initWithCGImage:imgRef size:mainFrame.size];
            CGImageRelease(imgRef);
            
            CGImageRef cgRef = [img CGImageForProposedRect:NULL
                                                   context:nil
                                                     hints:nil];
            NSBitmapImageRep *newRep = [[NSBitmapImageRep alloc] initWithCGImage:cgRef];
            [newRep setSize:[img size]];
            NSData *data = [newRep representationUsingType:NSBitmapImageFileTypePNG properties:[NSDictionary dictionary]];
            [data writeToFile:@"/Users/lyf/Desktop/s.png" atomically:YES];
            NSLog(@"%@", data);
        }
    }
    
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
