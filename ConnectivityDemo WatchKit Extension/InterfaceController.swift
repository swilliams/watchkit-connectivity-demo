//
//  InterfaceController.swift
//  ConnectivityDemo WatchKit Extension
//
//  Created by Scott Williams on 7/2/15.
//  Copyright © 2015 Scott Williams. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController {
    private let session = WCSession.defaultSession()

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    // MARK: - Actions
    @IBAction func contextTapped() {
        let context = "OMG I UPDATED MY CONTEXT"
        do {
            try session.updateApplicationContext(["WCApplicationContext": context])
        } catch {
            print(error)
        }
    }

    @IBAction func messageTapped() {
        let msg = ["message": "Four score and seven years..."]
        session.sendMessage(msg, replyHandler: nil, errorHandler: nil)
    }

    @IBAction func fileTapped() {
        if let fileURL = NSBundle.mainBundle().URLForResource("fancycat", withExtension: "jpg") {
            session.transferFile(fileURL, metadata: nil)
        } else {
            print("Could get fileURL")
        }
    }

}
