//
//  ScreamyButtonClick.swift
//  TrackingDesignProject
//
//  Created by Berndt, Maximilian on 27.10.17.
//  Copyright © 2017 mb. All rights reserved.
//

class ScreamyButtonClick: Event {
    
    //Protocol stuff.
    static var name: String = Events.ScreamyClickEvent.rawValue
    
    func trackingData() -> Dictionary<String, Any> {
        return [
            "eventName":ButtonClickedEvent.name,
            "buttonName":buttonName,
            "index": index,
            "isColoredGreen": isColoredGreen
        ]
    }
    
    //Custom Info
    let buttonName: String
    let index: Int
    let isColoredGreen: Bool
    
    init(buttonName: String, index: Int, isColoredGreen: Bool) {
        self.buttonName = buttonName
        self.index = index
        self.isColoredGreen = isColoredGreen
    }
    
    //Demo purpose
    func printToConsole() {
        print("EVENTNAME: \(ButtonClickedEvent.self)")
        print("BUTTONNAME: \(buttonName)")
        print("INDEX: \(index)")
        print("ISCOLOREDGREEN: \(isColoredGreen)")
    }
}
