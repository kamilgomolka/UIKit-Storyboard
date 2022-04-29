//
//  ControlsMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 30/04/2022.
//

import Foundation

struct ControlsMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "ActivityIndicator",
				storyboardName: "ActivityIndicator"
			),
			MenuItem(
				name: "Button",
				storyboardName: "ButtonMenu"
			),
			MenuItem(
				name: "Label",
				storyboardName: "LabelMenu"
			),
			MenuItem(
				name: "PageControl",
				storyboardName: "PageControl"
			),
			MenuItem(
				name: "ProgressView",
				storyboardName: "ProgressView"
			),
			MenuItem(
				name: "SegmentedControl",
				storyboardName: "SegmentedControl"
			),
			MenuItem(
				name: "Slider",
				storyboardName: "Slider"
			),
			MenuItem(
				name: "Stepper",
				storyboardName: "Stepper"
			),
			MenuItem(
				name: "Switch",
				storyboardName: "Switch"
			),
			MenuItem(
				name: "TextField",
				storyboardName: "TextFieldMenu"
			),
			MenuItem(
				name: "TextView",
				storyboardName: "TextViewMenu"
			),
		]
	}
}
