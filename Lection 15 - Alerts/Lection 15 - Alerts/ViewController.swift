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
        enum DonateSum: String {
            case donateFifty = "50 $"
            case donateHundred = "100 $"
            case donateFavorite = "555 $"
            case donatePrior = "777 $"
        }
        
        let alert = UIAlertController(title: "Donate", message: "Please donate a little bit!", preferredStyle: .actionSheet)
        
        let handler:(_ number: DonateSum) -> (UIAlertAction) -> Void = { number in
            return { action in
                print(number.rawValue)
            }
        }
        
        let donateFifty = UIAlertAction(title: DonateSum.donateFifty.rawValue, style: .default, handler: handler(.donateFifty))
        alert.addAction(donateFifty)
        
        let donateHundred = UIAlertAction(title: DonateSum.donateHundred.rawValue, style: .default, handler: handler(.donateHundred))
        alert.addAction(donateHundred)
        
        let donateFavorite = UIAlertAction(title: DonateSum.donateFavorite.rawValue, style: .destructive, handler: handler(.donateFavorite))
        alert.addAction(donateFavorite)
        
        
        let donatePrior = UIAlertAction(title: DonateSum.donatePrior.rawValue, style: .destructive, handler: handler(.donatePrior))
        alert.addAction(donatePrior)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    
}

