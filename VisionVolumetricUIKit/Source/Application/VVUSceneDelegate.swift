//
//  VVUSceneDelegate.swift
//  VisionVolumetricUIKit
//
//  Created by Steven Troughton-Smith on 30/06/2023.
//  
//

import UIKit

class VVUSceneDelegate: UIResponder, UIWindowSceneDelegate {
	var window: UIWindow?
	
	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let windowScene = scene as? UIWindowScene else {
			fatalError("Expected scene of type UIWindowScene but got an unexpected type")
		}
		
		let size = CGSize(width: 480, height: 480)
		windowScene.sizeRestrictions?.minimumSize = size
		windowScene.sizeRestrictions?.maximumSize = size
		
		window = UIWindow(windowScene: windowScene)		
		
		if let window = window {
			window.rootViewController = VVUMainViewController()

			
			window.makeKeyAndVisible()
		}
	}
}
