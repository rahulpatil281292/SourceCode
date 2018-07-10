//
//  ViewController.swift
//  SampleApp
//
//  Created by ITC Infotech on 05/07/17.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        guard let customImage = UIImage(named: "icon") else {
            return
        }
        // get NSData object from UIImage.
        let imageData = UIImagePNGRepresentation(customImage) as NSData?
        // convert image into string with base64Encoding
        guard let imageInString = imageData?.base64EncodedString(options: Data.Base64EncodingOptions.lineLength64Characters) else {
            return
        }
        
        print("Image in String : - \(imageInString)")
        
        // convert string into image
        
        guard let imageRevertData = Data(base64Encoded: imageInString, options: Data.Base64DecodingOptions.ignoreUnknownCharacters) else {
            return
        }
        guard let originalImageBack = UIImage(data: imageRevertData) else {
            return
        }
        
        print("Revert back original image : - \(originalImageBack)")
        
    }
}























