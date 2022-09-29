//
//  ViewController.swift
//  TestProj
//
//  Created by myapplestyle5794 myapplestyle on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stopBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var timer: UILabel!
    var timerGo:Timer?
    var counter = 0
    var switchRes = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerUpdate()
    }

    @IBAction func switcher(_ sender: UISwitch) {
        switchRes = sender.isOn
    }
    
    @IBAction func startBtn(_ sender: Any) {
        timerGo = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerTick), userInfo: nil, repeats: true)
        startBtn.isHidden = true
        stopBtn.isHidden = false
    }
    
    @objc func timerTick() {
        if switchRes == true {
            counter += 1
            timerUpdate()
        } else {
            counter -= 1
            timerUpdate()
        }
    }
    
    @IBAction func stopBtn(_ sender: Any) {
        timerGo?.invalidate()
        timerGo = nil
        counter = 0
        timerUpdate()
        startBtn.isHidden = false
        stopBtn.isHidden = true
    }
    
    func timerUpdate() {
        timer.text = "Timer: \(counter)"
    }
}

