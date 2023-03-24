//
//  AppDelegate.swift
//  AdidasFifa
//
//  Created by Josue German Hernandez Gonzalez on 21-03-23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = MainViewController()
        let navigationView = UINavigationController(rootViewController: vc)
        window?.rootViewController = navigationView
        window?.makeKeyAndVisible()
        
        return true
    }



}

