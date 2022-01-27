//
//  LocalizableString.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/12/2021.
//

import Foundation

enum LocalizableString: String {
    case mainMenuTitle
    case mainMenuItemAllElements
    case mainMenuItemLabel
    case mainMenuItemButton
    case mainMenuItemTextField
    case mainMenuItemTextView
    case mainMenuItemScrollView
    
    case labelMenuItemTextStyles
    case labelMenuItemFontSizes
    case labelMenuItemFontWeights
    
    case buttonMenuItemStyles
    case buttonMenuItemSystemSizes
    case buttonMenuItemCornerStyle
    case buttonMenuItemImagePlacement
    case buttonMenuItemToggle
    case buttonMenuItemOther
    
    case textFieldMenuItemBorderStyle
    case textFieldMenuItemClearButton
    case textFieldMenuItemDisabled
    case textFieldMenuItemTraits
    case textFieldMenuItemKeyboardType
    case textFieldMenuItemReturnKeyType
    case textFieldMenuItemOther
    
    case textViewMenuEditable
    case textViewMenuNonEditable
    case textViewMenuNonEditableNonSelectable
    case textViewMenuDataDetectors
    
    case scrollViewMenuItemVertical
    case scrollViewMenuItemHorizontal
    case scrollViewMenuItemTwoDirections
    case scrollViewMenuItemWithNoContentLayoutGuides
    case scrollViewMenuItemWithKeyboard
}

func LocalizedString(_ localizable: LocalizableString) -> String {
    return NSLocalizedString(localizable.rawValue, comment: "")
}
