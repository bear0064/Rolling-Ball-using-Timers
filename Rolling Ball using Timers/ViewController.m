//
//  ViewController.m
//  Rolling Ball using Timers
//
//  Created by Caleb Bear on 2016-03-24.
//  Copyright © 2016 bear0064@algonquinlive.com. All rights reserved.
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

-(IBAction)startButton:(id)sender{
    
    [self performSegueWithIdentifier:@"Ball Game" sender:self];
    
}


@end
