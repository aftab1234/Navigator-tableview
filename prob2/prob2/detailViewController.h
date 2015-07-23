//
//  detailViewController.h
//  prob2
//
//  Created by Sam on 11/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface detailViewController : UIViewController<UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UIImageView *imv;
//@property (nonatomic, strong) IBOutlet UILabel *label;
@property (nonatomic, strong) IBOutlet UITextView *text1;
//@property(nonatomic, strong)  IBOutlet UIView *inputView;
@property (nonatomic, strong) NSString *recipeName;
@property(nonatomic,assign) int indexValue;
@property (nonatomic, strong) NSArray *city1;
@property (nonatomic, strong) UIImage *img1;
@property (nonatomic, strong) UIImage *img2;
@property (nonatomic, strong) UIImage *img3;
@property (nonatomic, strong) UIImage *img4;
@property (nonatomic, strong) UIImage *img5;
//@property (nonatomic, strong) detailViewController *destViewController;


-(void)aa;

@end
