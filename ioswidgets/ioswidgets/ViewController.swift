//
//  ViewController.swift
//  ioswidgets
//
//  Created by Engin Bolat on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var etiket: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    @IBAction func buttonClick(_ sender: Any) {
        let textfieldInputText = textfield.text
        
        if(textfieldInputText == ""){
            etiket.text = "Alan boş olarak geçilemez!"
        }
        etiket.text = textfieldInputText
    }
}

