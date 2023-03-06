//
//  ViewController.swift
//  iosYasamDongusu
//
//  Created by Engin Bolat on 6.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad Çalıştı")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewWillAppear Çalıştı")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ViewDidAppear Çalıştı")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewDissAppear Çalıştı")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("ViewWillDisappear Çalıştı")
    }

}

