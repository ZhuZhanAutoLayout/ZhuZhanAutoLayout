//
//  LoginModel.h
//  ZhuZhan
//
//  Created by 汪洋 on 14-8-25.
//
//

#import <Foundation/Foundation.h>

@interface LoginModel : NSObject
//用户id
@property (nonatomic,copy) NSString *a_id;
//userToken
@property (nonatomic,copy) NSString *a_userToken;
//deviceToken
@property (nonatomic,copy) NSString *a_deviceToken;

@property (nonatomic,copy) NSDictionary *dict;

//注册
+ (NSURLSessionDataTask *)RegisterWithBlock:(void (^)(NSMutableArray *posts, NSError *error))block dic:(NSMutableDictionary *)dic;

//登录
+ (NSURLSessionDataTask *)LoginWithBlock:(void (^)(NSMutableArray *posts, NSError *error))block dic:(NSMutableDictionary *)dic;

//脸部登录
+ (NSURLSessionDataTask *)PostFaceLoginWithBlock:(void (^)(NSMutableArray *posts, NSError *error))block dic:(NSMutableDictionary *)dic;

//用户注销
+ (NSURLSessionDataTask *)PostLogOutWithBlock:(void (^)(NSMutableArray *posts, NSError *error))block dic:(NSMutableDictionary *)dic;
@end