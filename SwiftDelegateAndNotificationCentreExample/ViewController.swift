//
//  ViewController.swift
//  SwiftDelegateAndNotificationCentreExample
//
//  Created by Rizal Hilman on 11/08/20.
//  Copyright © 2020 Rizal Hilman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ActionDelegate {
    
    
    @IBOutlet weak var labelGreeting: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Seguenya jalan")
        
        let destionationVC = segue.destination as! ActionViewController
        destionationVC.delegate = self
    }
    
    func updateLabel(text: String) {
        print("Ini dari View Controller pertama")
        print(text)
    }
}
