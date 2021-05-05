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
    
    init(sign: String, horoscope: String, picture: String) {
        self.sign = sign
        self.horoscope = horoscope
        self.picture = picture
    }
}
