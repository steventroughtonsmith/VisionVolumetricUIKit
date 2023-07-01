//
//  VVUMainViewController.swift
//  VisionVolumetricUIKit
//
//  Created by Steven Troughton-Smith on 30/06/2023.
//  
//

import UIKit

final class VVUMainViewController: UIViewController {
	
	let button = UIButton(type: .system)

    init() {
        super.init(nibName: nil, bundle: nil)
        title = "VisionVolumetricUIKit"
		
		button.configuration = .borderedProminent()
		button.setTitle("Create Volumetric Window", for: .normal)
		button.addTarget(self, action: #selector(showChildWindow(_:)), for: .touchUpInside)
		
		view.addSubview(button)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
	
	// MARK: -
	
	override func viewDidLayoutSubviews() {
		let buttonSize = CGSize(width: 300, height: 60)
		button.frame = CGRect(x: view.bounds.midX-buttonSize.width/2, y: view.bounds.midY-buttonSize.height/2, width: buttonSize.width, height: buttonSize.height)
	}
	
	
	// MARK: - Actions
	
	@objc func showChildWindow(_ sender:Any?) {
		
		let request = UISceneSessionActivationRequest(role:.windowApplicationVolumetric, userActivity: NSUserActivity(activityType: "com.example.child"))

		UIApplication.shared.activateSceneSession(for: request)
	}

	
	// MARK: -

	#if os(xrOS)
	override var preferredContainerBackgroundStyle: UIContainerBackgroundStyle {
		return .glass
	}
	#endif
}
