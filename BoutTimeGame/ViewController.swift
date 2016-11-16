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
    var rounds = 1
    var factText = ""
    var score = 0


    @IBOutlet var factLabels: [UILabel]!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var shakeLabel: UILabel!
    @IBOutlet weak var nextRoundButton: UIButton!
    
    
    // This function captures the shake gesture and then executes the code
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            
            timer.invalidate()
            let success = dateChecker()
            
            if success == true {
                score += 1
                nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_success"), for: .normal)
            } else {
                nextRoundButton.setImage(#imageLiteral(resourceName: "next_round_fail"), for: .normal)
            }
            
            if rounds < 2 {
                rounds += 1
                timerLabel.text = ""
                shakeLabel.text = "Click on event for more details"
            } else {
                nextRoundButton.setImage(#imageLiteral(resourceName: "play_again"), for: .normal)
                rounds = 1
                shakeLabel.text = "Score: \(score)"
                timerLabel.text = ""
            }
            
            nextRoundButton.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFirstRound()
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
        newRound()
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
    

    // This function shuffles the entire factArray and then appends the first four Facts to the randomFactArray
    func eventGenerator() {
        
        let shuffledFactArray = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: factArray)
        
        for i in 0...3 {
            randomFactArray.append(shuffledFactArray[i] as! Fact)
            
            print(randomFactArray)
        }
    }
    // This function loads the fact text into each of the labels
    func loadEventLabels() {
        for (index, _) in randomFactArray.enumerated() {
            factLabels[index].text = randomFactArray[index].fact
        }
    }
    // This function takes two parameters, the location of the original fact and the destination and then moves it
    func eventLabelMove(origin: Int, destination: Int) {
        let moveEvent = randomFactArray[origin]
        randomFactArray.remove(at: origin)
        randomFactArray.insert(moveEvent, at: destination)
        
        loadEventLabels()
    }
    
    // This function compares the dates and returns a Bool used to display the correct button
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
    
    func loadFirstRound() {
        nextRoundButton.isHidden = true
        countdownTimer()
        eventGenerator()
        loadEventLabels()
    }
    
    func newRound() {
        seconds = 60
        randomFactArray.removeAll()
        timerLabel.isHidden = false
        timerLabel.text = "0:60"
        shakeLabel.isHidden = false
        shakeLabel.text = "Shake to complete"
        nextRoundButton.isHidden = true
        countdownTimer()
        eventGenerator()
        loadEventLabels()

    }

    func tapRecognizer(label: UILabel) {
    let gestureRecognizer = UITapGestureRecognizer(target: self, action: Selector(("launchWebView:")))
        
        gestureRecognizer.numberOfTapsRequired = 1
        
        label.addGestureRecognizer(gestureRecognizer)
    }



    func launchWebView(url: String) {
        
        let webViewURL = URL(string: url)
        let URLRequest = URLRequest(url: webViewURL)
        
    }
    
    


}
