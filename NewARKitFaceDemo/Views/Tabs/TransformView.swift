//
//  TransformView.swift
//  NewARKitFaceDemo
//
//  Created by ZhangZiYang on 2022/6/22.
//

import SwiftUI

struct TransformView: View {
    var body: some View {
        ARFaceViewContainer()
            .ignoresSafeArea()
    }
}

struct TransformView_Previews: PreviewProvider {
    static var previews: some View {
        TransformView()
    }
}
