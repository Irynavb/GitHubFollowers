//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 2/3/21.
//

import Foundation

extension Date {

    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
