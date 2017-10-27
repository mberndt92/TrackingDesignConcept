//
//  TrackingManager.swift
//  TrackingDesignProject
//
//  Created by Berndt, Maximilian on 27.10.17.
//  Copyright © 2017 mb. All rights reserved.
//


enum Events: String {
    case ButtonClickEvent = "ButtonClickEvent"
    case ScreamyClickEvent = "ScreanyClickEvent"
}

class TrackingManager {
    static var trackers: [Tracker] = [PrintToConsoleTracker(), ScreamyTracker()]
    
    static func trackEvent(event: Event) {
        for tracker in trackers {
            if (tracker.canTrack(event: event)) {
                tracker.track(event: event)
                return
            }
        }
    }
}
