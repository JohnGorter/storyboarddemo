//
//  ThirdViewController.m
//  StoryBoardDemos
//
//  Created by John Gorter on 14-07-2015.
//  Copyright (c) 2015 John Gorter. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UISwitch *switchNews;

- (IBAction)btnSave:(id)sender;
- (IBAction)startEdit:(id)sender;
- (IBAction)endEdit:(id)sender;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.txtUsername.text = [[NSUserDefaults standardUserDefaults] valueForKey:@"username"];
    self.txtEmail.text = [[NSUserDefaults standardUserDefaults] valueForKey:@"email"];
    self.switchNews.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"news"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    
    self.txtUsername.text = [[NSUserDefaults standardUserDefaults] valueForKey:@"username"];
    self.txtEmail.text = [[NSUserDefaults standardUserDefaults] valueForKey:@"email"];
    self.switchNews.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"news"];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnSave:(id)sender {
    
    bool news = [self.switchNews isOn];
    [[NSUserDefaults standardUserDefaults] setValue:[self.txtUsername text] forKey:@"username"];
    [[NSUserDefaults standardUserDefaults] setValue:[self.txtEmail text] forKey:@"email"];
    [[NSUserDefaults standardUserDefaults] setBool:news forKey:@"news"];
    
}

- (IBAction)startEdit:(id)sender {
    [self.view setBackgroundColor:[UIColor yellowColor]];
}

- (IBAction)endEdit:(id)sender {
    [self.view setBackgroundColor:[UIColor whiteColor]];
}
@end
