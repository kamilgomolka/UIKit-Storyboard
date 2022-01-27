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
            return LocalizedString(.textViewMenuEditable)
        case .nonEditable:
            return LocalizedString(.textViewMenuNonEditable)
        case .nonEditableNonSelectable:
            return LocalizedString(.textViewMenuNonEditableNonSelectable)
        case .dataDetectors:
            return LocalizedString(.textViewMenuDataDetectors)
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
