//
//  ViewController.swift
//  SampleApp
//
//  Created by ITC Infotech on 05/07/18.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UITextFieldDelegate {
    
    let customView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "icon")
        let imgData = UIImagePNGRepresentation(image!) as NSData?
       // print(imgData)
        let imgString = imgData?.base64EncodedString(options: .lineLength64Characters)
       // print(imgString!)
        
        let backData = Data(base64Encoded: imgString!, options: Data.Base64DecodingOptions.ignoreUnknownCharacters)
        let ima = UIImage(data: backData!)
       // print(ima!)
        
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






















