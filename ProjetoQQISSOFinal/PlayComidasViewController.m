//
//  PlayComidasViewController.m
//  ProjetoQQISSOFinal
//
//  Created by Rodrigo Von-Grapp Freitas on 03/06/14.
//  Copyright (c) 2014 Rodrigo Freitas. All rights reserved.
//

#import "PlayComidasViewController.h"
#import "PerguntaViewController.h"
@interface PlayComidasViewController ()
@property (nonatomic) NSTimer *timer;
@end

@implementation PlayComidasViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _mainScroll.tag = 1;
    _mainScroll.userInteractionEnabled = NO;
    _mainScroll.autoresizingMask=UIViewAutoresizingNone;
    [self.view addSubview:_mainScroll];
    [self setupScrollView:_mainScroll comVelocidade:0.5];
    
}



- (void)setupScrollView:(UIScrollView*)scrMain comVelocidade:(float)velocidade{
    // we have 10 images here.
    // we will add all images into a scrollView & set the appropriate size.
    for (int i=0; i<6; i++) {
        // create image
        //UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"sti%02i.jpeg",i]];
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png",i]];
        
        // create imageView
        UIImageView *imgV = [[UIImageView alloc] initWithFrame:CGRectMake((i-1)*scrMain.frame.size.width, 0, scrMain.frame.size.width, scrMain.frame.size.height)];
        // set scale to fill
        imgV.contentMode=UIViewContentModeScaleToFill;
        // set image
        [imgV setImage:image];
        // apply tag to access in future
        imgV.tag=i+1;
        // add to scrollView
        [scrMain addSubview:imgV];
    }
    
    // set the content size to 10 image width
    [scrMain setContentSize:CGSizeMake(scrMain.frame.size.width*6, scrMain.frame.size.height)];
    // enable timer after each 2 seconds for scrolling.
    //@selector (economiza recurso)
    _timer =  [NSTimer scheduledTimerWithTimeInterval:velocidade target:self selector:@selector(scrollingTimer) userInfo:nil repeats: YES];
}

- (void)scrollingTimer {
    // access the scroll view with the tag
    UIScrollView *scrMain = (UIScrollView*) [self.view viewWithTag:1];
    // same way, access pagecontroll access
    UIPageControl *pgCtr = (UIPageControl*) [self.view viewWithTag:12];
    // get the current offset ( which page is being displayed )
    CGFloat contentOffset = scrMain.contentOffset.x;
    // calculate next page to display
    int nextPage = (int)(contentOffset/scrMain.frame.size.width) + 1 ;
    // if page is not 10, display it
    if( nextPage!=5 )  {
        [scrMain scrollRectToVisible:CGRectMake(nextPage*scrMain.frame.size.width, 0, scrMain.frame.size.width, scrMain.frame.size.height) animated:YES];
        pgCtr.currentPage=nextPage;
    }
    else {
        [_timer invalidate];
        _timer = nil;
        PerguntaViewController *pergunta = [[PerguntaViewController alloc]init];
        [self presentViewController:pergunta animated:NO completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
