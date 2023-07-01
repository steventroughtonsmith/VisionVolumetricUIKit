//
//  VVUVolumetricSceneDelegate.swift
//  VisionVolumetricUIKit
//
//  Created by Steven Troughton-Smith on 30/06/2023.
//  
//

import UIKit
import SwiftUI

class VVUVolumetricSceneDelegate: UIResponder, UIWindowSceneDelegate {
	var window: UIWindow?
	
	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let windowScene = scene as? UIWindowScene else {
			fatalError("Expected scene of type UIWindowScene but got an unexpected type")
		}
		window = UIWindow(windowScene: windowScene)
		
		let size = CGSize(width: 640, height: 640)
		windowScene.sizeRestrictions?.minimumSize = size
		windowScene.sizeRestrictions?.maximumSize = size

		if let window = window {
			window.rootViewController = UIHostingController(rootView: VVUVolumetricView())
	
			window.makeKeyAndVisible()
		}
	}
}
