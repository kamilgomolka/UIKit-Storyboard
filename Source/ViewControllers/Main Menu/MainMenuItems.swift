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
				name: "Bars",
				storyboardName: "BarsMenu"
			),
			MenuItem(
				name: "CollectionView",
				storyboardName: "CollectionViewMenu"
			),
			MenuItem(
				name: "Controls",
				storyboardName: "ControlsMenu"
			),
			MenuItem(
				name: "Pickers",
				storyboardName: "PickersMenu"
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
				name: "ViewController transitions",
				storyboardName: "Transitions"
			),
		]
	}
}
