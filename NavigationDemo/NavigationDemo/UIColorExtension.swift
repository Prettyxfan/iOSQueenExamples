//
//  UIColorExtension.swift
//  NavigationDemo
//
//  Created by Xie Fan on 16/1/31.
//  Copyright © 2016年 PrettyX.org. All rights reserved.
//

import UIKit

extension UIColor {
    
    //主题色
    class func navigationBarColor() -> UIColor {
        return UIColor(red:0.26, green:0.64, blue:0.97, alpha:1)
    }
    
    //第二主题色
    class func applicationSecondColor() -> UIColor {
        return UIColor.lightGrayColor()
    }
    
    //警告颜色
    class func applicationWarningColor() -> UIColor {
        return UIColor(red: 0.1, green: 1, blue: 0, alpha: 1)
    }
    
    //链接颜色
    class func applicationLinkColor() -> UIColor {
        return UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha:1)
    }
    
}