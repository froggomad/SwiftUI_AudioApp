//
//  WWDC_SwiftUIApp.swift
//  WWDC_SwiftUI
//
//  Created by Kenny on 7/5/20.
//

import SwiftUI

@main
struct WWDC_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            SongListView()
            AudioControlBoxView()

        }
    }
}

struct WWDC_SwiftUIApp_Previews: PreviewProvider {
    static var previews: some View {
        AudioControlBoxView()
    }
}
