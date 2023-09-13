//
//  ViewController.swift
//  Kullanici Etkilesimi
//
//  Created by Engin Bolat on 13.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showBasicAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "İçerik", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in
            print("İptal Tıklandı")
        }
        
        let onayAction = UIAlertAction(title: "Tamam", style: .default    ){
            action in
            print("Tamam Tıklandı")
        }
        
        alertController.addAction(onayAction);
        alertController.addAction(iptalAction);
        

        
        self.present(alertController, animated: true)
    }
    
    
    
    @IBAction func showCustomAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField(){
            textfield in
            textfield.placeholder = "Email"
            textfield.keyboardType = .emailAddress
        }
        
        alertController.addTextField(){
            textfield in
            textfield.placeholder = "Password"
            textfield.keyboardType = .default
            textfield.isSecureTextEntry = true
        }
        
        let iptalAction = UIAlertAction(title: "Kaydet", style: .destructive){
            action in
            let email = (alertController.textFields![0] as UITextField).text!
            let password = (alertController.textFields![1] as UITextField).text!
            
            self.emailLabel.text = email
            self.passwordLabel.text = password
        }
        
        alertController.addAction(iptalAction)
        
       
        
        
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func showActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "İçerik", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .destructive){
            action in
            print("İptal Tıklandı")
        }
        
        let onayAction = UIAlertAction(title: "Tamam", style: .default    ){
            action in
            print("Tamam Tıklandı")
        }
        
        alertController.addAction(onayAction);
        alertController.addAction(iptalAction);
        

        
        self.present(alertController, animated: true)
    }
}

