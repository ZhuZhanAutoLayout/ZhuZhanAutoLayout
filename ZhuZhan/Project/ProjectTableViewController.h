//
//  ProjectTableViewController.h
//  ZhuZhan
//
//  Created by 汪洋 on 14-8-26.
//
//

#import <UIKit/UIKit.h>
#import "TopicsTableViewController.h"
@interface ProjectTableViewController : UITableViewController{
    NSMutableArray *showArr;
    int startIndex;
    TopicsTableViewController *topicsview;
}
@property(nonatomic,strong)id<HidePage>delegate;
@end