//
//  PersonalCenterCompanyTableViewCell.m
//  ZhuZhan
//
//  Created by 汪洋 on 14/12/22.
//
//

#import "PersonalCenterCompanyTableViewCell.h"

@implementation PersonalCenterCompanyTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        [self addContent];
    }
    return self;
}

-(void)addContent{
    UIImageView *lineImage2 = [[UIImageView alloc] initWithFrame:CGRectMake(35, 0, 2, 50)];
    [lineImage2 setBackgroundColor:[UIColor blackColor]];
    [self.contentView addSubview:lineImage2];
    lineImage2.alpha = 0.08;
    
    headImage = [[EGOImageView alloc] initWithPlaceholderImage:[GetImagePath getImagePath:@"公司－我的公司_02a"]];
    [headImage setFrame:CGRectMake(20.5, 9.5, 30, 30)];
    headImage.layer.cornerRadius=15;
    headImage.layer.masksToBounds=YES;
    //headImage.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:headImage];
    
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 25, 200, 20)];
    titleLabel.font = [UIFont fontWithName:nil size:14];
    titleLabel.textAlignment = NSTextAlignmentLeft;
    titleLabel.textColor = [UIColor lightGrayColor];
    [self.contentView addSubview:titleLabel];
    
    contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 5, 200, 20)];
    contentLabel.font = [UIFont fontWithName:nil size:12];
    contentLabel.textAlignment = NSTextAlignmentLeft;
    contentLabel.textColor = [UIColor blackColor];
    contentLabel.text = @"通过公司认证";
    [self.contentView addSubview:contentLabel];
}

-(void)setImageUrl:(NSString *)imageUrl{
    NSLog(@"%@",imageUrl);
    headImage.imageURL = [NSURL URLWithString:imageUrl];
}

-(void)setCompanyName:(NSString *)companyName{
    titleLabel.text = companyName;
}
@end
