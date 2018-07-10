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


/*

Tuesday, Jul 10, 2018	
EEEE, MMM d, yyyy
07/10/2018	
MM/dd/yyyy
07-10-2018 14:36	
MM-dd-yyyy HH:mm
Jul 10, 2:36 PM	
MMM d, h:mm a
July 2018	
MMMM yyyy
Jul 10, 2018	
MMM d, yyyy
Tue, 10 Jul 2018 14:36:55 +0000	
E, d MMM yyyy HH:mm:ss Z
2018-07-10T14:36:55+0000	
yyyy-MM-dd'T'HH:mm:ssZ
10.07.18	
dd.MM.yy

*/




















