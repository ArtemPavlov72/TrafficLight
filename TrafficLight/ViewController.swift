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
    
    var button = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showTextButton.layer.cornerRadius = 10
        
        redLight.alpha = 0.3
        orangeLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        orangeLight.layer.cornerRadius = orangeLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func showTextButtonPresed() {
        button += 1
        showTextButton.setTitle("NEXT", for: .normal)
        
        if button == 1 {
            redLight.alpha = 1.0
        } else if button == 2 {
            orangeLight.alpha = 1.0
            redLight.alpha = 0.3
        } else if button == 3 {
            orangeLight.alpha = 0.3
            greenLight.alpha = 1.0
        } else {
            button = 1
            greenLight.alpha = 0.3
            redLight.alpha = 1.0
        }
    }
}
    
    
    


