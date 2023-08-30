//
//  ViewController.swift
//  imageLearn
//
//  Created by Engin Bolat on 29.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewObject: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func image2Click(_ sender: Any) {
        imageViewObject.image = UIImage(named: "image1")
    }
    
    @IBAction func image1Click(_ sender: Any) {
        imageViewObject.image = UIImage(named: "image2")
    }
}

