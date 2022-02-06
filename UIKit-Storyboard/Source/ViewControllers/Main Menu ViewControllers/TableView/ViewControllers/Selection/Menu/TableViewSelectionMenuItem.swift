//
//  TableViewMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

enum TableViewSelectionMenuItem: String, MenuItemProtocol {
    case single
    case singleWithDeselect
    case multiple
    
    var name: String {
        return rawValue.autoGeneratedMenuItemName
    }
    
    var storyboardName: String {
        return "TableView"
    }
    
    var viewControllerIdentifier: String? {
        switch self {
        case .single:
            return "TableViewSelectionSingleViewController"
        case .singleWithDeselect:
            return "TableViewSelectionWithDeselectViewController"
        case .multiple:
            return "TableViewSelectionMultipleViewController"
        }
    }
}
