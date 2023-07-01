//
//  VVUAppDelegate.swift
//  VisionVolumetricUIKit
//
//  Created by Steven Troughton-Smith on 30/06/2023.
//  
//

import UIKit

@UIApplicationMain
class VVUAppDelegate: UIResponder, UIApplicationDelegate {
		
	// MARK: -
	
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
	
	// MARK: - Scenes
	
	func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
		
		if options.userActivities.filter({$0.activityType == "com.example.child"}).first != nil {
			return UISceneConfiguration(name: "Child", sessionRole: .windowApplicationVolumetric)
		}
		
		return UISceneConfiguration(name: "Default", sessionRole: .windowApplication)
	}
}
