//
//  GFRepoItemViewController.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 2/3/21.
//

import UIKit

class GFRepoItemViewController: GFItemInfoViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }

    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }

}
