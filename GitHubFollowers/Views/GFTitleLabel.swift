//
//  GFTitleLabel.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 1/29/21.
//

import UIKit

class GFTitleLabel: UILabel {
    override init(frame:  CGRect) {
        super.init(frame: frame)
        configure()
    }

    convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }

    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
