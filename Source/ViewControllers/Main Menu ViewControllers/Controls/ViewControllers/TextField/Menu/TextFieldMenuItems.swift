//
//  TextFieldMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import Foundation

struct TextFieldMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Border style",
				storyboardName: "TextFieldBorderStyle"
			),
			MenuItem(
				name: "Clear button",
				storyboardName: "TextFieldClearButton"
			),
			MenuItem(
				name: "Disabled",
				storyboardName: "TextFieldDisabled"
			),
			MenuItem(
				name: "Text input traits",
				storyboardName: "TextFieldTraits"
			),
			MenuItem(
				name: "Keyboard type",
				storyboardName: "TextFieldKeyboardType"
			),
			MenuItem(
				name: "Return key type",
				storyboardName: "TextFieldReturnKeyType"
			),
			MenuItem(
				name: "Text alignment",
				storyboardName: "TextFieldAlignment"
			),
			MenuItem(
				name: "Password",
				storyboardName: "TextFieldPassword"
			)
		]
	}
}