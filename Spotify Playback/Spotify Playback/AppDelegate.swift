//
//  AppDelegate.swift
//  Spotify Playback
//
//  Created by Szczepan Podulka on 20/04/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.backgroundColor = .orange
            window?.makeKeyAndVisible()

            let navigatorController = UINavigationController(rootViewController: ViewController())
            window?.rootViewController = navigatorController

            return true
        }
}

