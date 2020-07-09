//
//  ProgressView.swift
//  WWDC_SwiftUI
//
//  Created by Kenny on 7/5/20.
//

import SwiftUI

struct ProgressBarView: View {
    @Binding var value: Float

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: 20)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemGray))

                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: 20)
                    .foregroundColor(Color(UIColor.systemGreen))
                    .animation(.linear)
            }.cornerRadius(45.0)
        }
    }
}
