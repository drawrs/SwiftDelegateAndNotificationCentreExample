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
    
    @IBAction func actionHai(_ sender: UIButton) {
        delegate?.updateLabel(text: "Hai!")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionCiao(_ sender: UIButton) {
        delegate?.updateLabel(text: "Ciao!")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func actionMalo(_ sender: UIButton) {
        delegate?.updateLabel(text: "Malo!")
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func actionSzia(_ sender: UIButton) {
        NotificationCenter.default.post(name: NOTIFICATION_DID_CHANGE_DATA, object: sender.titleLabel?.text)
        dismiss(animated: true, completion: nil)
    }
}
