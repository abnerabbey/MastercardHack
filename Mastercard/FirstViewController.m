//
//  FirstViewController.m
//  Mastercard
//
//  Created by Abner Castro Aguilar on 01/08/15.
//  Copyright (c) 2015 Abner Castro Aguilar. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
{
    NSArray *arrayBubbles;
    LIVBubbleMenu *_bubbleMenu;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    arrayBubbles = [NSArray arrayWithObjects:[UIImage imageNamed:@"banda"], [UIImage imageNamed:@"cumbia"],[UIImage imageNamed:@"indie"], [UIImage imageNamed:@"latino"], [UIImage imageNamed:@"mariachi"], [UIImage imageNamed:@"pop"], [UIImage imageNamed:@"rock"], [UIImage imageNamed:@"trova"], nil];
    
    self.navigationItem.title = @"Selecciona tus gustos";
    
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(menuDone)];
    self.navigationItem.rightBarButtonItem = doneButton;
}

- (void)viewDidAppear:(BOOL)animate
{
    NSRange range;
    range.location = 0;
    range.length = 6;
    _bubbleMenu = [[LIVBubbleMenu alloc] initWithPoint:self.view.center radius:150 menuItems:[arrayBubbles subarrayWithRange:range] inView:self.view];
    _bubbleMenu.delegate = self;
    _bubbleMenu.easyButtons = NO;
    _bubbleMenu.bubbleStartAngle = 0.0f;
    _bubbleMenu.bubbleTotalAngle = 180.0f;
    [_bubbleMenu show];
}

- (void)livBubbleMenu:(LIVBubbleMenu *)bubbleMenu tappedBubbleWithIndex:(NSUInteger)index
{
    
}

- (void)menuDone
{
    [_bubbleMenu hide];
}



@end
