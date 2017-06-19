//
//  ViewController.m
//  PPSSignature
//
//  Created by sischen on 2017/6/19.
//  Copyright © 2017年 write. All rights reserved.
//

#import "ViewController.h"
#import "PPSSignatureView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    GLKViewController *vc = [PPSSignatureView vc];
    if (vc) {
        [self addChildViewController:vc];
        [self.view addSubview:vc.view];
    }
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    
    [self.childViewControllers makeObjectsPerformSelector:@selector(removeFromParentViewController)];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
