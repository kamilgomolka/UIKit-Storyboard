//
//  TableViewMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

enum TableViewSelectionMenuItem: MenuItemProtocol {
    case tableViewSelectionMenuItemSingle
    case tableViewSelectionMenuItemDeselect
    case tableViewSelectionMenuItemMultiple
    
    var name: String {
        switch self {
        case .tableViewSelectionMenuItemSingle:
            return LocalizedString(.tableViewSelectionMenuItemSingle)
        case .tableViewSelectionMenuItemDeselect:
            return LocalizedString(.tableViewSelectionMenuItemDeselect)
        case .tableViewSelectionMenuItemMultiple:
            return LocalizedString(.tableViewSelectionMenuItemMultiple)
        }
    }
    
    var storyboardName: String {
        return "TableView"
    }
    
    var viewControllerIdentifier: String? {
        switch self {
        case .tableViewSelectionMenuItemSingle:
            return "TableViewSelectionSingleViewController"
        case .tableViewSelectionMenuItemDeselect:
            return "TableViewSelectionWithDeselectViewController"
        case .tableViewSelectionMenuItemMultiple:
            return "TableViewSelectionMultipleViewController"
        }
    }
}
