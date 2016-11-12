//
//  ViewController.swift
//  BoutTimeGame
//
//  Created by Sean Fillmore on 11/8/16.
//  Copyright © 2016 Sean Fillmore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 60
    var timer = Timer()

    @IBOutlet var factLabels: [UILabel]!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var shakeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countdownTimer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func fullDownButton() {
    }
    
    @IBAction func fullUpButton() {
    }
    
    @IBAction func upHalfTopButton() {
    }
    
    @IBAction func downHalfTopButton() {
    }
    
    @IBAction func upHalfBottomButton() {
    }
    
    @IBAction func downHalfBottomButton() {
    }
    
    func countdownTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
    }
    
    func counter() {
        time -= 1
        
        timerLabel.text = "0:\(time)"
        
        if time == 0 {
            timer.invalidate()
            timerLabel.isHidden = true
            shakeLabel.isHidden = true
        }
    }
    
}

