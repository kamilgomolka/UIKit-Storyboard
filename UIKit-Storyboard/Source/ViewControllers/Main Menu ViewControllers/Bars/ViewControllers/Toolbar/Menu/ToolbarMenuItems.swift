//
//  ToolbarMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import Foundation

struct ToolbarMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Simple toolbar",
				storyboardName: "SimpleToolbar"
			),
			MenuItem(
				name: "Toolbar and TableView",
				storyboardName: "ToolbarAndTableView"
			),
			MenuItem(
				name: "BarButtonItem - Style",
				storyboardName: "ToolbarItemStyle"
			),
			MenuItem(
				name: "BarButtonItem - System items",
				storyboardName: "ToolbarSystemItems"
			)
		]
	}
}
