//
//  ballThinger.m
//  Rolling Ball using Timers
//
//  Created by Caleb Bear on 2016-04-04.
//  Copyright © 2016 bear0064@algonquinlive.com. All rights reserved.
//

#import "ballThinger.h"
#define Frames_Until_Fired 1
#define Ball_Speed 10



@interface ballThinger ()

@property (weak, nonatomic) IBOutlet UIImageView *ballImg;

@property float xCoord;
@property float yCoord;
@property CADisplayLink * timer;

@end

@implementation ballThinger

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if(_timer == nil){
        
        _timer = [NSClassFromString(@"CADisplayLink") displayLinkWithTarget:self selector:@selector(gameLoop)];
        [_timer setFrameInterval:Frames_Until_Fired];
        [_timer addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
        
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void) gameLoop {
    if (_xCoord != 0 || _yCoord != 0){
        float newXCoord = _ballImg.center.x + _xCoord;
        float newYCoord = _ballImg.center.y + _yCoord;
        
        int halfImg = _ballImg.frame.size.width/2;
        
        if (newYCoord > self.view.frame.size.height - halfImg) {
            newYCoord = self.view.frame.size.height - halfImg;
        }
        if(newYCoord < halfImg){
            newYCoord = halfImg;
        }
        
        if (newXCoord > self.view.frame.size.width - halfImg) {
            newXCoord = self.view.frame.size.width - halfImg;
        }
        if(newXCoord < halfImg){
            newXCoord = halfImg;
        }
        
    
        [_ballImg setCenter:CGPointMake(newXCoord, newYCoord)];
        
        
        
        
    }
}


-(IBAction)backButton:(id)sender {
    [_timer invalidate];
    
    
    _timer = nil;
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (IBAction)up:(id)sender {_yCoord -= Ball_Speed;}
-(IBAction)StopTop:(id)sender {_yCoord = 0;};

- (IBAction)down:(id)sender {_yCoord += Ball_Speed;}
-(IBAction)StopBottom:(id)sender {_yCoord = 0;};

- (IBAction)left:(id)sender {_xCoord -= Ball_Speed;}
-(IBAction)StopLeft:(id)sender {_xCoord = 0;};

- (IBAction)right:(id)sender {_xCoord += Ball_Speed;}
-(IBAction)StopRight:(id)sender {_xCoord = 0;};

















@end
