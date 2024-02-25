//
//  ViewController.swift
//  TimerAppSwift
//
//  Created by Enes Kala on 25.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var time = Timer()

    @IBOutlet weak var timeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        count = 10
        
        timeLabel.text = "Time: \(count)"
        
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFuncktion), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func timerFuncktion() {
        
        count -= 1
        timeLabel.text = "Time: \(count)"
        
        if(count == 0){
            time.invalidate()
            timeLabel.text = "Time is over"
        }
        
    }
    @IBAction func buttonClicked(_ sender: Any) {
    
        print("Button Clicked")
        
    }
    
}

