//
//  ScreamyTracker.swift
//  TrackingDesignProject
//
//  Created by Berndt, Maximilian on 27.10.17.
//  Copyright © 2017 mb. All rights reserved.
//

class ScreamyTracker: Tracker {
    //MARK: Tracker Protocol
    var supportedEvents: [String] = [ScreamyButtonClick.name]
    
    func track(event: Event) {
        print("-----------")
        switch event {
        case is ScreamyButtonClick:
            event.printToConsole()
        default:
            print("We don't support this Event here. LoL")
        }
    }
}
