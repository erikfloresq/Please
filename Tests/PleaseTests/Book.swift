//
//  File.swift
//  
//
//  Created by Erik Flores on 9/15/19.
//

import Foundation

struct Book: Hashable, Decodable {
    let title: String
    let subtitle: String
    let isbn13: String
    let price: String
    let image: String
    let url: String
}
