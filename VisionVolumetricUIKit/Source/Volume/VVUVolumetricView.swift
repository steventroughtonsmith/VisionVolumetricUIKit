//
//  VVUVolumetricView.swift
//  VisionVolumetricUIKit
//
//  Created by Steven Troughton-Smith on 01/07/2023.
//

import SwiftUI
import RealityKit

struct VVUVolumetricView: View {
	
	var controls: some View {
		HStack {
			Button("Test") {
				
			}
			Button("Test 2") {
				
			}
		}
		.padding()
	}
	
	var body: some View {
		ZStack(alignment: .bottom) {
			RealityView { content in
				let mesh = ModelEntity(mesh: .generateSphere(radius: 0.25))
				content.add(mesh)
			}
			controls
				.glassBackgroundEffect(in: .capsule)
			
		}
	}
}

#Preview {
	VVUVolumetricView()
}
