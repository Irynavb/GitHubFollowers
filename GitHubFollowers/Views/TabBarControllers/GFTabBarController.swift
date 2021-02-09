//
//  GFTabBarController.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 2/8/21.
//

import UIKit


class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().tintColor = .systemGreen

        viewControllers = [createSearchNavigationViewController(), createFavoritesListNavigationController()]
    }

    func createSearchNavigationViewController() -> UINavigationController {
        let searchViewController = SearchViewController()

        searchViewController.title = "Search"
        searchViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)

        return UINavigationController(rootViewController: searchViewController)
    }

    func createFavoritesListNavigationController() -> UINavigationController {
        let favoritesListViewController = FavoritesListViewController()

        favoritesListViewController.title = "Favorites"
        favoritesListViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)

        return UINavigationController(rootViewController: favoritesListViewController)
    }

}
