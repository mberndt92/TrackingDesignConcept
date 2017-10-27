//
//  ViewController.swift
//  TrackingDesignProject
//
//  Created by Berndt, Maximilian on 27.10.17.
//  Copyright © 2017 mb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func blueberryButtonClicked(_ sender: Any) {
        TrackingManager.trackEvent(event: ScreamyButtonClick(buttonName: "Blueberry", index: 0, isColoredGreen: false))
    }
    
    @IBAction func bananaButtonClicked(_ sender: Any) {
        TrackingManager.trackEvent(event: ButtonClickedEvent(buttonName: "Banana", index: 1, isColoredGreen: false))
    }
    
    @IBAction func raspberryButtonClicked(_ sender: Any) {
        TrackingManager.trackEvent(event: ScreamyButtonClick(buttonName: "Raspberry", index: 2, isColoredGreen: false))
    }
    
    @IBAction func cherryButtonClicked(_ sender: Any) {
        TrackingManager.trackEvent(event: ButtonClickedEvent(buttonName: "Cherry", index: 3, isColoredGreen: false))
    }
    
    @IBAction func pearButtonClicked(_ sender: Any) {
        TrackingManager.trackEvent(event: ScreamyButtonClick(buttonName: "Pear", index: 4, isColoredGreen: true))
    }
    
    @IBAction func appleButtonClicked(_ sender: Any) {
        TrackingManager.trackEvent(event: ButtonClickedEvent(buttonName: "Apple", index: 5, isColoredGreen: true))
    }

}

