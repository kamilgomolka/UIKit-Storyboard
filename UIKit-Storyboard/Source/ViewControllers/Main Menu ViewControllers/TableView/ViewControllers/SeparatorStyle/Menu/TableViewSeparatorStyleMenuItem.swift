//
//  TableViewSeparatorStyleMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

enum TableViewSeparatorStyleMenuItem: MenuItemProtocol {
    case tableViewSeparatorStyleMenuItemNone
    case tableViewSeparatorStyleMenuItemLine
    case tableViewSeparatorStyleMenuItemEtched
    
    var name: String {
        switch self {
        case .tableViewSeparatorStyleMenuItemNone:
            return LocalizedString(.tableViewSeparatorStyleMenuItemNone)
        case .tableViewSeparatorStyleMenuItemLine:
            return LocalizedString(.tableViewSeparatorStyleMenuItemLine)
        case .tableViewSeparatorStyleMenuItemEtched:
            return LocalizedString(.tableViewSeparatorStyleMenuItemEtched)
        }
    }
    
    var storyboardName: String {
        return "TableView"
    }
    
    var viewControllerIdentifier: String? {
        switch self {
        case .tableViewSeparatorStyleMenuItemNone:
            return "TableViewSeparatorStyleNoneViewController"
        case .tableViewSeparatorStyleMenuItemLine:
            return "TableViewSeparatorStyleLineViewController"
        case .tableViewSeparatorStyleMenuItemEtched:
            return "TableViewSeparatorStyleEtchedViewController"
        }
    }
}
