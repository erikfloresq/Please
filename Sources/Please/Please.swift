//
//  Please.swift
//  Please
//
//  Created by Erik Flores on 9/15/19.
//  Copyright © 2019 Erik Fores. All rights reserved.
//

import Foundation
import UIKit

/**
   Please help you in basic task for your development
*/
public struct Please {

    public static func readJSON(from file: String) -> Data {
        guard let jsonFileURL = Bundle.main.url(forResource: file, withExtension: "json") else {
            fatalError("Problems with JSON URL")
        }
        do {
            return try Data(contentsOf: jsonFileURL)
        } catch {
            fatalError("Data parse error: \(error.localizedDescription)")
        }
    }

    public static func showSqlLitePath() -> [String] {
        NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true)
        let otherPath = NSSearchPathForDirectoriesInDomains(.applicationSupportDirectory, .userDomainMask, true)
        return otherPath
    }
    
}
