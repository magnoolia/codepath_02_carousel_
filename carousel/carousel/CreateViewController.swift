//
//  CreateViewController.swift
//  carousel
//
//  Created by Magnolia Caswell-Mackey on 9/26/15.
//  Copyright © 2015 Magnolia. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    @IBOutlet weak var topTextImage: UIImageView!

    @IBOutlet weak var usernameField: UITextField!
    var initialY: CGFloat!
    let offset: CGFloat = -50
    
    @IBOutlet weak var emailField: UITextField!
    var initialY_email: CGFloat!
    let offset_email: CGFloat = -50
    
    //@IBOutlet weak var passwordField: UITextField!
   
    @IBOutlet weak var pwdField: UITextField!
    
    var initialY_password: CGFloat!
    let offset_password: CGFloat = -50
    
    @IBOutlet weak var confirmPasswordField: UITextField!
    var initialY_confirmPassword: CGFloat!
    let offset_confirmPassword: CGFloat = -50
    
    
    
    
    
    let url = "https://www.dropbox.com/terms?mobile=1"
    
    //@IBOutlet weak var termsWebView: UIWebView!
    
    @IBAction func onTap(sender: AnyObject) {
        usernameField.endEditing(true)
    }
    
    @IBAction func termsBtn(sender: UIButton) {
        sender.selected = true
        
        //self.termsWebView.hidden = true
        
//        let requestURL = NSURL(string:url)
//        let request = NSURLRequest(URL: requestURL!)
//        termsWebView.loadRequest(request)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //self.termsWebView.hidden = false
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        initialY = usernameField.frame.origin.y
        initialY_email = emailField.frame.origin.y
        initialY_password = pwdField.frame.origin.y
        initialY_confirmPassword = confirmPasswordField.frame.origin.y
    }

    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        self.usernameField.frame.origin = CGPoint(x: self.usernameField.frame.origin.x, y: self.initialY + self.offset)
        self.emailField.frame.origin = CGPoint(x: self.emailField.frame.origin.x, y: self.initialY_email + self.offset_email)
        self.pwdField.frame.origin = CGPoint(x: self.pwdField.frame.origin.x, y: self.initialY_password + self.offset_password)
        self.confirmPasswordField.frame.origin = CGPoint(x: self.confirmPasswordField.frame.origin.x, y: self.initialY_confirmPassword + self.offset_confirmPassword)
        
        //NOT USING--from code snippet:
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        self.usernameField.frame.origin = CGPoint(x: self.usernameField.frame.origin.x, y: self.initialY)
        self.emailField.frame.origin = CGPoint(x: self.emailField.frame.origin.x, y: self.initialY_email)
        self.pwdField.frame.origin = CGPoint(x: self.pwdField.frame.origin.x, y: self.initialY_password)
        self.confirmPasswordField.frame.origin = CGPoint(x: self.confirmPasswordField.frame.origin.x, y: self.initialY_confirmPassword)
        
        //--from code snipped:
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
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

}
