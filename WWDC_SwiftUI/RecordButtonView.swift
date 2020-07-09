//
//  RecordButtonView.swift
//  WWDC_SwiftUI
//
//  Created by Kenny on 7/5/20.
//

import SwiftUI

struct RecordButtonView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(8)
                Circle()
                    .fill(Color.red, style: FillStyle())
                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            Text("Record")
                .font(.footnote)
                .foregroundColor(.black)
        }
    }
}

struct PowerButton_Previews: PreviewProvider {
    static var previews: some View {
        RecordButtonView()
    }
}
