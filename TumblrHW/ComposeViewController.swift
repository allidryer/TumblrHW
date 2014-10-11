//
//  ComposeViewController.swift
//  TumblrHW
//
//  Created by Alli Dryer on 10/11/14.
//  Copyright (c) 2014 Alli Dryer. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    @IBOutlet weak var nevermindButton: UIButton!
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        textButton.center = CGPointMake(59.5, 750.5)
        photoButton.center = CGPointMake(160.5, 750.5)
        quoteButton.center = CGPointMake(260.5, 750.5)
        linkButton.center = CGPointMake(59.5, 882.5)
        chatButton.center = CGPointMake(160.5, 882.5)
        videoButton.center = CGPointMake(260.5, 882.5)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.photoButton.center = CGPointMake(160.5, 182.5)
            }, completion: nil)
        
        UIView.animateWithDuration(0.45, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.textButton.center = CGPointMake(59.5, 182.5)
            }, completion: nil)
        
        UIView.animateWithDuration(0.43, delay: 0.15, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.quoteButton.center = CGPointMake(260.5, 182.5)
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.chatButton.center = CGPointMake(160.5, 314.5)
            }, completion: nil)
        
        UIView.animateWithDuration(0.45, delay: 0.25, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.linkButton.center = CGPointMake(59.5, 314.5)
            }, completion: nil)
        
        UIView.animateWithDuration(0.43, delay: 0.3, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            self.videoButton.center = CGPointMake(260.5, 314.5)
            }, completion: nil)
    }

    @IBAction func onNeverMindButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
                ),
            dispatch_get_main_queue(), closure)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
