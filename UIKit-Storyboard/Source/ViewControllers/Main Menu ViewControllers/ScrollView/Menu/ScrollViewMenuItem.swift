//
//  ScrollViewMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import Foundation

enum ScrollViewMenuItem: MenuItemProtocol {
    case vertical
    case horizontal
    case twoDirections
    case withNoContentLayoutGuides
    case withKeyboard
    
    var name: String {
        switch self {
        case .vertical:
            return LocalizedString(.scrollViewMenuItemVertical)
        case .horizontal:
            return LocalizedString(.scrollViewMenuItemHorizontal)
        case .twoDirections:
            return LocalizedString(.scrollViewMenuItemTwoDirections)
        case .withNoContentLayoutGuides:
            return LocalizedString(.scrollViewMenuItemWithNoContentLayoutGuides)
        case .withKeyboard:
            return LocalizedString(.scrollViewMenuItemWithKeyboard)
        }
    }
    
    var storyboardName: String {
        switch self {
        case .vertical:
            return "ScrollViewVertical"
        case .horizontal:
            return "ScrollViewHorizontal"
        case .twoDirections:
            return "ScrollViewTwoDirections"
        case .withNoContentLayoutGuides:
            return "ScrollViewWithNoContentLayoutGuides"
        case .withKeyboard:
            return "ScrollViewWithKeyboard"
        }
    }
}
