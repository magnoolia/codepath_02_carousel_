//
//  WebViewController.swift
//  carousel
//
//  Created by Magnolia Caswell-Mackey on 9/28/15.
//  Copyright © 2015 Magnolia. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var termsWebView: UIWebView!
    
    let url = "https://www.dropbox.com/terms?mobile=1"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        termsWebView.loadRequest(request)
        
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

}
