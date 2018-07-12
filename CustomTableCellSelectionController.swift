//
//  NextViewController.swift
//  SampleApp
//
//  Created by ITC Infotech on 11/07/18.
//  Copyright © 2018 Rahul Patil. All rights reserved.
//

import UIKit

// Customize tableviewcell selection
class NextViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.dataSource = self
        self.tableview.delegate = self
        tableview.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        let tapone = UITapGestureRecognizer(target: self, action: #selector(onetap(sender:)))
        tapone.numberOfTapsRequired = 1
        self.tableview.addGestureRecognizer(tapone)
        
        let twotap = UITapGestureRecognizer(target: self, action: #selector(twotap(sender:)))
        twotap.numberOfTapsRequired = 2
        self.tableview.addGestureRecognizer(twotap)
    }
    
    @objc func onetap(sender : UITapGestureRecognizer)  {
        let touchpoint = sender.location(in: tableview)
        let indexpath = tableview.indexPathForRow(at: touchpoint)
        print("One tap :\(String(describing: indexpath?.row))")
    }
    
    @objc func twotap(sender : UITapGestureRecognizer)  {
            let touchpoint = sender.location(in: tableview)
            let indexpath = tableview.indexPathForRow(at: touchpoint)
        print("Double Tap : \(String(describing: indexpath?.row))")
    }
}


extension NextViewController : UITableViewDelegate {
    
}

extension NextViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView
        .dequeueReusableCell(withIdentifier: "cell") as? CustomTableViewCell
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }
    
    
}
