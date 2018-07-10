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
       StringfromDate()
    }
    
    func StringfromDate()  {
        
        // date formatter
        let date = UIDatePicker().date
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, dd/MMMM/YYYY h:mm a"
        let stringDate = formatter.string(from: date)
        print("Date in String Mode : - \(stringDate)")
        
        // revert back to date
        let dateString =  formatter.date(from: stringDate)
        print("Date in Date Mode : - \(String(describing: dateString!))")
    }
}























