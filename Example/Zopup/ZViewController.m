//
//  ZViewController.m
//  Zopup
//
//  Created by lzackx on 05/27/2021.
//  Copyright (c) 2021 lzackx. All rights reserved.
//

#import "ZViewController.h"
#import <Zopup/Zopup.h>

@interface ZViewController ()

@end

@implementation ZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	[[Zopup shared] setupPopupBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.8]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
	
	UIView *v = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
	v.backgroundColor = [UIColor cyanColor];
	[[Zopup shared] addPopupWithView:v];
	
	UIViewController *vc = [[UIViewController alloc] init];
	vc.view.backgroundColor = [UIColor clearColor];
	[vc.view setUserInteractionEnabled: YES];
	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideWithTap:)];
	[vc.view addGestureRecognizer:tap];
	[[Zopup shared] addPopupWithViewController:vc];

	[[Zopup shared] schedule];
}

- (void)hideWithTap:(UITapGestureRecognizer *)tap {
	if (tap.state != UIGestureRecognizerStateEnded) {
		return;
	}
	[[Zopup shared] schedule];
}

@end
