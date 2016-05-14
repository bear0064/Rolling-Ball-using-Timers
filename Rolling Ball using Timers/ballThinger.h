//
//  ballThinger.h
//  Rolling Ball using Timers
//
//  Created by Caleb Bear on 2016-04-04.
//  Copyright © 2016 bear0064@algonquinlive.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ballThinger : UIViewController{
    

    IBOutlet UIBarButtonItem *backButton;
    
    
}



-(IBAction)backButton:(id)sender;



- (IBAction)up:(id)sender;
- (IBAction)down:(id)sender;
- (IBAction)left:(id)sender;
- (IBAction)right:(id)sender;



//-(void)ballMove;


@end
