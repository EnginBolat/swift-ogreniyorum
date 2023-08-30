//
//  ViewController.swift
//  switch-segmanted-learn
//
//  Created by Engin Bolat on 29.08.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segmentedObject: UISegmentedControl!
    @IBOutlet weak var switchObject: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onChanged(_ sender: UISwitch) {
        if sender.isOn{
            print("Switch Açık")
        }else{
            print("Switch Kapalı")
        }
    }
    
    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            print("First")
        }else{
            print("Second")
        }
    }
    @IBAction func onClick(_ sender: UIButton) {
        print("Switch Durum:\(switchObject.isOn)")
        print("Segmented Durum: \(segmentedObject.selectedSegmentIndex)")
    }
}

