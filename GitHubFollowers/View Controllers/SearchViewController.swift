//
//  SearchViewController.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 1/28/21.
//

import UIKit

class SearchViewController: UIViewController {

    let logoImageView = UIImageView()
    let usernameTextField = GFTextField()
    let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")

    var isUsernameEntered: Bool { return !usernameTextField.text!.isEmpty }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubviews(logoImageView, usernameTextField, callToActionButton)
        configureLogoImageView()
        configureTextField()
        configureCallToActionButton()
        createDismissKeyboardTapGesture()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        usernameTextField.text = ""
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    func createDismissKeyboardTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tapGesture)
    }

    // TODO: Include Regular Expressions Validation for Username string typed in UsernameTextField,
    /* Alphanumeric,
       Can include "-",
       No consecutin=ve "-",
       Can't start or end with a "-"
     */

    @objc func pushFollowerListViewController() {
        guard isUsernameEntered else {
            presentGFAlertOnMainThread(title: "Empty Username", message: "Please enter a username so that the system knows who you are looking for 😄", buttonTitle: "Ok")
            return }

        usernameTextField.resignFirstResponder()

        let followerListViewController = FollowerListViewController(username: usernameTextField.text!)
        navigationController?.pushViewController(followerListViewController, animated: true)
    }

    func configureLogoImageView() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = #imageLiteral(resourceName: "gh-logo")

        let topConstraintConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? 20 : 80

        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: topConstraintConstant),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)

        ])
    }

    func configureTextField() {
        usernameTextField.delegate = self

        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    func configureCallToActionButton() {
        callToActionButton.addTarget(self, action: #selector(pushFollowerListViewController), for: .touchUpInside)

        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

}

extension SearchViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pushFollowerListViewController()
        return true
    }
}
