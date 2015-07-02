//
//  ExtensionDelegate.swift
//  ConnectivityDemo WatchKit Extension
//
//  Created by Scott Williams on 7/2/15.
//  Copyright © 2015 Scott Williams. All rights reserved.
//

import WatchKit
import WatchConnectivity

class ExtensionDelegate: NSObject, WKExtensionDelegate, WCSessionDelegate {

    func applicationDidFinishLaunching() {
        // Perform any final initialization of your application.
    }

    func applicationDidBecomeActive() {
        WCSession.defaultSession().delegate = self
        WCSession.defaultSession().activateSession()
    }

    func session(session: WCSession, didFinishFileTransfer fileTransfer: WCSessionFileTransfer, error: NSError?) {
        if let error = error {
            print("error: \(error.localizedDescription)")
        }
    }


    func applicationWillResignActive() {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, etc.
    }

}
