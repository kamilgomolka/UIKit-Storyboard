//
//  TableViewStyleMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

enum TableViewStyleMenuItem: MenuItemProtocol {
    case tableViewStyleMenuItemPlain
    case tableViewStyleMenuItemGrouped
    case tableViewStyleMenuItemInsetGrouped
    
    var name: String {
        switch self {
        case .tableViewStyleMenuItemPlain:
            return LocalizedString(.tableViewStyleMenuItemPlain)
        case .tableViewStyleMenuItemGrouped:
            return LocalizedString(.tableViewStyleMenuItemGrouped)
        case .tableViewStyleMenuItemInsetGrouped:
            return LocalizedString(.tableViewStyleMenuItemInsetGrouped)
        }
    }
    
    var storyboardName: String {
        return "TableView"
    }
    
    var viewControllerIdentifier: String? {
        switch self {
        case .tableViewStyleMenuItemPlain:
            return "TableViewStylePlainViewController"
        case .tableViewStyleMenuItemGrouped:
            return "TableViewStyleGroupedViewController"
        case .tableViewStyleMenuItemInsetGrouped:
            return "TableViewStyleInsetGroupedViewController"
        }
    }
}
