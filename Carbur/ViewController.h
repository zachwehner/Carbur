//
//  ViewController.h
//  Carbur
//
//  Created by Zach Wehner on 4/12/15.
//  Copyright (c) 2015 Zach Wehner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
{
IBOutlet UILabel *myLabel;
IBOutlet UIPickerView *myPicker;

    NSArray *dataArray;
}
@end

