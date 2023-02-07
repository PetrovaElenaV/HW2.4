//
//  ViewController.swift
//  HW2.4
//
//  Created by Elena Petrova on 06.02.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var screenView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenView.layer.cornerRadius = 20
        
        changeGreenSlider()
        changeRedSlider()
        changeBlueSlider()
        
    }
    
    private func changeRedSlider() {
        redSlider.value = 0.05
        redSlider.maximumTrackTintColor = .init(white: 0.5, alpha: 0.3)
    }
    
    private func changeGreenSlider() {
        greenSlider.value = 0.27
        greenSlider.maximumTrackTintColor = .init(white: 0.5, alpha: 0.3)
    }
    
    private func changeBlueSlider() {
        blueSlider.value = 0.49
        blueSlider.maximumTrackTintColor = .init(white: 0.5, alpha: 0.3)
    }
    
    @IBAction func sliderRBGChange() {
        changeViewColor()
    }
    
    private func changeViewColor() {
        screenView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func sliderActionRed() {
        redLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func sliderActionGreen() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func sliderActionBlue() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
}

