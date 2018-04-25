//
//  TeacherMenuTableViewController.m
//  i9 dashboard
//
//  Created by Rudney Camargo Pereira on 25/04/18.
//  Copyright © 2018 Rudney Camargo Pereira. All rights reserved.
//

#import "TeacherMenuTableViewController.h"

@interface TeacherMenuTableViewController ()

@end

@implementation TeacherMenuTableViewController

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

#pragma mark - Table view data source

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //    QuestionsListOfSubjectTableViewController *vc = [QuestionsListOfSubjectTableViewController initFromStoryboard:@"Support"];
    //
    //    vc.currentSubject = [self.subjectsListFaq objectAtIndex:indexPath.row];
    //    [self.navigationController pushViewController:vc animated:YES];
    
}


@end
