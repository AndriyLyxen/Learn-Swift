//
//  ViewController.swift
//  TestProj
//
//  Created by myapplestyle5794 myapplestyle on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    let maxColorValue: Float = 255
    let minColorValue: Float = 0
    var mediumColorValue: Float {
        return (maxColorValue - minColorValue) / 2.0 + minColorValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateAllSliderValue(mediumColorValue)
        updateSlidersLabel()
        updateColorView()
    }
    
    @IBAction func minPressed(_ sender: Any) {
        updateAllSliderValue(minColorValue)
        updateSlidersLabel()
        updateColorView()
        
    }
    @IBAction func mudiumPressed(_ sender: Any) {
        updateAllSliderValue(mediumColorValue)
        updateSlidersLabel()
        updateColorView()
        
    }
    @IBAction func maxPressed(_ sender: Any) {
        updateAllSliderValue(maxColorValue)
        updateSlidersLabel()
        updateColorView()
    }
    
    @IBAction func redValueChanged(_ sender: Any) {
        updateSlidersLabel()
        updateColorView()
    }
    @IBAction func greenValueChanged(_ sender: Any) {
        updateSlidersLabel()
        updateColorView()
    }
    @IBAction func blueValueChanged(_ sender: Any) {
        updateSlidersLabel()
        updateColorView()
    }
    
    func updateColorView() {
        colorView.backgroundColor = UIColor(red: CGFloat(Int(redSlider.value)) / 255.0, green: CGFloat(Int(greenSlider.value)) / 255.0, blue: CGFloat(Int(blueSlider.value)) / 255.0, alpha: 1.0)
    }
    
    func updateSlidersLabel() {
        redLabel.text = "\(redSlider.value)"
        greenLabel.text = "\(greenSlider.value)"
        blueLabel.text = "\(blueSlider.value)"
    }
    
    func updateAllSliderValue (_ value: Float) {
        redSlider.value = value
        greenSlider.value = value
        blueSlider.value = value
    }
  
}

