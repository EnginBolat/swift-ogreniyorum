//
//  ViewController.swift
//  presentModally
//
//  Created by Engin Bolat on 5.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        etiket.text = "Sayfa 1"
    }

    @IBOutlet weak var etiket: UILabel!
    
    @IBAction func nextPage(_ sender: UIButton) {
    }
}

