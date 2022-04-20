//
//  TextViewMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 27/01/2022.
//

import Foundation

struct TextViewMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Editable",
				storyboardName: "TextViewEditable"
			),
			MenuItem(
				name: "Non editable",
				storyboardName: "TextViewNonEditable"
			),
			MenuItem(
				name: "Non editable, non selectable",
				storyboardName: "TextViewNonEditableNonSelectable"
			),
			MenuItem(
				name: "Data detectors",
				storyboardName: "TextViewDataDetectors"
			)
		]
	}
}