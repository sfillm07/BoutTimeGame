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
    var url: String
    
    init(date: String, fact: String, url: String) {
        self.date = date
        self.fact = fact
        self.url = url
    }
}

var factArray: [Fact] = [
    Fact(date: "17/12/1903", fact: "Wright Brothers First Flight", url: "https://en.wikipedia.org/wiki/Wright_brothers"),
    Fact(date: "14/04/1912", fact: "The Titanic Hit an Iceberg and Sinks", url: "https://en.wikipedia.org/wiki/RMS_Titanic"),
    Fact(date: "29/01/1919", fact: "Prohibition Begins", url: "https://en.wikipedia.org/wiki/Prohibition_in_the_United_States"),
    Fact(date: "20/05/1927", fact: "Spirit of St. Louis Flies Across Atlantic", url: "https://en.wikipedia.org/wiki/Spirit_of_St._Louis"),
    Fact(date: "24/10/1929", fact: "Black Tuesday Stock Market Crash", url: "https://en.wikipedia.org/wiki/Stock_market_crash#Wall_Street_Crash_of_1929"),
    Fact(date: "22/01/1930", fact: "Empire State Building Completed", url: "https://en.wikipedia.org/wiki/Empire_State_Building"),
    Fact(date: "01/10/1932", fact: "Babe Ruth Calls his Home Run Shot", url: "https://en.wikipedia.org/wiki/Babe_Ruth"),
    Fact(date: "16/06/1933", fact: "The New Deal is Signed", url: "https://en.wikipedia.org/wiki/New_Deal"),
    Fact(date: "01/03/1933", fact: "Prohibition Ends", url: "https://en.wikipedia.org/wiki/Prohibition_in_the_United_States"),
    Fact(date: "14/04/1935", fact: "The Dust Bowl", url: "https://en.wikipedia.org/wiki/Dust_Bowl"),
    Fact(date: "06/05/1937", fact: "The Hindenburg Disaster", url: "https://en.wikipedia.org/wiki/LZ_129_Hindenburg"),
    Fact(date: "30/01/1937", fact: "The Holocaust Begins", url: "https://en.wikipedia.org/wiki/The_Holocaust"),
    Fact(date: "07/12/1941", fact: "Pearl Harbor", url: "https://en.wikipedia.org/wiki/Pearl_Harbor"),
    Fact(date: "06/06/1944", fact: "D-Day Landing", url: "https://en.wikipedia.org/wiki/Normandy_landings"),
    Fact(date: "16/04/1945", fact: "Jackie Robinson Joins MLB", url: "https://en.wikipedia.org/wiki/Jackie_Robinson"),
    Fact(date: "06/08/1945", fact: "First Atomic Bomb Dropped on Japan", url: "https://en.wikipedia.org/wiki/Little_Boy"),
    Fact(date: "25/06/1950", fact: "Korean War Begins", url: "https://en.wikipedia.org/wiki/Korean_War"),
    Fact(date: "12/04/1961", fact: "First Man in Space", url: "https://en.wikipedia.org/wiki/Yuri_Gagarin"),
    Fact(date: "11/08/1962", fact: "L.A. Watts Riots", url: "https://en.wikipedia.org/wiki/Watts_riots"),
    Fact(date: "28/10/1962", fact: "Cuban Missile Crisis", url: "https://en.wikipedia.org/wiki/Cuban_Missile_Crisis"),
    Fact(date: "28/08/1963", fact: "Martin Luther King Dream Speech", url: "https://en.wikipedia.org/wiki/Martin_Luther_King_Jr."),
    Fact(date: "22/11/1963", fact: "JFK Assasinated", url: "https://en.wikipedia.org/wiki/Assassination_of_John_F._Kennedy"),
    Fact(date: "15/01/1967", fact: "First Super Bowl", url: "https://en.wikipedia.org/wiki/Super_Bowl_I"),
    Fact(date: "21/07/1969", fact: "Neil Armstrong Walks on the Moon", url: "https://en.wikipedia.org/wiki/Neil_Armstrong"),
    Fact(date: "28/03/1979", fact: "Three Mile Island Disaster", url: "https://en.wikipedia.org/wiki/Three_Mile_Island_accident"),
    Fact(date: "22/02/1980", fact: "Miracle on Ice U.S. Olympic Ice Hockey", url: "https://en.wikipedia.org/wiki/Miracle_on_Ice"),
    Fact(date: "19/04/1980", fact: "AIDS Epidemic Begins in U.S.", url: "https://en.wikipedia.org/wiki/HIV/AIDS_in_the_United_States"),
    Fact(date: "28/01/1986", fact: "Space Shuttle Challenger Explodes", url: "https://en.wikipedia.org/wiki/Space_Shuttle_Challenger_disaster"),
    Fact(date: "26/04/1986", fact: "Chernobyl Disaster", url: "https://en.wikipedia.org/wiki/Chernobyl#Chernobyl_nuclear_reactor_disaster"),
    Fact(date: "24/03/1989", fact: "Exxon Valdez Spill", url: "https://en.wikipedia.org/wiki/Exxon_Valdez_oil_spill"),
    Fact(date: "04/06/1989", fact: "Tianamen Square Massacre", url: "https://en.wikipedia.org/wiki/Tiananmen_Square_protests_of_1989"),
    Fact(date: "20/01/1993", fact: "Bill Clinton Elected President", url: "https://en.wikipedia.org/wiki/Bill_Clinton"),
    Fact(date: "19/04/1995", fact: "Oklahoma City Bombing", url: "https://en.wikipedia.org/wiki/Oklahoma_City_bombing"),
    Fact(date: "31/08/1997", fact: "Princess Diana Dies in Car Accident", url: "https://en.wikipedia.org/wiki/Death_of_Diana,_Princess_of_Wales"),
    Fact(date: "20/04/1999", fact: "Columbine Attack", url: "https://en.wikipedia.org/wiki/Columbine_High_School_massacre"),
    Fact(date: "20/08/2000", fact: "Tiger Woods Wins PGA Tour Grand Slam", url: "https://en.wikipedia.org/wiki/Tiger_Woods"),
    Fact(date: "11/09/2001", fact: "9/11 Attack", url: "https://en.wikipedia.org/wiki/September_11_attacks"),
    Fact(date: "20/03/2003", fact: "Operation Iraqi Freedom", url: "https://en.wikipedia.org/wiki/Iraq_War"),
    Fact(date: "04/02/2004", fact: "Facebook Founded", url: "https://en.wikipedia.org/wiki/Facebook"),
    Fact(date: "29/08/2005", fact: "Hurricane Katrina", url: "https://en.wikipedia.org/wiki/Hurricane_Katrina"),
    Fact(date: "11/03/2011", fact: "Japanese Tsunami", url: "https://en.wikipedia.org/wiki/2011_T%C5%8Dhoku_earthquake_and_tsunami"),
    Fact(date: "02/05/2011", fact: "Osama Bin Laden Killed", url: "https://en.wikipedia.org/wiki/Osama_bin_Laden"),
    Fact(date: "08/03/2014", fact: "Flight MH370 Disappears", url: "https://en.wikipedia.org/wiki/Malaysia_Airlines_Flight_370")
]












