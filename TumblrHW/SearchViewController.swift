//
//  SearchViewController.swift
//  TumblrHW
//
//  Created by Alli Dryer on 10/11/14.
//  Copyright (c) 2014 Alli Dryer. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchfeedImageView: UIImageView!
    @IBOutlet weak var loadingImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "searchWasSelected:", name: "searchSelected", object: nil)
        animateLoading()
    }
    
    override func viewWillAppear(animated: Bool) {
        //self.searchfeedImageView.hidden = true
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchWasSelected(notification: NSNotification) {
        println("NOTIFIED")
        animateLoading()

    }
    
    func animateLoading() {
        self.searchfeedImageView.hidden = true
        var images = UIImage.animatedImageNamed("loading-", duration: 1)
        self.loadingImageView.image = images
        
        delay(1.5) {
            self.searchfeedImageView.hidden = false
        }

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
