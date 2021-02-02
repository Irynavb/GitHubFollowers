//
//  FollowerListViewController.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 1/29/21.
//

import UIKit

class FollowerListViewController: UIViewController {

    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true

        NetworkManager.shared.getFollowers(for: userName, page: 1) { result in
            switch result {
            case .success(let followers):
                print(followers)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Someething can happen", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }

}
