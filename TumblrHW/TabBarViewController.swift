//
//  TabBarViewController.swift
//  TumblrHW
//
//  Created by Alli Dryer on 10/11/14.
//  Copyright (c) 2014 Alli Dryer. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as UIViewController
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as UIViewController
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as UIViewController
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as UIViewController
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as UIViewController
        
        onHomeButton(self)
        
    }

    @IBAction func onHomeButton(sender: AnyObject) {
        homeViewController.view.frame = containerView.frame
        containerView.addSubview(homeViewController.view)
        homeButton.selected = true
        searchButton.selected = false
        accountButton.selected = false
        trendingButton.selected = false
    }
    
    @IBAction func onSearchButton(sender: AnyObject) {
        searchViewController.view.frame = containerView.frame
        containerView.addSubview(searchViewController.view)
        searchButton.selected = true
        homeButton.selected = false
        accountButton.selected = false
        trendingButton.selected = false
    }
    
//    @IBAction func onComposeButton(sender: AnyObject) {
//        composeViewController.view.frame = containerView.frame
//        containerView.addSubview(composeViewController.view)
//        homeButton.selected = false
//        searchButton.selected = false
//        accountButton.selected = false
//        trendingButton.selected = false
//    }
    
    @IBAction func onAccountButton(sender: AnyObject) {
        accountViewController.view.frame = containerView.frame
        containerView.addSubview(accountViewController.view)
        accountButton.selected = true
        homeButton.selected = false
        searchButton.selected = false
        trendingButton.selected = false
    }
    
    @IBAction func onTrendingButton(sender: AnyObject) {
        trendingViewController.view.frame = containerView.frame
        containerView.addSubview(trendingViewController.view)
        trendingButton.selected = true
        homeButton.selected = false
        searchButton.selected = false
        accountButton.selected = false
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
