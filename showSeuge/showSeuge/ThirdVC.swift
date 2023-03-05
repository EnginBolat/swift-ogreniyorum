//
//  ThirdVC.swift
//  showSeuge
//
//  Created by Engin Bolat on 5.03.2023.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ilkSayfa(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func uceGit(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
