//
//  ActionViewController.swift
//  SwiftDelegateAndNotificationCentreExample
//
//  Created by Rizal Hilman on 11/08/20.
//  Copyright © 2020 Rizal Hilman. All rights reserved.
//

import UIKit

// MARK: 1st Create the procotol

protocol ActionDelegate {
    func updateLabel(text: String)
}

class ActionViewController: UIViewController {
    
    var delegate: ActionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func actionHai(_ sender: UIButton) {
        delegate?.updateLabel(text: "Hai Bro")
    }
    
}
