//
//  GFTextField.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 1/29/21.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    private func configure() {

        translatesAutoresizingMaskIntoConstraints = false

        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor

        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12

        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no

        returnKeyType = .go
        clearButtonMode = .whileEditing
        placeholder = "Enter a username"

    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
