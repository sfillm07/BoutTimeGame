//
//  FactModel.swift
//  BoutTimeGame
//
//  Created by Sean Fillmore on 11/8/16.
//  Copyright © 2016 Sean Fillmore. All rights reserved.
//

import Foundation


struct Fact {
    var date: NSDate
    var fact: String
    
    init(date: NSDate, fact: String) {
        self.date = date
        self.fact = fact
    }
}
