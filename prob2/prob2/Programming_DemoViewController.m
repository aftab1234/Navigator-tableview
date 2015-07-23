
//
//  Programming_DemoViewController.m
//  prob2
//
//  Created by Sam on 11/02/15.
//  Copyright (c) 2015 Bets. All rights reserved.
//

#import "Programming_DemoViewController.h"
#import "detailViewController.h"
@interface Programming_DemoViewController ()

@end

@implementation Programming_DemoViewController
@synthesize table1;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.cityNames1 =@[@"Delhi",@"Mumbai",@"kolkata",@"Jaipur",@"Lucknow"];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.cityNames1 count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *simpleIdentifier = @"simpleIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleIdentifier];
    if (cell==nil) {
        cell = [ [UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleIdentifier];
    }
//    UIImage *image1 = [UIImage imageNamed:@"index.jpg"];
//    UIImage *image2 = [UIImage imageNamed:@"phone.png"];
    //cell.imageView.image = image1;
    cell.textLabel.text = self.cityNames1[indexPath.row];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
//    if (indexPath.row < 13) {
//        cell.detailTextLabel.text =@"first 12";
//        cell.imageView.image = image1;
//    }
//    else{
//        cell.detailTextLabel.text =@"last 12";
//        cell.imageView.image = image2;
//    }
    return cell;
    
}



- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Row Selected = %d",indexPath.row);
   [self performSegueWithIdentifier: @"showDetail" sender: self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.table1 indexPathForSelectedRow];
        //detailViewController *detail = [self detailForIndexPath:path];
        detailViewController *destViewController = segue.destinationViewController;
        destViewController.indexValue= indexPath.row ;
        //[self.navigationController pushViewController:destViewController animated:YES];
        
        
    }
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
