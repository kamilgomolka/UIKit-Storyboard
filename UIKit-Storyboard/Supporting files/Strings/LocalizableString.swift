//
//  LocalizableString.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/12/2021.
//

import Foundation

enum LocalizableString: String {
    case mainMenuTitle
    case mainMenuItemScrollView
    case mainMenuItemAllElements
    
    case scrollViewMenuItemVertical
    case scrollViewMenuItemHorizontal
    case scrollViewMenuItemTwoDirections
    case scrollViewMenuItemWithNoContentLayoutGuides
    case scrollViewMenuItemWithKeyboard
}

func LocalizedString(_ localizable: LocalizableString) -> String {
    return NSLocalizedString(localizable.rawValue, comment: "")
}
