//
//  MainMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/12/2021.
//

import Foundation

struct MainMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "All controls",
				storyboardName: "AllControls"
			),
			MenuItem(
				name: "Label",
				storyboardName: "LabelMenu"
			),
			MenuItem(
				name: "Button",
				storyboardName: "ButtonMenu"
			),
			MenuItem(
				name: "TextField",
				storyboardName: "TextFieldMenu"
			),
			MenuItem(
				name: "TextView",
				storyboardName: "TextViewMenu"
			),
			MenuItem(
				name: "ScrollView",
				storyboardName: "ScrollViewMenu"
			),
			MenuItem(
				name: "TableView",
				storyboardName: "TableView"
			),
			MenuItem(
				name: "CollectionView",
				storyboardName: "CollectionViewMenu"
			),
			MenuItem(
				name: "ViewController transitions",
				storyboardName: "Transitions"
			)
		]
	}
}
