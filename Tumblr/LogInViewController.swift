//
//  LogInViewController.swift
//  Tumblr
//
//  Created by Diana Nedkova on 2/27/16.
//  Copyright © 2016 Diana Nedkova. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!

    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onTapLogInButton(sender: AnyObject) {
        if emailField.text!.isEmpty == false && passwordField.text!.isEmpty == false {
        self.performSegueWithIdentifier("mainSegue", sender: nil)
        }
        
    }

    @IBAction func onTapCancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
}
