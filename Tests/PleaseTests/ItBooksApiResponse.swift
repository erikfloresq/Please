//
//  File.swift
//  
//
//  Created by Erik Flores on 9/15/19.
//

import Foundation

struct ItBooksApiResponse: Decodable {
    var error: String
    var total: String
    var page: String
    var books: [Book]
}
