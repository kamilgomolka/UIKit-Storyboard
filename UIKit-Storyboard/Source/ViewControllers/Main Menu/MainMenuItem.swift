//
//  MainMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/12/2021.
//

import Foundation

enum MainMenuItem: MenuItemProtocol {
    case allElements
    case scrollView
    
    var name: String {
        switch self {
        case .allElements:
            return LocalizedString(.mainMenuItemAllElements)
        case .scrollView:
            return LocalizedString(.mainMenuItemScrollView)
        
        }
    }
    
    var storyboardName: String {
        switch self {
        case .allElements:
            return "AllElements"
        case .scrollView:
            return "ScrollViewMenu"
        }
    }
}
