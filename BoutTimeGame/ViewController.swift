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
    
    var seconds = 60
    var timer = Timer()
    var randomNumberArray: [Int] = []
    var randomFactArray: [Fact] = []
    var rNumber = 0
    var eventFacts: [String] = []
    var rounds = 0
    var factText = ""


    @IBOutlet var factLabels: [UILabel]!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var shakeLabel: UILabel!
    @IBOutlet weak var nextRoundButton: UIButton!
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            timer.invalidate()
            
            let success = dateChecker()
            
            if success == true {
                nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_success"), for: .normal)
            } else {
                nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_fail"), for: .normal)
            }
            
            timer.invalidate()
            timerLabel.text = ""
            shakeLabel.text = ""
            nextRoundButton.isHidden = false
        
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextRoundButton.isHidden = true
        countdownTimer()
        eventGenerator()
        loadEventLabels()
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
    

    
    func eventGenerator() {
        
        let shuffledFactArray = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: factArray)
        
        for i in 0...3 {
            randomFactArray.append(shuffledFactArray[i] as! Fact)
        }
        print(randomFactArray)
    }
    
    func loadEventLabels() {
        for (index, _) in randomFactArray.enumerated() {
            factLabels[index].text = randomFactArray[index].fact
        }
    }
    
    func eventLabelMove(origin: Int, destination: Int) {
        let moveEvent = randomFactArray[origin]
        randomFactArray.remove(at: origin)
        randomFactArray.insert(moveEvent, at: destination)
        
        loadEventLabels()
    }
    

    func dateChecker() -> Bool {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        let date1 = randomFactArray[0].date
        let date2 = randomFactArray[1].date
        let date3 = randomFactArray[2].date
        let date4 = randomFactArray[3].date
        
        let fDate1 = dateFormatter.date(from: date1)
        let fDate2 = dateFormatter.date(from: date2)
        let fDate3 = dateFormatter.date(from: date3)
        let fDate4 = dateFormatter.date(from: date4)
        
        let r1 = fDate1?.compare(fDate2!) == ComparisonResult.orderedAscending
        let r2 = fDate2?.compare(fDate3!) == ComparisonResult.orderedAscending
        let r3 = fDate3?.compare(fDate4!) == ComparisonResult.orderedAscending
        
        if r1 == true && r2 == true && r3 == true {
            return true
        } else {
            return false
        }
    }
}



