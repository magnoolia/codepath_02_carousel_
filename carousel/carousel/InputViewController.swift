//
//  InputViewController.swift
//  carousel
//
//  Created by Magnolia Caswell-Mackey on 9/23/15.
//  Copyright © 2015 Magnolia. All rights reserved.
//

import UIKit

class InputViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: 320, height: 1135)
        scrollView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) { // any offset changes
        var offset = Float(scrollView.contentOffset.y)
       // print("offset y: \(scrollView.contentOffset.y)")
 
        var tx = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        var ty = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
      
        var rotation = convertValue(CGFloat(offset), r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        //given
        
        var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
        var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
        var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
        var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
        
        
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation) * M_PI / 180))
    
        
        tile2View.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        
        tile2View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation/*s[1]*/) * M_PI / 180))
        
        
        tile3View.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        
        tile3View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation/*s[2]*/) * M_PI / 180))

        
        tile4View.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        
        tile4View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation/*s[3]*/) * M_PI / 180))

        
        tile5View.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        
        tile5View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation/*s[4]*/) * M_PI / 180))

        
        tile6View.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        
        tile6View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation/*s[5]*/) * M_PI / 180))
        
        
        
        
        
      
    }
    
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
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
