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
    Fact(date: "04-14-1912", fact: "The Titanic Hit an Iceberg and Sinks"),
    Fact(date: "01-29-1919", fact: "Prohibition Begins"),
    Fact(date: "05-20-1927", fact: "Spirit of St. Louis Flies Across Atlantic"),
    Fact(date: "10-24-1929", fact: "Black Tuesday Stock Market Crash"),
    Fact(date: "01-22-1930", fact: "Empire State Building Completed"),
    Fact(date: "10-01-1932", fact: "Babe Ruth Calls his Home Run Shot"),
    Fact(date: "06-16-1933", fact: "The New Deal is Signed"),
    Fact(date: "03-01-1933", fact: "Prohibition Ends"),
    Fact(date: "04-14-1935", fact: "The Dust Bowl"),
    Fact(date: "05-06-1937", fact: "The Hindenburg Disaster"),
    Fact(date: "01-30-1937", fact: "The Holocaust Begins"),
    Fact(date: "12-07-1941", fact: "Pearl Harbor"),
    Fact(date: "06-06-1944", fact: "D-Day Landing"),
    Fact(date: "04-16-1945", fact: "Jackie Robinson Joins MLB"),
    Fact(date: "08-06-1945", fact: "First Atomic Bomb Dropped on Japan"),
    Fact(date: "06-25-1950", fact: "Korean War Begins"),
    Fact(date: "04-12-1961", fact: "First Man in Space"),
    Fact(date: "08-11-1962", fact: "L.A. Watts Riots"),
    Fact(date: "10-28-1962", fact: "Cuban Missile Crisis"),
    Fact(date: "08-28-1963", fact: "Martin Luther King Dream Speech"),
    Fact(date: "11-22-1963", fact: "JFK Assasinated"),
    Fact(date: "01-15-1967", fact: "First Super Bowl"),
    Fact(date: "07-21-1969", fact: "Neil Armstrong Walks on the Moon"),
    Fact(date: "03-28-1979", fact: "Three Mile Island Disaster"),
    Fact(date: "02-22-1980", fact: "Miracle on Ice U.S. Olympic Ice Hockey"),
    Fact(date: "04-19-1980", fact: "AIDS Epidemic Begins in U.S."),
    Fact(date: "01-28-1986", fact: "Space Shuttle Challenger Explodes"),
    Fact(date: "04-26-1986", fact: "Chernobul Disaster"),
    Fact(date: "03-24-1989", fact: "Exxon Valdez Spill"),
    Fact(date: "06-04-1989", fact: "Tianament Square Massacre"),
    Fact(date: "01-20-1993", fact: "Bill Clinton Elected President"),
    Fact(date: "04-19-1995", fact: "Oklahoma City Bombing"),
    Fact(date: "08-31-1997", fact: "Princess Diana Dies in Car Accident"),
    Fact(date: "04-20-1999", fact: "Columbine Attack"),
    Fact(date: "08-20-2000", fact: "Tiger Woods Wins PGA Tour Grand Slam"),
    Fact(date: "09-11-2001", fact: "9/11 Attack"),
    Fact(date: "03-20-2003", fact: "Operation Iraqi Freedom"),
    Fact(date: "02-04-2004", fact: "Facebook Founded"),
    Fact(date: "08-29-2005", fact: "Hurricane Katrina"),
    Fact(date: "03-11-2011", fact: "Japanese Tsunami"),
    Fact(date: "05-02-2011", fact: "Osama Bin Laden Killed"),
    Fact(date: "03-08-2014", fact: "Flight MH370 Disappears")
]
