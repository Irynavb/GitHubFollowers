//
//  UIView+Ext.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 2/9/21.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
