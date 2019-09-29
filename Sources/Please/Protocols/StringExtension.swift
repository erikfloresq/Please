//
//  StringExtension.swift
//  
//
//  Created by Erik Flores on 9/28/19.
//

import Foundation

extension String: RawRepresentable {

    public init?(rawValue: String) {
        self = rawValue
    }

    public var rawValue: String {
        return self
    }

}
