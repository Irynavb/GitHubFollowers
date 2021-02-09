//
//  GFSecondaryTitleLabel.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 2/3/21.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame:  CGRect) {
        super.init(frame: frame)
        configure()
    }

    convenience init(fontSize: CGFloat) {
        self.init(frame: .zero)
        font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
    }


    private func configure() {
        textColor                   = .secondaryLabel
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.90
        lineBreakMode               = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
