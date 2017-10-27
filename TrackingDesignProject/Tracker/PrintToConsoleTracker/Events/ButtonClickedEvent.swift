//
//  ButtonClickedEvent.swift
//  TrackingDesignProject
//
//  Created by Berndt, Maximilian on 27.10.17.
//  Copyright © 2017 mb. All rights reserved.
//

class ButtonClickedEvent: Event {
    
    //Event protocol
    static var name: String = Events.ButtonClickEvent.rawValue
    
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
        print("EventName: \(ButtonClickedEvent.self)")
        print("ButtonName: \(buttonName)")
        print("Index: \(index)")
        print("IsColoredGreen: \(isColoredGreen)")
    }
}
