//
//  DetailViewController.swift
//  Transition
//
//  Created by Xie Fan on 16/2/7.
//  Copyright © 2016年 PrettyX.org. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UINavigationControllerDelegate {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    var image: UIImage!
    
    //MARK: - life cycle
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.navigationController?.delegate = self
    }
    
    //MARK: - UINavigationControllerDelegate
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        if operation == UINavigationControllerOperation.Pop {
            return PopTransion()
        } else {
            return nil
        }
    }
}