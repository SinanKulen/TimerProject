//
//  ViewController.swift
//  TimerProject
//
//  Created by Sinan Kulen on 16.05.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        timeLabel.text = "Time : \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerfunction), userInfo: nil, repeats: true)
    }
    @objc func timerfunction(){
        timeLabel.text = "Time : \(counter)"
        counter -= 1
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time's Over"
        }
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
    }
    
}

