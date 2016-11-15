//
//  FactModel.swift
//  BoutTimeGame
//
//  Created by Sean Fillmore on 11/8/16.
//  Copyright © 2016 Sean Fillmore. All rights reserved.
//

import Foundation
import GameKit

struct Fact {
    var date: String
    var fact: String
    
    init(date: String, fact: String) {
        self.date = date
        self.fact = fact
    }
}

var factArray: [Fact] = [
    Fact(date: "17/12/1903", fact: "Wright Brothers First Flight"),
    Fact(date: "14/04/1912", fact: "The Titanic Hit an Iceberg and Sinks"),
    Fact(date: "29/01/1919", fact: "Prohibition Begins"),
    Fact(date: "20/05/1927", fact: "Spirit of St. Louis Flies Across Atlantic"),
    Fact(date: "24/10/1929", fact: "Black Tuesday Stock Market Crash"),
    Fact(date: "22/01/1930", fact: "Empire State Building Completed"),
    Fact(date: "01/10/1932", fact: "Babe Ruth Calls his Home Run Shot"),
    Fact(date: "16/06/1933", fact: "The New Deal is Signed"),
    Fact(date: "01/03/1933", fact: "Prohibition Ends"),
    Fact(date: "14/04/1935", fact: "The Dust Bowl"),
    Fact(date: "06/05/1937", fact: "The Hindenburg Disaster"),
    Fact(date: "30/01/1937", fact: "The Holocaust Begins"),
    Fact(date: "07/12/1941", fact: "Pearl Harbor"),
    Fact(date: "06/06/1944", fact: "D-Day Landing"),
    Fact(date: "16/04/1945", fact: "Jackie Robinson Joins MLB"),
    Fact(date: "06/08/1945", fact: "First Atomic Bomb Dropped on Japan"),
    Fact(date: "25/06/1950", fact: "Korean War Begins"),
    Fact(date: "12/04/1961", fact: "First Man in Space"),
    Fact(date: "11/08/1962", fact: "L.A. Watts Riots"),
    Fact(date: "28/10/1962", fact: "Cuban Missile Crisis"),
    Fact(date: "28/08/1963", fact: "Martin Luther King Dream Speech"),
    Fact(date: "22/11/1963", fact: "JFK Assasinated"),
    Fact(date: "15/01/1967", fact: "First Super Bowl"),
    Fact(date: "21/07/1969", fact: "Neil Armstrong Walks on the Moon"),
    Fact(date: "28/03/1979", fact: "Three Mile Island Disaster"),
    Fact(date: "22/02/1980", fact: "Miracle on Ice U.S. Olympic Ice Hockey"),
    Fact(date: "19/04/1980", fact: "AIDS Epidemic Begins in U.S."),
    Fact(date: "28/01/1986", fact: "Space Shuttle Challenger Explodes"),
    Fact(date: "26/04/1986", fact: "Chernobyl Disaster"),
    Fact(date: "24/03/1989", fact: "Exxon Valdez Spill"),
    Fact(date: "04/06/1989", fact: "Tianament Square Massacre"),
    Fact(date: "20/01/1993", fact: "Bill Clinton Elected President"),
    Fact(date: "19/04/1995", fact: "Oklahoma City Bombing"),
    Fact(date: "31/08/1997", fact: "Princess Diana Dies in Car Accident"),
    Fact(date: "20/04/1999", fact: "Columbine Attack"),
    Fact(date: "20/08/2000", fact: "Tiger Woods Wins PGA Tour Grand Slam"),
    Fact(date: "11/09/2001", fact: "9/11 Attack"),
    Fact(date: "20/03/2003", fact: "Operation Iraqi Freedom"),
    Fact(date: "04/02/2004", fact: "Facebook Founded"),
    Fact(date: "29/08/2005", fact: "Hurricane Katrina"),
    Fact(date: "11/03/2011", fact: "Japanese Tsunami"),
    Fact(date: "02/05/2011", fact: "Osama Bin Laden Killed"),
    Fact(date: "08/03/2014", fact: "Flight MH370 Disappears")
]












