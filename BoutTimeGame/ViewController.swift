//
//  ViewController.swift
//  BoutTimeGame
//
//  Created by Sean Fillmore on 11/8/16.
//  Copyright © 2016 Sean Fillmore. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    var seconds = 12
    var timer = Timer()
    var randomNumberArray: [Int] = []
    var randomFactArray: [Fact] = []
    var rNumber = 0
    var eventFacts: [String] = []
    var rounds = 0


    @IBOutlet var factLabels: [UILabel]!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var shakeLabel: UILabel!
    @IBOutlet weak var nextRoundButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextRoundButton.isHidden = true
        countdownTimer()
        eventGenerator()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func fullDownButton() {
        eventLabelMove(origin: 0, destination: 3)
    }
    
    @IBAction func fullUpButton() {
        eventLabelMove(origin: 3, destination: 0)
    }
    
    @IBAction func upHalfTopButton() {
        eventLabelMove(origin: 1, destination: 0)
    }
    
    @IBAction func downHalfTopButton() {
        eventLabelMove(origin: 1, destination: 2)
    }
    
    @IBAction func upHalfBottomButton() {
        eventLabelMove(origin: 2, destination: 1)
    }
    
    @IBAction func downHalfBottomButton() {
        eventLabelMove(origin: 2, destination: 3)
    }
    
    @IBAction func nextRoundButtonPressed() {
        eventGenerator()
        seconds = 60
        countdownTimer()
    }
    
    
    func countdownTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
    }
    
    func counter() {
        seconds -= 1
        if seconds > 9 {
        timerLabel.text = "0:\(seconds)"
        } else {
            timerLabel.text = "0:0\(seconds)"
        }
        if seconds == 0 {
            timer.invalidate()
            timerLabel.text = ""
            shakeLabel.text = ""
            nextRoundButton.isHidden = false
        }
    }
    
    func randomNumber(limit: Int) -> Int {
        
        let number = GKRandomSource.sharedRandom().nextInt(upperBound: factArray.count)
        
        return number
    }
    
    func randomNumberGenerator() {
        
        repeat {
            rNumber = randomNumber(limit: 40)
            randomNumberArray.append(rNumber)
        } while randomNumberArray.count < 4
    }
    
    func eventGenerator() {
        
        randomNumberGenerator()
        
        for (_, value) in randomNumberArray.enumerated() {
            randomFactArray.append(factArray[value])
            print(randomFactArray)
        }
        
        for fact in randomFactArray {
            eventFacts.append(fact.fact)
        }
        
        for i in 0..<factLabels.count {
            factLabels[i].text = eventFacts[i]
        }
    }
    
    func reloadEventLabels() {
        for i in 0..<factLabels.count {
            factLabels[i].text = eventFacts[i]
        }
    }
    
    func eventLabelMove(origin: Int, destination: Int) {
        let moveEvent = eventFacts[origin]
        eventFacts.remove(at: origin)
        eventFacts.insert(moveEvent, at: destination)
        
        reloadEventLabels()
    }
    


}



