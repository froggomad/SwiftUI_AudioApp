//
//  Song.swift
//  WWDC_SwiftUI
//
//  Created by Kenny on 7/5/20.
//

import Foundation

struct Song: Identifiable {
    var id = UUID()
    var name: String
    var length: Int

    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
}

let testData = [
    Song(name: "Latest Rock Hit", length: 240),
    Song(name: "Latest Rap Hit", length: 240),
    Song(name: "Latest Pop Hit", length: 180),
    Song(name: "Latest R&B Hit", length: 300),
    Song(name: "Latest Soul Hit", length: 120),
    Song(name: "Latest Reggae Hit", length: 240),
    Song(name: "Latest Country Hit", length: 120),
    Song(name: "Latest Polka Hit", length: 120),
    Song(name: "Latest Samba Hit", length: 180),
    Song(name: "Latest House Hit", length: 240)
]
