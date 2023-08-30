//
//  ViewController.swift
//  slider-stepper
//
//  Created by Engin Bolat on 29.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stepperObject: UIStepper!
    @IBOutlet weak var sliderObject: UISlider!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var sliderLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSlide(_ sender: UISlider) {
        sliderLable.text = "Slider: \(sender.value)"
    }
    
    @IBAction func stepperOnClick(_ sender: UIStepper) {
        stepperLabel.text = "Stepper:\(sender.value)"
    }
    
    @IBAction func buttonOnClick(_ sender: Any) {
        print("Slider Durum:\(sliderObject.value)")
        print("Stepper Durum:\(stepperObject.value)")
    }
}

