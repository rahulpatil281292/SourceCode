//
//  ViewController.swift
//  SampleApp
//
//  Created by ITC Infotech on 05/07/17.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView = UIImageView()
    let imagepicker = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imagepicker.delegate = self
        imageView.frame = CGRect(x: 40, y: 150, width: 100, height: 100)
        self.view.addSubview(imageView)
    }
    
    @IBAction func uploadImage(_ sender : UIButton) {
        imagepicker.cameraDevice = .rear
        imagepicker.cameraCaptureMode = .photo
        imagepicker.sourceType = .photoLibrary
    }
}


extension ViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        guard let image = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            return
        }
        imageView.image = image
        print(image)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
}























