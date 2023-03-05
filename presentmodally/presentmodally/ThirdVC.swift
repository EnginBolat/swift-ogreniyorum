//
//  ThirdVC.swift
//  presentModally
//
//  Created by Engin Bolat on 5.03.2023.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        etiket.text = "Sayfa 3"
    }
    @IBOutlet weak var etiket: UILabel!
    
    
    @IBAction func ilkSayfaGit(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let gidilecekController = storyBoard.instantiateViewController(withIdentifier: "sayfa1") as! ViewController
        
        self.present(gidilecekController, animated: true,completion: nil)
    }
    
    
    @IBAction func ikinciSayfagit(_ sender: Any) {
        self.dismiss(animated: true,completion: nil)
    }
    
}
