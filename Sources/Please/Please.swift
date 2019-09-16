//
//  Please.swift
//  Please
//
//  Created by Erik Flores on 9/15/19.
//  Copyright © 2019 Erik Fores. All rights reserved.
//

import Foundation

/**
   Please help you in basic task for your development
*/
struct Please {
    
    /**
        This method get data from URL, the response of this method must be a decodable object
        - parameters:
            - url: endpoint from you get your data
            - type: type of object with decodable
            - completition: callback for get data in an object, previous decable
    */
    static func getData<T: Decodable>(from url: URL, as type: T.Type = T.self, completition: @escaping (_ value: T) -> Void) {
        let defaultConfig = URLSessionConfiguration.default
        let networkSession = URLSession(configuration: defaultConfig)
        networkSession.dataTask(with: url) { (data, _, error) in
            guard let data = data else {
                fatalError()
            }
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(T.self, from: data)
                completition(result)
            } catch {
                fatalError("Couldn't parse data as \(T.self):\n\(error)")
            }
        }.resume()
    }

}
