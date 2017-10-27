//
//  ViewController.m
//  tableview
//
//  Created by student on 10/25/17.
//  Copyright © 2017 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createElements];
    
   }

-(void)createElements
{
    self.table=[[UITableView alloc]initWithFrame:CGRectMake(10, 40, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
   
    self.table.delegate=self;
    self.table.dataSource=self;
    self.array=[[NSMutableArray alloc]initWithObjects:@"karthik",@"sumanth", nil];
     [self.view addSubview:self.table];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    UITableViewCell * cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    cell.textLabel.text=[self.array objectAtIndex:indexPath.row];
    return cell;
}

@end
