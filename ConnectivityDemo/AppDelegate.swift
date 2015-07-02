//
//  AppDelegate.swift
//  ConnectivityDemo
//
//  Created by Scott Williams on 7/2/15.
//  Copyright © 2015 Scott Williams. All rights reserved.
//

import UIKit
import WatchConnectivity

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, WCSessionDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        WCSession.defaultSession().delegate = self
        WCSession.defaultSession().activateSession()

        return true
    }

    // MARK: - Connectivity

    func session(session: WCSession, didReceiveApplicationContext applicationContext: [String : AnyObject]) {
        print("Received Application Context")
    }

    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
        let m = message["message"] as! String
        print("Received Message: \(m)")
    }

    func session(session: WCSession, didReceiveFile file: WCSessionFile) {
        print("Received File with URL: \(file.fileURL)")
    }

    func sessionReachabilityDidChange(session: WCSession) {
        print("Reachability changed")
    }

    func sessionWatchStateDidChange(session: WCSession) {
        print("Watch state changed")
    }

}

