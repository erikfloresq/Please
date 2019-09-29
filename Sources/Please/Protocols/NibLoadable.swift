//
//  NibLoadable.swift
//  
//
//  Created by Erik Flores on 9/28/19.
//

import Foundation
import UIKit

public protocol NibLoadable: AnyObject {
    static var nibName: String { get }
    static var nibBundle: Bundle { get }
}

public extension NibLoadable where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }

    static var nibBundle: Bundle {
        return Bundle(for: self)
    }

    static var nib: UINib {
        return UINib(nibName: nibName, bundle: nibBundle)
    }

    static func loadFormNib<T>() -> T? {
        return nibBundle.loadNib(named: nibName)
    }
}
