//
//  TableViewMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/02/2022.
//

import Foundation

enum CellStyleMenuItem: MenuItemProtocol {
    case cellStyleMenuItemDefaultFont
    case cellStyleMenuItemBody
    case cellStyleMenuItemTitle3
    case cellStyleMenuItemLongText
    
    var name: String {
        switch self {
        case .cellStyleMenuItemDefaultFont:
            return LocalizedString(.cellStyleMenuItemDefaultFont)
        case .cellStyleMenuItemBody:
            return LocalizedString(.cellStyleMenuItemBody)
        case .cellStyleMenuItemTitle3:
            return LocalizedString(.cellStyleMenuItemTitle3)
        case .cellStyleMenuItemLongText:
            return LocalizedString(.cellStyleMenuItemLongText)
        }
    }
    
    var storyboardName: String {
        return "TableView"
    }
    
    var viewControllerIdentifier: String? {
        switch self {
        case .cellStyleMenuItemDefaultFont:
            return "CellStyleDefaultFontViewController"
        case .cellStyleMenuItemBody:
            return "CellStyleBodyViewController"
        case .cellStyleMenuItemTitle3:
            return "CellStyleTitle3ViewController"
        case .cellStyleMenuItemLongText:
            return "CellStyleLongTextViewController"
        }
    }
}
