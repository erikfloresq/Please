//
//  BundleExtension.swift
//  
//
//  Created by Erik Flores on 9/28/19.
//

import Foundation
import UIKit

public extension Bundle {
    func loadNib<NibType, T: RawRepresentable>(named nibName: T) -> NibType? where T.RawValue == String {
        return loadNibNamed(nibName.rawValue, owner: self, options: .none)?.first as? NibType
    }
}
