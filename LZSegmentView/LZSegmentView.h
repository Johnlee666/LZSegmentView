//
//  LZSegmentView.h
//  LZSegmentView
//
//  Created by 李展 on 2017/12/22.
//  Copyright © 2017年 JohnLee. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol LZSegmentViewDelegate <NSObject>
@required
- (void)eventWhenScrollSubViewWithIndex:(NSInteger)index;
@end

@interface LZSegmentView : UIView

@property (nonatomic, weak) id<LZSegmentViewDelegate> eventDelegate;
@property (nonatomic, assign) CGFloat titleViewHeight;
@property (nonatomic, strong) UIColor *selectedTitleColor;
@property (nonatomic, strong) UIColor *titleColor;
@property (nonatomic, assign, readonly) NSInteger currentIndex;
@property (nonatomic, strong) UIFont *font;
- (instancetype)initWithFrame:(CGRect)frame andControllers:(NSArray <UIViewController *> *)controllers;

@end
