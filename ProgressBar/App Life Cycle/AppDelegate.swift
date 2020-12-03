//
//  AppDelegate.swift
//  ProgressBar
//
//  Created by Pawan  on 18/11/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ProgressBarViewController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

