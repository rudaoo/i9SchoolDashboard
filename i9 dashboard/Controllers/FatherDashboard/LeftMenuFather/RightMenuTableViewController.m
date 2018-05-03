//
//  RightMenuTableViewController.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 25/04/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "RightMenuTableViewController.h"

@interface RightMenuTableViewController ()

@end

@implementation RightMenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view




//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
//{
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//
//    return 4;
//
//}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//    IPFQuestionListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"IPFQuestionListTableViewCell"];
//    [cell.titleLabel setText:[self.subjectsListFaq objectAtIndex:indexPath.row]];
//    cell.selectionStyle = UITableViewCellSelectionStyleGray;
//    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] init];
//    tapGestureRecognizer.numberOfTouchesRequired = 1;
//    [tapGestureRecognizer setCancelsTouchesInView:NO];
//    [cell addGestureRecognizer:tapGestureRecognizer];
//
//    return cell;
//}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

//    QuestionsListOfSubjectTableViewController *vc = [QuestionsListOfSubjectTableViewController initFromStoryboard:@"Support"];
//
//    vc.currentSubject = [self.subjectsListFaq objectAtIndex:indexPath.row];
//    [self.navigationController pushViewController:vc animated:YES];

}


//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    return UITableViewAutomaticDimension;
//}
//
//- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    return 150;
//}


@end
