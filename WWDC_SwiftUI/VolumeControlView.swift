//
//  VolumeControlView.swift
//  WWDC_SwiftUI
//
//  Created by Kenny on 7/5/20.
//

import SwiftUI

struct VolumeControlView: View {
    @State var rotation: Double = 0

    static let knobWidth: CGFloat = 60
    static let grabberWidth: CGFloat = knobWidth/5
    static let selectorXOffset: CGFloat = 9
    static let selectorYOffset: CGFloat = 5

    let knob: some View = {
        Circle()
            .fill(Color.init(.displayP3, red: 195/255, green: 195/255, blue: 195/255, opacity: 1.0))
            .frame(width: knobWidth, height: knobWidth, alignment: .center)

    }()

    let grabber: some View = {
        Circle()
            .fill(Color.black)
            .opacity(0.4)
            .frame(
                width: grabberWidth,
                height: grabberWidth,
                alignment: .center
            )
            .offset(x: knobWidth * 0.4, y: selectorYOffset)

    }()

    var body: some View {
        VStack {
            ZStack {
                knob
                .gesture(RotationGesture()
                            .onChanged { value in
                                self.rotation = value.degrees
                            }
                        )
                grabber
                    .rotationEffect(
                        .degrees(self.rotation),
                        anchor: .center
                    )
            }
            Text(" Volume ")
                .font(.footnote)
                .foregroundColor(.black)
        }

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VolumeControlView()
    }
}
