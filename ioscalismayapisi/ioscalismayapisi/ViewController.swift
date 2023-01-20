//
//  ViewController.swift
//  ioscalismayapisi
//
//  Created by Engin Bolat on 15.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        etiket.text = "İLK DEFA ÇALIŞTI";
    }

    @IBOutlet weak var etiket: UILabel!
    var labelText:String = "Merhaba!";
    
    @IBAction func clickButton(_ sender: Any) {
        etiket.text = labelText;
    }
}

