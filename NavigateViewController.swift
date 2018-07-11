//
//  ViewController.swift
//  SampleApp
//
//  Created by ITC Infotech on 05/07/17.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit

// we can navigate source to destination view controller using 3 ways
// present, push and segue
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func nextButtonPressed(_ sender : UIButton) {
        usingPush()
    }
    
    func usingPush()  {
        // push viewcontroller not workin on navigationcontroller.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewcontroller = storyboard.instantiateViewController(withIdentifier: "nextviewcontroller") as? NextViewController {
            viewcontroller.name = "RAhul patil"
            self.navigationController?.present(viewcontroller, animated: true, completion: nil)
           // self.navigationController?.pushViewController(viewcontroller, animated: true)
        }
    }
    
    func usingSegue()  {
        // navigate second veiw controller by using segue
        // if we navigate by using segue then can't dismiss view controller
        self.performSegue(withIdentifier: "nextsegue", sender: self)
    }
    
    // overide method to send data from source to destination.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? NextViewController {
            vc.name = "rahul patil"
        }
    }
    
    func usingPresent()  {
        // if your viewController dont have navigationController then present it.
        // if you are working on different storyboard then you should present viewcontroller.
        let getStroryboard = UIStoryboard.init(name: "Main", bundle: nil)
        if let getViewcontroller = getStroryboard.instantiateViewController(withIdentifier: "nextviewcontroller") as? NextViewController {
        getViewcontroller.name = "Rahul Patil"
        self.present(getViewcontroller, animated: true, completion: nil)
        }
    }
    
    @IBAction func previousViewControllerBtnPressed(_ sender : UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}























