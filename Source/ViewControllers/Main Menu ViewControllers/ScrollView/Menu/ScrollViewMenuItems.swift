//
//  ScrollViewMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import Foundation

struct ScrollViewMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Vertical",
				storyboardName: "ScrollViewVertical"
			),
			MenuItem(
				name: "Horizontal",
				storyboardName: "ScrollViewHorizontal"
			),
			MenuItem(
				name: "Two directions",
				storyboardName: "ScrollViewTwoDirections"
			),
			MenuItem(
				name: "No ContentLayoutGuides",
				storyboardName: "ScrollViewWithNoContentLayoutGuides"
			),
			MenuItem(
				name: "With Keyboard",
				storyboardName: "ScrollViewWithKeyboard"
			)
		]
	}
}