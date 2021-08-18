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
        redLight.alpha = 0.3
        orangeLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        showTextButton.layer.cornerRadius = 10
    }

    @IBAction func showTextButtonPrest() {
        
        if redLight.alpha == 0.3 {
            showTextButton.setTitle("START", for: .normal)
        } else {
            showTextButton.setTitle("men", for: .normal)
        }
    }
    
    
}

