//
//  ContentView.swift
//  WWDC_SwiftUI
//
//  Created by Kenny on 7/5/20.
//

import SwiftUI

struct SongListView: View {
    var songs: [Song] = testData

    var body: some View {
        List(songs) { song in
            Image(systemName: "music.note.list")

            HStack {
                VStack(alignment: .leading) {
                    Text(song.name)
                    Text("Duration: \(song.length)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SongListView()
    }
}
