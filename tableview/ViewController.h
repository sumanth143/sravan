//
//  ViewController.h
//  tableview
//
//  Created by student on 10/25/17.
//  Copyright © 2017 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property UITableView * table;
@property NSMutableArray * array;
@end

