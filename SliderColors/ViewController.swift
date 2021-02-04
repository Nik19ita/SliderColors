//
//  ViewController.swift
//  SliderColors
//
//  Created by Nikita on 02.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenlLabel: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.layer.cornerRadius = 5
        
        redSlider.value = 10
        greenSlider.value = 60
        blueSlider.value = 200
    }

    @IBAction func slidersAction(_ sender: Any) {
        redLabel.text = String(Int(redSlider.value))
        greenlLabel.text = String(Int(greenSlider.value))
        blueLabel.text = String(Int(blueSlider.value))
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        mainLabel.backgroundColor = UIColor(red: red/255,
                                            green: green/255,
                                            blue: blue/255,
                                            alpha: 1)
    }
    
}

