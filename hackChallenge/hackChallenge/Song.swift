//
//  Song.swift
//  hackChallenge
//
//  Created by Emory Walsh on 5/5/21.
//

import Foundation

class Song {
    var title: String
    var artist: String
    var alblum: String
    var picture: String
    
    init(title: String, artist: String, alblum: String, picture: String) {
        self.title = title
        self.artist = artist
        self.alblum = alblum
        self.picture = picture
    }
}
