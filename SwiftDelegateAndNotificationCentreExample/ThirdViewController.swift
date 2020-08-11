//
//  ThirdViewController.swift
//  SwiftDelegateAndNotificationCentreExample
//
//  Created by Rizal Hilman on 11/08/20.
//  Copyright © 2020 Rizal Hilman. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doSomething(_ sender: Any) {
        // Kirim notifikasi ke observer
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "SAY_BYE"), object: nil)
    }
    

}
