//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 2/1/21.
//

import Foundation

enum GFErrorMessage: String, Error {
    case invalidUserName = "This username created  an invalid request. Please try  again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server was invalid. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
}
