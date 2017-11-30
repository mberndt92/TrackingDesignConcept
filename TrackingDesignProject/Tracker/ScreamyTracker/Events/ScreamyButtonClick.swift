//
//  ScreamyButtonClick.swift
//  TrackingDesignProject
//
//  Created by Berndt, Maximilian on 27.10.17.
//  Copyright © 2017 mb. All rights reserved.
//

class ScreamyButtonClick: Event {
    
    //MARK: Protocol stuff.
    static var name: String = "ScreamyClickEvent"
    
    func trackingData() -> Dictionary<String, Any> {
        return [
            "eventName":ButtonClickedEvent.name,
            "buttonName":buttonName,
            "index": index,
            "isColoredGreen": isColoredGreen
        ]
    }
    
    //MARK: Custom Info
    let buttonName: String
    let index: Int
    let isColoredGreen: Bool
    
    init(buttonName: String, index: Int, isColoredGreen: Bool) {
        self.buttonName = buttonName
        self.index = index
        self.isColoredGreen = isColoredGreen
    }
    
    //MARK: Demo purpose
    func printToConsole() {
        print("EVENTNAME: \(ButtonClickedEvent.self)")
        print("BUTTONNAME: \(buttonName)")
        print("INDEX: \(index)")
        print("ISCOLOREDGREEN: \(isColoredGreen)")
    }
}
