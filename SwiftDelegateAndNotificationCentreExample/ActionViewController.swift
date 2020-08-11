//
//  ActionViewController.swift
//  SwiftDelegateAndNotificationCentreExample
//
//  Created by Rizal Hilman on 11/08/20.
//  Copyright © 2020 Rizal Hilman. All rights reserved.
//

import UIKit

protocol ActionDelegate {
    func updateLabel(text: String)
}

class ActionViewController: UIViewController {
    
    var delegate: ActionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionHai(_ sender: Any) {
        delegate?.updateLabel(text: "Hai!")
    }
    @IBAction func actionCiao(_ sender: Any) {
        delegate?.updateLabel(text: "Ciao!")
    }
    
    @IBAction func actionMalo(_ sender: Any) {
        delegate?.updateLabel(text: "Malo!")
    }
}
