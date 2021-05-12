//
//  Sign.swift
//  hackChallenge
//
//  Created by Emory Walsh on 5/5/21.
//

import Foundation

struct Sign : Codable {
    var sign: String
    var horoscope: String
    var picture: String
    var id: Int
    
    init(sign: String, horoscope: String, picture: String, id: Int) {
        self.sign = sign
        self.horoscope = horoscope
        self.picture = picture
        self.id = id
    }
}
