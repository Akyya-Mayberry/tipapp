//
//  AppDelegate.swift
//  TipApp
//
//  Created by hollywoodno on 3/10/17.
//  Copyright © 2017 hollywoodno. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let defaults = UserDefaults.standard
        
        let reqUserDefaults = ["lastBillAmount": "0.00"] as [String : Any]
        
        defaults.register(defaults: reqUserDefaults)
        
        
        // Remove saved data for user if reset time has passed
        if defaults.object(forKey: "resetTime") == nil {
            defaults.set(Date(), forKey: "resetTime")
            let resetTime = defaults.object(forKey: "resetTime")
        }
        
        let resetTime = defaults.object(forKey: "resetTime")
        let now = NSDate()
        let later = now.laterDate(resetTime as! Date)
        
        if now.isEqual(to: later) {
            defaults.set("", forKey: "lastBillAmount")
            defaults.removeObject(forKey: "resetTime")
            defaults.set(Date(timeIntervalSinceNow: 5 * 60), forKey: "resetTime")
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
        // Save user's last bill entry
        let defaults = UserDefaults.standard
        let lastBillAmount = defaults.string(forKey: "lastBillAmount")
        
        // Update the reset timer that is responsible for saving
        // users last entered data after the app closes
        defaults.set(lastBillAmount, forKey: "lastBillAmount")
        defaults.set(NSDate(timeIntervalSinceNow: 5 * 60), forKey: "resetTime")
        
    }


}
