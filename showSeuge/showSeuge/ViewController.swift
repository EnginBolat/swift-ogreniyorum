//
//  ViewController.swift
//  showSeuge
//
//  Created by Engin Bolat on 5.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func goto2(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekController = storyBoard.instantiateViewController(withIdentifier: "sayfa2") as! SecondVC
        
        navigationController?.pushViewController(gidilecekController, animated: true)
    }
    
}

