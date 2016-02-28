//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Diana Nedkova on 2/25/16.
//  Copyright © 2016 Diana Nedkova. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {


    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var xInitial : [CGFloat] = []
    var yInitial : [CGFloat] = []
    var buttons : [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()


        buttons = [photoButton, chatButton, quoteButton, textButton, linkButton, videoButton]
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        for i in 0..<buttons.count {
            
            
            self.buttons[i].imageView?.frame.origin.y = 570
            
        }
        
    }
    

    
    override func viewDidAppear(animated: Bool) {

    
       
        self.photoButton.transform = CGAffineTransformMakeTranslation(0, -434)
            
        UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.chatButton.transform = CGAffineTransformMakeTranslation(0, -308)
            })
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.quoteButton.transform = CGAffineTransformMakeTranslation(0, -434)
        })
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.textButton.transform = CGAffineTransformMakeTranslation(0, -434)
        })
        
        UIView.animateWithDuration(0.6, animations: { () -> Void in
            self.linkButton.transform = CGAffineTransformMakeTranslation(0, -308)
        })
        
        UIView.animateWithDuration(0.7, animations: { () -> Void in
            self.videoButton.transform = CGAffineTransformMakeTranslation(0, -308)
        })

        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onTapNevermind(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
