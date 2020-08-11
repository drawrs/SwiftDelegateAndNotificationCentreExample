//
//  ViewController.swift
//  SwiftDelegateAndNotificationCentreExample
//
//  Created by Rizal Hilman on 11/08/20.
//  Copyright © 2020 Rizal Hilman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ActionDelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Segue di panggil")
        
        let destinationVC = segue.destination as! ActionViewController
        destinationVC.delegate = self
    }
    
    func updateLabel(text: String) {
        print("Ini di print dari View Contoller Pertama! \(text)")
    }
}

