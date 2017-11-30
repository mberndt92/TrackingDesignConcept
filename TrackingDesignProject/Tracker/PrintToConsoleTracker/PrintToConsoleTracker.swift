//
//  PrintToConsoleTracker.swift
//  TrackingDesignProject
//
//  Created by Berndt, Maximilian on 27.10.17.
//  Copyright © 2017 mb. All rights reserved.
//

class PrintToConsoleTracker: Tracker {
    //MARK: Tracker Protocol
    var supportedEvents: [String] = [ButtonClickedEvent.name]
    
    func track(event: Event) {
        print("-----------")
        switch event {
        case is ButtonClickedEvent:
            event.printToConsole()
        default:
            print("We don't support this Event here. LoL")
        }
    }
}
