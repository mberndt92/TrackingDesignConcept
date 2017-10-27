//
//  Tracker.swift
//  TrackingDesignProject
//
//  Created by Berndt, Maximilian on 27.10.17.
//  Copyright © 2017 mb. All rights reserved.
//

protocol Event {
    static var name: String { get }
    func trackingData() -> Dictionary<String, Any>
    func printToConsole()
}

protocol Tracker {
    var supportedEvents: [String] { get }
    func canTrack(event: Event) -> Bool
    func track(event: Event)
}

extension Tracker {
    
    func canTrack(event: Event) -> Bool {
        return supportedEvents.contains(type(of: event).name)
    }
    
}
