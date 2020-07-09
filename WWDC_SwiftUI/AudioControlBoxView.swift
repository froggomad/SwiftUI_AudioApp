//
//  AudioControlBoxView.swift
//  WWDC_SwiftUI
//
//  Created by Kenny on 7/5/20.
//

import SwiftUI

struct AudioControlBoxView: View {
    @State var value: Float = 0.8
    var body: some View {
        HStack(alignment: .top, spacing: 8) {

            Button(action: {

            }) {
                RecordButtonView()
                    .foregroundColor(.black)
            }
            .offset(x: 8, y: 10)

            Spacer()

            ZStack {
                ProgressBarView(value: $value)
                HStack {
                    Button(action: {

                    }) {
                        Image(systemName: "play.fill")
                            .renderingMode(.original)
                    }

                    Button(action: {

                    }) {
                        Image(systemName: "stop.fill")
                            .renderingMode(.original)
                    }
                }
            }

            Spacer()

            VolumeControlView()
                .offset(x: -8)
        }
        .frame(maxWidth: .infinity, maxHeight: 125)
        .offset(y: 8)
        
    }
}

struct AudioControlBoxView_Previews: PreviewProvider {
    static var previews: some View {
        AudioControlBoxView()
    }
}
