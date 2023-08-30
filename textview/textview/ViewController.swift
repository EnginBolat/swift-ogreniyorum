//
//  ViewController.swift
//  textview
//
//  Created by Engin Bolat on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    @IBAction func buttonClick(_ sender: Any) {
        let girilenText:String? = textfield.text
        textView.text = girilenText
    }
    
}

