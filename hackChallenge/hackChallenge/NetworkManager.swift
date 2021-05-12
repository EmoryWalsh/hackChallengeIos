//
//  NetworkManager.swift
//  hackChallenge
//
//  Created by Emory Walsh on 5/5/21.
//

import Foundation
import Alamofire

class NetworkManager {
    static let host = "http://0.0.0.0:5000/"
    
    static func getHoroscope(id: Int, completion: @escaping (Sign) -> Void){
        let endpoint = "\(host)/api/\(id)/"
        AF.request(endpoint, method: .get).validate().responseData {
            response in
                switch response.result {
                case .success(let data):
                    let jsonDecoder = JSONDecoder()
                    
                    if let sign = try? jsonDecoder.decode(Sign.self, from: data){
                        completion(sign)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                }
        }
    }
}
