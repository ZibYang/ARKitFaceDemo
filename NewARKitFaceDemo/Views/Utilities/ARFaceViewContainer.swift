//
//  ARFaceViewContainer.swift
//  NewARKitFaceDemo
//
//  Created by ZhangZiYang on 2022/6/22.
//

import SwiftUI
import RealityKit

struct ARFaceViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
