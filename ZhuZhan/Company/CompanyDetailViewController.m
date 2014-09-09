//
//  CompanyDetailViewController.m
//  ZhuZhan
//
//  Created by 孙元侃 on 14-9-9.
//
//

#import "CompanyDetailViewController.h"
#import "MoreCompanyViewController.h"
#import "AppDelegate.h"
#import "HomePageViewController.h"
@interface CompanyDetailViewController ()
@property(nonatomic,strong)UIScrollView* myScrollView;
@end

@implementation CompanyDetailViewController

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    //恢复tabBar
    AppDelegate* app=[AppDelegate instance];
    HomePageViewController* homeVC=(HomePageViewController*)app.window.rootViewController;
    [homeVC homePageTabBarRestore];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //    //隐藏tabBar
    AppDelegate* app=[AppDelegate instance];
    HomePageViewController* homeVC=(HomePageViewController*)app.window.rootViewController;
    [homeVC homePageTabBarHide];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initMyScrollViewAndNavi];
    [self initFirstView];
    [self initSecondView];
    self.view.backgroundColor=[UIColor whiteColor];
}

-(void)initMyScrollViewAndNavi{
    //myScrollView初始化
    self.myScrollView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
    self.myScrollView.showsVerticalScrollIndicator=NO;
    [self.view addSubview:self.myScrollView];
    
    self.title = @"公司详情";
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,[UIFont fontWithName:@"GurmukhiMN-Bold" size:19], NSFontAttributeName,nil]];
    
    
    //左back button
    UIButton* button=[[UIButton alloc]initWithFrame:CGRectMake(0,0,29,28.5)];
    [button setImage:[UIImage imageNamed:@"icon_04.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithCustomView:button];

}

-(void)initFirstView{
    //view的初始,后面为在上添加label button等
    UIView* view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 130)];
    [self scrollViewAddView:view];
    
    //公司图标
    UIImageView* companyImageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"公司－我的公司_02a.png"]];
    [view addSubview:companyImageView];
    
    //公司名称label
    UILabel* companyLabel=[[UILabel alloc]initWithFrame:CGRectMake(105, 20, 200, 50)];
    //companyLabel.backgroundColor=[UIColor yellowColor];
    companyLabel.numberOfLines=2;
    companyLabel.textColor=RGBCOLOR(62, 127, 226);
    NSString* companyName=@"公司名称显示在这里显示在这里里显示在这里里里";
    companyLabel.text=companyName;
    companyLabel.font=[UIFont boldSystemFontOfSize:17];
    [view addSubview:companyLabel];
    
    //公司行业label
    UILabel* businessLabel=[[UILabel alloc]initWithFrame:CGRectMake(105, 70, 300, 20)];
    NSString* businessName=@"建筑";
    businessLabel.text=[NSString stringWithFormat:@"公司行业：%@",businessName];
    businessLabel.font=[UIFont boldSystemFontOfSize:15];
    businessLabel.textColor=RGBCOLOR(168, 168, 168);
    [view addSubview:businessLabel];
    
    //+关注
    UIButton* button=[UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"+关注" forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont boldSystemFontOfSize:15];
    [button addTarget:self action:@selector(notice) forControlEvents:UIControlEventTouchUpInside];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    button.frame=CGRectMake(0, 105, 100, 15);
    
    [view addSubview:button];
}

-(void)initSecondView{
    UIView* view=[[UIView alloc]initWithFrame:CGRectZero];
    view.backgroundColor=RGBCOLOR(240, 240, 240);

    UIImageView* separatorLine=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 3.5)];
    separatorLine.image=[UIImage imageNamed:@"XiangMuXiangQing/Shadow-bottom.png"];
    [view addSubview:separatorLine];
    
    UIImageView* titleImageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"u33.png"]];
    titleImageView.center=CGPointMake(160, 15);
    [view addSubview:titleImageView];
    
    
    UILabel* titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 90, 15)];
    titleLabel.text=@"公司介绍";
    titleLabel.textAlignment=NSTextAlignmentCenter;
    titleLabel.font=[UIFont systemFontOfSize:14];
    titleLabel.textColor=BlueColor;
    titleLabel.center=CGPointMake(160, 35);
    [view addSubview:titleLabel];
    
    NSString* str=@"asdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmfla=====smdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasn=====fmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflasmdlasmdalsdmasldasl;daasdasnfmalsmflas=====mdlasmdalsdmasldasl;da";
    CGRect bounds=[str boundingRectWithSize:CGSizeMake(280, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil];
    UILabel* label=[[UILabel alloc]initWithFrame:CGRectMake(20, 60, 280, bounds.size.height)];
    label.numberOfLines=0;
    label.text=str;
    label.font=[UIFont systemFontOfSize:15];
    label.textColor=GrayColor;
    
    view.frame=CGRectMake(0, self.myScrollView.contentSize.height , 320, label.frame.size.height+75 );
    
    [view addSubview:label];
    [self scrollViewAddView:view];
}

-(void)notice{
    NSLog(@"用户选择了关注");
}

//给MyScrollView的contentSize加高度
-(void)scrollViewAddView:(UIView*)view{
    CGSize size=self.myScrollView.contentSize;
    size.height+=view.frame.size.height;
    self.myScrollView.contentSize=size;
    
    [self.myScrollView addSubview:view];
}

-(void)back{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
