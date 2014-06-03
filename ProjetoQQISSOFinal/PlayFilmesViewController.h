//
//  PlayFilmesViewController.h
//  ProjetoQQISSOFinal
//
//  Created by Rodrigo Von-Grapp Freitas on 03/06/14.
//  Copyright (c) 2014 Rodrigo Freitas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayFilmesViewController : UIViewController

@property (nonatomic) int screenWidth;
@property (nonatomic) int screenHeight;
@property (nonatomic) int numberOfViews;
@property (weak, nonatomic) IBOutlet UIScrollView *mainScroll;

@end
