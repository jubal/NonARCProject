//
//  JHViewController.m
//  NonARCProject
//
//  Created by Jubal Hoo on 12/6/12.
//  Copyright (c) 2012 M.L.S. All rights reserved.
//

#import "JHViewController.h"
#import "JHDataObject_ARC.h"
#import "MKNetworkKit.h"

@interface JHViewController ()

@property (nonatomic, retain) JHDataObject_ARC * anObject;
@property (nonatomic, retain) MKNetworkEngine * engine;

@end

@implementation JHViewController

@synthesize anObject = anObject_;
@synthesize engine = engine_;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.anObject = [[[JHDataObject_ARC alloc] init] autorelease];
    self.engine = [[[MKNetworkEngine alloc] init] autorelease];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void) dealloc
{
    self.anObject = nil;
    self.engine = nil;
    
    [super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
