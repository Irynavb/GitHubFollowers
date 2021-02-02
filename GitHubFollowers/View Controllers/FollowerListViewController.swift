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
    }

}
