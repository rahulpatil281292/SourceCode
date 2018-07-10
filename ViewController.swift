//
//  ViewController.swift
//  SampleApp
//
//  Created by ITC Infotech on 05/07/17.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit

// Take snapshot of UIView programmatically.
class ViewController: UIViewController {
    
    // Create one view
    let customView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize and some changes in UIView
        customView.frame = CGRect(x: 20, y: 40, width: 200, height: 200)
        customView.backgroundColor = UIColor.blue
        view.addSubview(customView)
        
        let image1 = customView.takeScreenShot()
        
        print(image1)   // we get image of UIView here.
    }
}


extension UIView {
   
    //Function - take screenshot of UIView with Graphics.
    func takeScreenShot() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        if image != nil {
            return image!
        }
        return UIImage()
    }
    
    
}






















