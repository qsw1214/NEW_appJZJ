//
//  ClassDetialView.m
//  家长界
//
//  Created by mac on 2016/11/24.
//  Copyright © 2016年 西部家联. All rights reserved.
//

#import "ClassDetialView.h"

@implementation ClassDetialView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        //主标题
        _classDescText = [self createLableWithAlignment:NSTextAlignmentLeft andTextColor:[UIColor blackColor] andTextFont:18 andText:@"重塑家庭成长课：如何让家不再伤人？"];
        //评价条数
        _numOfcomment = [self createLableWithAlignment:NSTextAlignmentLeft andTextColor:HWColor(164, 164, 164) andTextFont:15 andText:@"21条评价"];
        
        //参加人次
        _numOfPerson = [self createLableWithAlignment:NSTextAlignmentLeft andTextColor:HWColor(164, 164, 164) andTextFont:15 andText:@"1943人参加"];
        
        //视频价格
        _priceOfVidio = [self createLableWithAlignment:NSTextAlignmentLeft andTextColor:[UIColor redColor] andTextFont:18 andText:@"¥198"];
        
        //评分数
        _countLabel = [self createLableWithAlignment:NSTextAlignmentLeft andTextColor:HWColor(220, 157, 64) andTextFont:15 andText:@"5.0分"];
        //评分星的视图
        _commentImage = [[UIView alloc]init];
        _commentImage.backgroundColor = [UIColor whiteColor];
        
        [self addSubview:_commentImage];
        
    }
    
    return self;
    
}

//添加label
-(UILabel *)createLableWithAlignment:(NSTextAlignment)alignment andTextColor:(UIColor *)color andTextFont:(CGFloat)font andText:(NSString *)text
{
    UILabel *lab = [[UILabel alloc]init];
    lab.textAlignment = NSTextAlignmentLeft;
    lab.textColor = color;
    lab.font = [UIFont systemFontOfSize:font];
    lab.text = text;
    [self addSubview:lab];
    return lab;
}

/*

//添加按钮
-(UIButton *)btncreateButtonSetNormalImage:(NSString *)nolImag andHightLightedImage:(NSString *)hImage andTag:(NSInteger)tage
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setBackgroundImage:[UIImage imageNamed:nolImag] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:hImage] forState:UIControlStateHighlighted];
    btn.tag = tage;
    [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:btn];
    
    return btn;
}

-(void)clickBtn:(UIButton *)sender
{
    if (sender.tag == 0) {
        
        HWLog(@"收藏");
        
        [[NSNotificationCenter defaultCenter] postNotificationName:@"shoucang" object:nil userInfo:nil];
        [sender setBackgroundImage:[UIImage imageNamed:@"shoucangheigh"] forState:UIControlStateNormal];
        
    }
    
    if (sender.tag == 1) {
        
        HWLog(@"转发");
        [[NSNotificationCenter defaultCenter] postNotificationName:@"relay" object:nil userInfo:nil];
        
    }
}


*/


@end
