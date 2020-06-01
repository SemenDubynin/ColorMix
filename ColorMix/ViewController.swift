//
//  ViewController.swift
//  ColorMix
//
//  Created by Дубынин Семён on 01.06.2020.
//  Copyright © 2020 Дубынин Семён. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mixView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwith: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mixView.backgroundColor = UIColor.blue
        mixView.layer.cornerRadius = 100
        mixView.layer.borderColor = UIColor.black.cgColor
        mixView.layer.borderWidth = 3
    }
    //MARK: IBOutlets
    @IBAction func updateSlider(_ sender: UISlider) {
        slidersUpdate()
    }
    @IBAction func redAction(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func greenAction(_ sender: UISwitch) {
        updateColor()
    }
    @IBAction func blueAction(_ sender: UISwitch) {
        updateColor()
    }
    // MARK: Helpers
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        mixView.backgroundColor = UIColor.clear
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwith.isOn = false
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
    }
    func slidersUpdate() {
        updateColor()
        
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwith.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        mixView.backgroundColor = color
    }
}

