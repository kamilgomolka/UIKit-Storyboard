//
//  TableViewMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

enum TableViewMenuItem: MenuItemProtocol {
    case tableViewStyle
    case tableViewSeparatorStyle
    case tableViewSelection
    case cellCellStyle
    case cellSelectionStyle
    case cellAccessoryType
    case cellSeparatorIsets
    case headersAndFootters
    case sectionIndex
    case editing
    
    var name: String {
        switch self {
        case .tableViewStyle:
            return LocalizedString(.tableViewMenuItemTableViewStyle)
        case .tableViewSeparatorStyle:
            return LocalizedString(.tableViewMenuItemTableViewSeparatorStyle)
        case .tableViewSelection:
            return LocalizedString(.tableViewMenuItemTableViewSelection)
        case .cellCellStyle:
            return LocalizedString(.tableViewMenuItemCellCellStyle)
        case .cellSelectionStyle:
            return LocalizedString(.tableViewMenuItemCellSelectionStyle)
        case .cellAccessoryType:
            return LocalizedString(.tableViewMenuItemCellAccessoryType)
        case .cellSeparatorIsets:
            return LocalizedString(.tableViewMenuItemCellSeparatorIsets)
        case .headersAndFootters:
            return LocalizedString(.tableViewMenuItemHeadersAndFootters)
        case .sectionIndex:
            return LocalizedString(.tableViewMenuItemSectionIndex)
        case .editing:
            return LocalizedString(.tableViewMenuItemEditing)
        }
    }
    
    var storyboardName: String {
        return "TableView"
    }
    
    var viewControllerIdentifier: String? {
        switch self {
        case .tableViewStyle:
            return "TableViewStyleMenuViewController"
        case .tableViewSeparatorStyle:
            return "TableViewSeparatorStyleMenuViewController"
        case .tableViewSelection:
            return "TableViewSelectionMenuViewController"
        case .cellCellStyle:
            return "CellStyleViewController"
        case .cellSelectionStyle:
            return "CellSelectionStyleViewController"
        case .cellAccessoryType:
            return "CellAccessoryTypeViewController"
        case .cellSeparatorIsets:
            return "CellSeparatorIsetsViewController"
        case .headersAndFootters:
            return ""
        case .sectionIndex:
            return ""
        case .editing:
            return ""
        }
    }
}
