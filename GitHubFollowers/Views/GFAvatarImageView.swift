//
//  GFAvatarImageView.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 2/2/21.
//

import UIKit

class GFAvatarImageView: UIImageView {

    let cache = NetworkManager.shared.cache
    let placeholderImage = #imageLiteral(resourceName: "avatar-placeholder")

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = #imageLiteral(resourceName: "avatar-placeholder")
        translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
