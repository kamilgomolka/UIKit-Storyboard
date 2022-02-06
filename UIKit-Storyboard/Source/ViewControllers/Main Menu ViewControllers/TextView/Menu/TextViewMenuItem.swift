//
//  TextViewMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 27/01/2022.
//

import Foundation

enum TextViewMenuItem: MenuItemProtocol {
    case editable
    case nonEditable
    case nonEditableNonSelectable
    case dataDetectors
    
    var name: String {
        switch self {
        case .editable:
            return "Editable"
        case .nonEditable:
            return "Non editable"
        case .nonEditableNonSelectable:
            return "Non editable, non selectable"
        case .dataDetectors:
            return "Data detectors"
        }
    }
    
    var storyboardName: String {
        switch self {
        case .editable:
            return "TextViewEditable"
        case .nonEditable:
            return "TextViewNonEditable"
        case .nonEditableNonSelectable:
            return "TextViewNonEditableNonSelectable"
        case .dataDetectors:
            return "TextViewDataDetectors"
        }
    }
}
