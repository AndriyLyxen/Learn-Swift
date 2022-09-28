//
//  ViewController.swift
//  TestProj
//
//  Created by myapplestyle5794 myapplestyle on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var squadColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 100
        slider.maximumValue = 500
        sliderValueLabel.text = " "
        slider.value = (slider.maximumValue - slider.minimumValue) / 2 + slider.minimumValue
        updateSliderValue()
        greetingLabel.text = " "
    }
    @IBAction func showImageStateChanged(_ sender: UISwitch) {
        imageView.isHidden = !sender.isOn
    }
    @IBAction func sliderValueChanged(_ sender: Any) {
        sliderValueLabel.text = "\(Int(slider.value))"
    }
    @IBAction func greetingButton(_ sender: Any) {
        greetingLabel.text = "Hello maaaan!"
    }
    
    func updateSliderValue() {
        sliderValueLabel.text = "\(Int(slider.value))"
    }
    
    @IBAction func redButton(_ sender: Any) {
        squadColor.backgroundColor = UIColor.red
    }
    
    @IBAction func greenButton(_ sender: Any) {
        squadColor.backgroundColor = UIColor.green
    }
    
    @IBAction func blueButton(_ sender: Any) {
        squadColor.backgroundColor = UIColor.blue
    }
    
    @IBAction func resetButton(_ sender: Any) {
        squadColor.backgroundColor = UIColor.darkGray
    }
    
}

