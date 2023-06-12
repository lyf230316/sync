//
//  MTextFieldCell.m
//  qwe
//
//  Created by lyf on 2023/5/31.
//

#import "MTextFieldCell.h"
#import "PTextView.h"

@interface MTextFieldCell ()
@property(nonatomic, strong)PTextView *fieldEditor;
@end

@implementation MTextFieldCell

- (PTextView *)fieldEditor{
    if (!_fieldEditor) {
        _fieldEditor = [[PTextView alloc] init];
        _fieldEditor.backgroundColor = NSColor.whiteColor;
    }
    return _fieldEditor;
}

- (id)init {
    self = [super init];
    if (self){
        [self setupUI];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    self.scrollable = YES;
    self.bordered = NO;
    self.osVersion = [Environment osVersion];
}

- (void)drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
//    [super drawWithFrame:cellFrame inView:controlView];
    
//    NSRect rect = controlView.bounds;
//    NSBezierPath *bezierPath = [NSBezierPath bezierPathWithRoundedRect:rect xRadius:0 yRadius:0];
//    [[NSColor clearColor] set];
//    [bezierPath setLineWidth:1.0];
//    [bezierPath stroke];
    
//    [super drawWithFrame:cellFrame inView:controlView];
    // 这种调用才可以
    [self drawInteriorWithFrame:cellFrame inView:controlView];
}

- (void)drawInteriorWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
    [super drawInteriorWithFrame:cellFrame inView:controlView];
    
//    NSRect rect = controlView.bounds;
//    NSBezierPath *bezierPath = [NSBezierPath bezierPathWithRoundedRect:rect xRadius:0 yRadius:0];
//    [[NSColor clearColor] set];
//    [bezierPath setLineWidth:1.0];
//    [bezierPath stroke];
    
//    [super drawInteriorWithFrame:cellFrame inView:controlView];
}

- (NSText *)setUpFieldEditorAttributes:(NSText *)textObj {
    NSText *text = [super setUpFieldEditorAttributes:textObj];
    if ([text isKindOfClass:[NSTextView class]]) {
        NSTextView *textView = (NSTextView *)text;
//        [textView setBackgroundColor:self.backgroundColor];
//        textView.drawsBackground = YES;
        [textView setInsertionPointColor:[NSColor colorWithHex:@"0x77787A" alpha:1.0]];    // 设置光标颜色
    }
    return text;
}

- (NSRect)searchButtonRectForBounds:(NSRect)rect {
    NSRect buttonRect = [super searchButtonRectForBounds:rect];
    if (FeatureConfigStateWithKey(FeatureGatesUIRedesign)) {
        buttonRect.origin.x += 3;
        //buttonRect.origin.y += 1;
    } else {
        buttonRect.origin.x += 4;
        //buttonRect.origin.y += 1;
    }
    return buttonRect;
}

- (NSRect)searchTextRectForBounds:(NSRect)rect {
    NSRect textRect = [super searchTextRectForBounds:rect];
    if (FeatureConfigStateWithKey(FeatureGatesUIRedesign)) {
        if ([self.osVersion compare:@"10.15"] == NSOrderedAscending || [self.osVersion compare:@"10.15"] == NSOrderedSame) {
            textRect.origin.x += 8;
        } else {
            textRect.origin.x += 2;
        }
    } else {
        if ([self.osVersion compare:@"10.15"] == NSOrderedAscending || [self.osVersion compare:@"10.15"] == NSOrderedSame) {
            textRect.origin.x += 10;
        } else {
            textRect.origin.x += 4;
        }
    }
    textRect.size.width -= 20;
    return textRect;
}

- (NSRect)cancelButtonRectForBounds:(NSRect)rect {
    NSRect buttonRect = [super cancelButtonRectForBounds:rect];
    buttonRect.origin.x -= 4;
    return buttonRect;
}

- (NSTextView *)fieldEditorForView:(NSView *)controlView {
    return self.fieldEditor;
}

@end
