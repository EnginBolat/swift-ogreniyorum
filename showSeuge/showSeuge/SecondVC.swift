//
//  SecondVC.swift
//  showSeuge
//
//  Created by Engin Bolat on 5.03.2023.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func geriGit(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func uceGit(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekController = storyBoard.instantiateViewController(withIdentifier: "sayfa3") as! ThirdVC
        
        navigationController?.pushViewController(gidilecekController, animated: true)
    }
}
