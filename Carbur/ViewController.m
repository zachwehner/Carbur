//
//  ViewController.m
//  Carbur
//
//  Created by Zach Wehner on 4/12/15.
//  Copyright (c) 2015 Zach Wehner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    dataArray = [[NSArray alloc] initWithObjects:@"New Yor",@"Paris",@"Hong kong",@"Berlin",nil];
    myPicker.delegate=self;
   // [picker setShowSelectionIndicator:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that ca n be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
    
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [dataArray count];
}


-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    myLabel.text = [dataArray objectAtIndex:row];
    
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    return [dataArray objectAtIndex:row];
}




@end
