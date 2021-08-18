//
//  ViewController.swift
//  TrafficLight
//
//  Created by iMac on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var orangeLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var showTextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 80
        orangeLight.layer.cornerRadius = 80
        greenLight.layer.cornerRadius = 80
        showTextButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.3
        orangeLight.alpha = 0.3
        greenLight.alpha = 0.3
    }

    @IBAction func showTextButtonPresed() {
        redLight.alpha = 1.0
        showTextButton.setTitle("NEXT", for: .normal)
        
        if orangeLight.alpha == 0.3 &&
            greenLight.alpha == 0.3 {
            redLight.alpha = 1.0

        } else if redLight.alpha == 1.0 &&
                    greenLight.alpha == 0.3 {
                      redLight.alpha = 0.3
                      orangeLight.alpha = 1.0
            
        } else if orangeLight.alpha == 1.0 &&
                  redLight.alpha == 0.3 {
                    orangeLight.alpha = 0.3
                    greenLight.alpha = 1.0
        
        } else if greenLight.alpha == 1.0 &&
                    orangeLight.alpha == 0.3 {
            greenLight.alpha = 0.3
            redLight.alpha = 1.0
        }
        
    }
}
    
    
    


