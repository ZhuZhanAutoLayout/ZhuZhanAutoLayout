//
//  MyCenterModel.m
//  ZhuZhan
//
//  Created by 汪洋 on 14-8-27.
//
//

#import "MyCenterModel.h"
#import "ProjectStage.h"
@implementation MyCenterModel
-(void)setDict:(NSDictionary *)dict{
    _dict = dict;
    self.a_id = [ProjectStage ProjectStrStage:dict[@"userId"]];
    self.a_realName = [ProjectStage ProjectStrStage:dict[@"realName"]];
    if(![[NSString stringWithFormat:@"%@",dict[@"workHistory"]] isEqualToString:@"<null>"]){
        self.a_duties = [ProjectStage ProjectStrStage:dict[@"workHistory"][@"duties"]];
        self.a_company = [ProjectStage ProjectStrStage:dict[@"workHistory"][@"companyName"]];
    }else{
        self.a_duties = @"";
        self.a_company = @"";
    }
    self.a_sex = [ProjectStage ProjectStrStage:dict[@"sexCn"]];
    self.a_cellPhone = [ProjectStage ProjectStrStage:dict[@"loginTel"]];
    self.a_email = [ProjectStage ProjectStrStage:dict[@"email"]];
    if(![[ProjectStage ProjectStrStage:dict[@"headImageId"]] isEqualToString:@""]){
        self.a_userImage = [NSString stringWithFormat:@"%s%@",serverAddress,image([ProjectStage ProjectStrStage:dict[@"headImageId"]], @"login", @"", @"", @"")];
    }else{
        self.a_userImage = [ProjectStage ProjectStrStage:dict[@"headImageId"]];
    }
    self.a_location = [NSString stringWithFormat:@"%@ %@",[ProjectStage ProjectStrStage:dict[@"landCity"]],[ProjectStage ProjectStrStage:dict[@"landDistrict"]]];
    self.a_birthday = [ProjectStage ProjectTimeStage:dict[@"birthday"]];
    self.a_constellation = [ProjectStage ProjectStrStage:dict[@"constel"]];
    self.a_bloodType = [ProjectStage ProjectStrStage:dict[@"bloodTypeCn"]];
    self.a_province = [ProjectStage ProjectStrStage:dict[@"landProvince"]];
    self.a_city = [ProjectStage ProjectStrStage:dict[@"landCity"]];
    self.a_district = [ProjectStage ProjectStrStage:dict[@"landDistrict"]];
    self.a_userName = [ProjectStage ProjectStrStage:dict[@"loginName"]];
    if(![[ProjectStage ProjectStrStage:dict[@"backgroundImageId"]] isEqualToString:@""]){
        self.a_backgroundImage=[NSString stringWithFormat:@"%s%@",serverAddress,image([ProjectStage ProjectStrStage:dict[@"backgroundImageId"]], @"login", @"", @"", @"")];
    }else{
        self.a_backgroundImage=[ProjectStage ProjectStrStage:dict[@"backgroundImageId"]];
    }
}
@end
