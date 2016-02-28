//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Diana Nedkova on 2/25/16.
//  Copyright © 2016 Diana Nedkova. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController : UIViewController!
    var searchViewController : UIViewController!
    var composeViewController : UIViewController!
    var accountViewController : UIViewController!
    var trendingViewController : UIViewController!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    @IBOutlet weak var balloonImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        self.balloonImage.alpha = 1
        
    }

    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        
        
        selectedIndex = sender.tag
        
        if selectedIndex == 1 {
            UIView.animateWithDuration(0.4, animations: {

                self.balloonImage.alpha = 0            })
        }
        else {
            
            UIView.animateWithDuration(0.4, animations: {
                
                self.balloonImage.alpha = 1            })
            
        }
    
        
        buttons[previousIndex].selected = false
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
        
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func onTapComposeButton(sender: AnyObject) {
        performSegueWithIdentifier("composeSegue", sender: nil)
    }
 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
