//
//  NavgationBarExtension.swift
//  NavigationDemo
//
//  Created by Xie Fan on 16/1/31.
//  Copyright © 2016年 PrettyX.org. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    class func setupStyle() {
        let navBar = UINavigationBar.appearance()
        navBar.barTintColor = UIColor.navigationBarColor()
        navBar.translucent = false
        navBar.tintColor = UIColor.whiteColor()
        navBar.titleTextAttributes = [
            NSForegroundColorAttributeName : UIColor.whiteColor(),
            NSFontAttributeName: UIFont.systemFontOfSize(20)
        ]
        
    }
    
}