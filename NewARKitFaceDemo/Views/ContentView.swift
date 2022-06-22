//
//  ContentView.swift
//  NewARKitFaceDemo
//
//  Created by ZhangZiYang on 2022/6/22.
//

import SwiftUI

struct ContentView : View {
    @State private var currentTab = 0
    
    // reference: https://stackoverflow.com/questions/56969309/change-tabbed-view-bar-color-swiftui
    // init() {
        // UITabBar.appearance().barStyle = .black
    // }
    
    var body: some View {
        TabView(selection: $currentTab){
            TransformView()
                .onAppear() {
                    self.currentTab = 0
                }
                .tabItem{
                    Label("Trandform", image: "transforms")
                }
                .tag(0)
            TextureView()
                .onAppear() {
                    self.currentTab = 1
                }
                .tabItem{
                    Label("Texture", image: "texture")
                }
                .tag(1)
            Overlay3DView()
                .onAppear() {
                    self.currentTab = 2
                }
                .tabItem{
                    Label("3D Overlay", image: "geometry")
                }
                .tag(2)
            VideoTextureView()
                .onAppear() {
                    self.currentTab = 3
                }
                .tabItem{
                    Label("Video Texture", image: "videoTexture")
                }
                .tag(3)
            BlendObjectView()
                .onAppear() {
                    self.currentTab = 4
                }
                .tabItem{
                    Label("Blend Object", image: "blendShapes")
                }
                .tag(4)
            
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.orange.opacity(0.2))
            
            // Use this appearance when scrolling behind the TabView:
            UITabBar.appearance().standardAppearance = appearance
            // Use this appearance when scrolled all the way up:
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
