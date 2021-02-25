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

    func downloadUserImage(fromURL url: String) {
        NetworkManager.shared.downloadImage(from: url)  { [weak self] image in
            guard let self = self else { return }

            DispatchQueue.main.async {
                self.image = image
            }
        }
    }
}
