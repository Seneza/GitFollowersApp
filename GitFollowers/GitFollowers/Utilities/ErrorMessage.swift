//
//  ErrorMessage.swift
//  GitFollowers
//
//  Created by Gaston on 9/6/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "Username created invalid request. Please try again"
    case unableToComplete = "Unable to complete request. Please try again"
    case invalidResponse = "Invalid response from server. Please try again."
    case invalidData = "Data received from server is invalid. Please try again"
}
