//
//  UITableView+Extension.swift
//  LagerFontSize
//
//  Created by Taewoo Kang on 05/11/2019.
//  Copyright © 2019 magicmon. All rights reserved.
//


import UIKit
import Foundation

extension UIView: NibLoadableView {}
extension UITableViewCell: ReusableView {}

// MARK: - UITableView
extension UITableView {
    func register<T: UITableViewCell>(_: T.Type) {
        if Bundle.main.path(forResource: T.nibName, ofType: "nib") != nil  {
            let nib = UINib(nibName: T.nibName, bundle: nil)
            self.register(nib, forCellReuseIdentifier: T.reuseIdentifier)
        } else {
            self.register(T.classForCoder(), forCellReuseIdentifier: T.reuseIdentifier)
        }
    }
}

// ReusableView
protocol ReusableView: class { }
extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

// NibLoadableView
protocol NibLoadableView: class { }
extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

