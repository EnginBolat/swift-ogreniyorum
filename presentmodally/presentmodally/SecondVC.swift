//
//  SecondVC.swift
//  presentModally
//
//  Created by Engin Bolat on 5.03.2023.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        etiket.text = "Sayfa 2"
    }
    
    @IBOutlet weak var etiket: UILabel!
    
    @IBAction func geriGit(_ sender: Any) {
        self.dismiss(animated: true,completion: nil)
    }
    
    @IBAction func ileriGit(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekController = storyBoard.instantiateViewController(withIdentifier: "sayfa3") as! ThirdVC
        
        self.present(gidilecekController, animated: true,completion: nil)
        
       
        
    }
    
}
