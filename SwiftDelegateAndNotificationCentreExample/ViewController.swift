//
//  ViewController.swift
//  SwiftDelegateAndNotificationCentreExample
//
//  Created by Rizal Hilman on 11/08/20.
//  Copyright © 2020 Rizal Hilman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ActionDelegate {

    @IBOutlet weak var labelName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        NotificationCenter.default.addObserver(self, selector: #selector(dataChanged(notif:)), name: NOTIFICATION_DID_CHANGE_DATA, object: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("Segue di panggil")
//        let destinationVC = segue.destination as! ActionViewController
//        destinationVC.delegate = self
//    }
    
    @objc func dataChanged(notif: Notification) {
        let text = notif.object as! String
        labelName.text = text as String
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ActionViewController") as! ActionViewController
        vc.delegate = self
        self.present(vc, animated: true, completion: nil)
    }
    
    func updateLabel(text: String) {
        labelName.text = "Say \(text)"
        print("Ini di print dari View Contoller Pertama! \(text)")
    }
}

let NOTIFICATION_DID_CHANGE_DATA = Notification.Name(rawValue: "NOTIFICATION_DID_CHANGE_DATA")
