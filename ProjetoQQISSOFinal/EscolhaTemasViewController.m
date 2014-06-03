//
//  EscolhaTemasViewController.m
//  ProjetoQQISSOFinal
//
//  Created by Rodrigo Von-Grapp Freitas on 03/06/14.
//  Copyright (c) 2014 Rodrigo Freitas. All rights reserved.
//

#import "EscolhaTemasViewController.h"
#import "ComidasViewController.h"
#import "FilmesViewController.h"
@interface EscolhaTemasViewController ()

@end

@implementation EscolhaTemasViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btn_comidas:(id)sender{
    
    ComidasViewController *comidas = [[ComidasViewController alloc]init];
    [self presentViewController:comidas animated:YES completion:nil];
}

-(IBAction)btn_filmes:(id)sender{
    
    FilmesViewController *filmes = [[FilmesViewController alloc]init];
    [self presentViewController:filmes animated:YES completion:nil];
}
@end
