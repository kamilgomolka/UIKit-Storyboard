//
//  MainMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/12/2021.
//

import Foundation

enum MainMenuItem: MenuItemProtocol {
    case allElements
    case label
    case button
    case textField
    case textView
    case scrollView
    case tableView
    case collectionView
    case trantisions
    
    var name: String {
        switch self {
        case .allElements:
            return "All controls"
        case .label:
            return "Label"
        case .button:
            return "Button"
        case .textField:
            return "TextField"
        case .textView:
            return "TextView"
        case .scrollView:
            return "ScrollView"
        case .tableView:
            return "TableView"
        case .collectionView:
            return "CollectionView"
        case .trantisions:
            return "ViewController transitions"
        }
    }    
    
    var storyboardName: String {
        switch self {
        case .allElements:
            return "AllElements"
        case .label:
            return "LabelMenu"
        case .button:
            return "ButtonMenu"
        case .textField:
            return "TextFieldMenu"
        case .textView:
            return "TextViewMenu"
        case .scrollView:
            return "ScrollViewMenu"
        case .tableView:
            return "TableView"
        case .collectionView:
            return "CollectionViewMenu"
        case .trantisions:
            return "Transitions"
        }
    }
}
