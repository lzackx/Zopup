//
//  Zopup.h
//  Zopup
//
//  Created by lzackx on 2021/5/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Zopup : NSObject

+ (instancetype)shared;

- (void)setupPopupBackgroundColor:(UIColor *)popupBackgroundColor;
- (void)popupView:(UIView *)view;
- (void)popupViewController:(UIViewController *)viewController;
- (void)schedule;

@end

NS_ASSUME_NONNULL_END
