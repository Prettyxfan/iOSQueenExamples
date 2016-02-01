//
//  ViewController.swift
//  NavigationDemo
//
//  Created by Xie Fan on 16/1/31.
//  Copyright © 2016年 PrettyX.org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(animated: Bool) {
        
        let nav = self.navigationController?.navigationBar
        
        //默认设置
        nav?.barStyle = UIBarStyle.Black

        //自定义导航栏背景色
        //nav?.barTintColor = UIColor.navigationBarColor()
        
        //透明度
//        nav?.translucent = false

        //透明导航栏
//        nav?.translucent = true
//        nav?.setBackgroundImage(UIImage(),
//            forBarMetrics: UIBarMetrics.Default)
//        nav?.shadowImage = UIImage()
        
        //导航栏按钮－文字
//        let homeButton : UIBarButtonItem = UIBarButtonItem(title: "Left", style: UIBarButtonItemStyle.Plain, target: self, action: "")
//        
//        let logButton : UIBarButtonItem = UIBarButtonItem(title: "Right", style: UIBarButtonItemStyle.Plain, target: self, action: "")
//        
//        self.navigationItem.leftBarButtonItem = homeButton
//        self.navigationItem.rightBarButtonItem = logButton
        
        //导航栏按钮－图标
        let leftItem = UIButton(frame: CGRectMake(0, 0, 12, 20))
        leftItem.setImage(UIImage(named: "icon-arrow"), forState: .Normal)
        leftItem .addTarget(self, action: "", forControlEvents: .TouchUpInside)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftItem)
        
        let rightItem = UIButton(frame: CGRectMake(0, 0, 22, 16))
        rightItem.setImage(UIImage(named: "icon-list"), forState: .Normal)
        rightItem .addTarget(self, action: "", forControlEvents: .TouchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightItem)
        
        //导航栏标题
        self.title = "iOSQueen"
        self.navigationItem.title = "iOSQueen"
        
        //导航栏标题字体和颜色
//        nav?.titleTextAttributes = [
//            NSForegroundColorAttributeName : UIColor.yellowColor(),
//            NSFontAttributeName: UIFont.systemFontOfSize(20)
//        ]
        

        //导航栏Logo
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 28, height: 28))
//        imageView.contentMode = .ScaleAspectFit
//        let image = UIImage(named: "swift")
//        imageView.image = image
//        navigationItem.titleView = imageView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

