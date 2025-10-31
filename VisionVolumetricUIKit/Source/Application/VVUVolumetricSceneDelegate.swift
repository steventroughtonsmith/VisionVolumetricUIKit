//
//  VVUVolumetricSceneDelegate.swift
//  VisionVolumetricUIKit
//
//  Created by Steven Troughton-Smith on 30/06/2023.
//  
//

import UIKit
import SwiftUI

class VVUVolumetricSceneDelegate: UIResponder, UIHostingSceneDelegate {
	
	static var rootScene: some Scene {
		WindowGroup(id: "sphere") {
			VVUVolumetricView()
		}
		.windowStyle(.volumetric)
		.defaultSize(
			width: 1,
			height: 1,
			depth: 1,
			in: .meters)
	}
}
