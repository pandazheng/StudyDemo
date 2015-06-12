//
//  ViewController.m
//  Line Controller
//
//  Created by pandazheng on 15/6/12.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:touch.view];
    
    if (location.y >= 468)
    {
        [Person setCenter:CGPointMake(location.x, Person.center.y)];
    }
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:touch.view];
    
    if (location.y >= 468)
    {
        [Person setCenter:CGPointMake(location.x, Person.center.y)];
    }
}

@end
