//
//  FactModel.swift
//  BoutTimeGame
//
//  Created by Sean Fillmore on 11/8/16.
//  Copyright © 2016 Sean Fillmore. All rights reserved.
//

import Foundation


struct Fact {
    var date: String
    var fact: String
    
    init(date: String, fact: String) {
        self.date = date
        self.fact = fact
    }
}

var factArray: [Fact] = [
    Fact(date: "12-17-1903", fact: "Wright Brothers First Flight"),
    Fact(date: "12-05-1924", fact: "Prohibition Begins")
]
