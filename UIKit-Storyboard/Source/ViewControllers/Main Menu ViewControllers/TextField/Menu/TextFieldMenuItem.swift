//
//  TextFieldMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import Foundation

enum TextFieldMenuItem: MenuItemProtocol {
	case borderStyle
	case clearButton
	case disabled
	case traits
	case keyboardType
	case returnKeyType
	case aligmnent
	case password
	
	var name: String {
		switch self {
		case .borderStyle:
			return "Border style"
		case .clearButton:
			return "Clear button"
		case .disabled:
			return "Disabled"
		case .traits:
			return "Text input traits"
		case .keyboardType:
			return "Keyboard type"
		case .returnKeyType:
			return "Return key type"
		case .aligmnent:
			return "Text alignment"
		case .password:
			return "Password"
		}
	}
    
    var storyboardName: String {
        switch self {
        case .borderStyle:
            return "TextFieldBorderStyle"
        case .clearButton:
            return "TextFieldClearButton"
        case .disabled:
            return "TextFieldDisabled"
        case .traits:
            return "TextFieldTraits"
        case .keyboardType:
            return "TextFieldKeyboardType"
        case .returnKeyType:
            return "TextFieldReturnKeyType"
        case .aligmnent:
            return "TextFieldAlignment"
		case .password:
			return "TextFieldPassword"
        }
    }
}
