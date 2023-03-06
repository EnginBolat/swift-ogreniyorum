//
//  ViewController2.swift
//  navigationBar
//
//  Created by Engin Bolat on 6.03.2023.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let apperiance = UINavigationBarAppearance()
        
        apperiance.backgroundColor = UIColor.red
    }
    
    @IBAction func segmentClick(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            print("0 Tıklandı")
        case 1 :
            print("1 Tıklandı")
        default:
            print("Default Çalıştı")
        }
    }
    
    
    

}
