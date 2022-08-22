//
//  ViewController.swift
//  Lection 15 - Alerts
//
//  Created by Denis Kutsko on 22/08/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "Photo Access", message: "Do you allow to use your photos?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        let alert = UIAlertController(title: "Donate", message: "Please donate a little bit!", preferredStyle: .actionSheet)
        let donateFifty = UIAlertAction(title: "50 $", style: .default, handler: nil)
        alert.addAction(donateFifty)
        let donateHundred = UIAlertAction(title: "100 $", style: .default, handler: nil)
        alert.addAction(donateHundred)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
}

