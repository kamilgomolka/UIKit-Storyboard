//
//  TableViewSeparatorStyleMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

enum TableViewSeparatorStyleMenuItem: String, MenuItemProtocol {
    case none
    case singleLine
    case singleLineEtched
    
    var name: String {
        return rawValue.autoGeneratedMenuItemName
    }
    
    var storyboardName: String {
        return "TableView"
    }
    
    var viewControllerIdentifier: String? {
        switch self {
        case .none:
            return "TableViewSeparatorStyleNoneViewController"
        case .singleLine:
            return "TableViewSeparatorStyleLineViewController"
        case .singleLineEtched:
            return "TableViewSeparatorStyleEtchedViewController"
        }
    }
}
