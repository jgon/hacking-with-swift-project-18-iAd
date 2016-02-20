//
//  ViewController.swift
//  Project18
//
//  Created by Jacques on 20/02/16.
//  Copyright © 2016 J4SOFT. All rights reserved.
//

import iAd
import UIKit

class ViewController: UIViewController, ADBannerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(getBannerView())
        
        let viewsDictionary = ["bannerView" : getBannerView()]
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[bannerView]", options: [], metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[bannerView]", options: [], metrics: nil, views: viewsDictionary))
    }
    
    override func viewDidAppear(animated: Bool) {
        view.addSubview(getBannerView())
    }
    
    override func viewWillAppear(animated: Bool) {
        getBannerView().hidden = false
    }
    
    override func viewWillDisappear(animated: Bool) {
        getBannerView().hidden = true
    }
    
    func getBannerView() -> ADBannerView {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        return appDelegate.bannerView
    }
}

