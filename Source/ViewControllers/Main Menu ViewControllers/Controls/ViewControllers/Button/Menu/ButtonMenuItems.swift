//
//  ButtonMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import Foundation

struct ButtonMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Button styles",
				storyboardName: "ButtonStyles"
			),
			MenuItem(
				name: "System sizes",
				storyboardName: "ButtonSystemSizes"
			),
			MenuItem(
				name: "Corner style",
				storyboardName: "ButtonCornerStyle"
			),
			MenuItem(
				name: "Image placement",
				storyboardName: "ButtonImagePlacement"
			),
			MenuItem(
				name: "Toggle button",
				storyboardName: "ButtonToggle"
			),
			MenuItem(
				name: "Other",
				storyboardName: "OtherButtons"
			)
		]
	}
}
