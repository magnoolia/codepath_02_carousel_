//
//  SignInViewController.swift
//  carousel
//
//  Created by Magnolia Caswell-Mackey on 9/26/15.
//  Copyright © 2015 Magnolia. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {


    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    let alertController = UIAlertController(title: "Email Required", message: "Please enter your username and password", preferredStyle: .Alert)

    
    let alertController_signIn = UIAlertController(title: "Sign In Failed", message: "Username or password was incorrect", preferredStyle: .Alert)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // create an OK action
        let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            // handle response here.
        }
        // add the OK action to the alert controller
        alertController.addAction(OKAction)
 
        
        // create an OK action
        let OKAction_signIn = UIAlertAction(title: "OK", style: .Default) { (action) in
            // handle response here.
        }
        // add the OK action to the SECOND alert controller
        alertController_signIn.addAction(OKAction_signIn)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInAction(sender: AnyObject) {
        print("sign in button pressed")
        if usernameField.text!.isEmpty || passwordField.text!.isEmpty {
            print("empty field")
     
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
        } else {
            print("attempting to sign in")
            // Delay for 1 second, then run the code between the braces.
            delay(1) {
                //self.checkPassword()
                if self.usernameField.text! == "maggie" && self.passwordField.text! == "password" {
                        print("correct credentials")
                    // move on to next screen
                        self.performSegueWithIdentifier("signInSegue", sender: nil)
                    
                    } else {
                        print("wrong credentials")
                        self.presentViewController(self.alertController_signIn, animated: true) {
                        // optional code for what happens after the alert controller has finished presenting
                    }
                
                
                }
            }
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
