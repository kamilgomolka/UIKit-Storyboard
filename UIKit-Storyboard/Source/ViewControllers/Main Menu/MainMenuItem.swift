//
//  MainMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/12/2021.
//

import Foundation

enum MainMenuItem: MenuItemProtocol {
    case scrollView
    
    var name: String {
        switch self {
        case .scrollView:
            return LocalizedString(.mainMenuItemScrollView)
        }
    }
    
    var storyboardName: String {
        switch self {
        case .scrollView:
            return "ScrollViewMenu"
        }
    }
}
