//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 2/9/21.
//

import UIKit

extension UITableView {

    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }

}
