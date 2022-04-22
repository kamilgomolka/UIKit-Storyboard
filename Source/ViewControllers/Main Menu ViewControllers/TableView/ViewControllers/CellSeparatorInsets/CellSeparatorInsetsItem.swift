//
//  CellSeparatorInsetsItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 31/01/2022.
//

import Foundation

enum CellSeparatorInsetsItem: String, CaseIterable {
    case automatic1
    case automatic2
    case automatic3
    case customZero1
    case customZero2
    case customZero3
    case customNonZero1
    case customNonZero2
    case customNonZero3
    
    var cellIdentifier: String {
        switch self {
        case .automatic1:
            return "automatic"
        case .automatic2:
            return "automatic"
        case .automatic3:
            return "automatic"
        case .customZero1:
            return "customZero"
        case .customZero2:
            return "customZero"
        case .customZero3:
            return "customZero"
        case .customNonZero1:
            return "customNonZero"
        case .customNonZero2:
            return "customNonZero"
        case .customNonZero3:
            return "customNonZero"
        }
    }
    
    var text: String {
        switch self {
        case .automatic1:
            return "Automatic #1"
        case .automatic2:
            return "Automatic #2"
        case .automatic3:
            return "Automatic #3"
        case .customZero1:
            return "Zero insets #1"
        case .customZero2:
            return "Zero insets #2"
        case .customZero3:
            return "Zero insets #3"
        case .customNonZero1:
            return "Left and rght insets #1"
        case .customNonZero2:
            return "Left and rght insets #2"
        case .customNonZero3:
            return "Left and rght insets #3"
        }
    }
}
