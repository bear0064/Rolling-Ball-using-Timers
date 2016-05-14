//
//  ballGame.h
//  Rolling Ball using Timers
//
//  Created by Caleb Bear on 2016-03-24.
//  Copyright © 2016 bear0064@algonquinlive.com. All rights reserved.
//

#import <UIKit/UIKit.h>

int Y;
int X;

@interface ballGame : UIViewController {

IBOutlet UIImageView *ball;

    
    
IBOutlet UIBarButtonItem *backButton;

    
//NSTimer *timer;

}
- (IBAction)up:(id)sender;
- (IBAction)left:(id)sender;
- (IBAction)down:(id)sender;
- (IBAction)right:(id)sender;

-(IBAction)backButton:(id)sender;

//-(void)ballMove;


@end
