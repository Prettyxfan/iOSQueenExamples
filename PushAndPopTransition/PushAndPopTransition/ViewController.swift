//
//  ViewController.swift
//  Transition
//
//  Created by Xie Fan on 16/2/6.
//  Copyright © 2016年 PrettyX.org. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UINavigationControllerDelegate {
    
    var selectedCell: CustomCollectionViewCell?
    
    //MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.delegate = self
    }
    
    //MARK: - UINavigationControllerDelegate
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        if operation == UINavigationControllerOperation.Push {
            return MagicMoveTransion()
        } else {
            return nil
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            let detailViewController = segue.destinationViewController as! DetailViewController
            detailViewController.image = self.selectedCell!.imageView.image
        }
    }
    
    //MARK: - UICollectionViewDataSource
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("customCell", forIndexPath: indexPath) as! CustomCollectionViewCell
        cell.imageView.image = UIImage(named:"\(indexPath.row+1)")
        
        return cell
    }
    
    //MARK: - UICollectionViewDelegate
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        self.selectedCell = collectionView.cellForItemAtIndexPath(indexPath) as? CustomCollectionViewCell
        
        self.performSegueWithIdentifier("showDetail", sender: nil)
    }
    
    
}

