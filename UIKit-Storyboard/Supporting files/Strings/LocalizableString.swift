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
    case mainMenuItemTableView
    
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
    
    case tableViewMenuItemTableViewStyle
    case tableViewMenuItemTableViewSeparatorStyle
    case tableViewMenuItemTableViewSelection
    case tableViewMenuItemCellCellStyle
    case tableViewMenuItemCellSelectionStyle
    case tableViewMenuItemCellAccessoryType
    case tableViewMenuItemCellSeparatorIsets
    case tableViewMenuItemHeadersAndFootters
    case tableViewMenuItemSectionIndex
    case tableViewMenuItemEditing
    
    case tableViewStyleMenuItemPlain
    case tableViewStyleMenuItemGrouped
    case tableViewStyleMenuItemInsetGrouped
    
    case tableViewSeparatorStyleMenuItemNone
    case tableViewSeparatorStyleMenuItemLine
    case tableViewSeparatorStyleMenuItemEtched
    
    case tableViewSelectionMenuItemSingle
    case tableViewSelectionMenuItemDeselect
    case tableViewSelectionMenuItemMultiple
}

func LocalizedString(_ localizable: LocalizableString) -> String {
    return NSLocalizedString(localizable.rawValue, comment: "")
}
