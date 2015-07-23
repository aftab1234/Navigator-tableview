//
//  Programming_DemoViewController.h
//  prob2
//
//  Created by Sam on 11/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Programming_DemoViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(copy,nonatomic) NSArray *cityNames1;
@property (weak, nonatomic) IBOutlet UITableView *table1;


@end
