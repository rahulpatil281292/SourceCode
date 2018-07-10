//
//  ViewController.swift
//  SampleApp
//
//  Created by ITC Infotech on 05/07/18.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let customView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.frame = CGRect(x: 20, y: 40, width: 200, height: 200)
        customView.backgroundColor = UIColor.blue
        view.addSubview(customView)
        
        let image1 = customView.takeScreenShot()
        print(image1)
    }
}


extension UIView {
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






















