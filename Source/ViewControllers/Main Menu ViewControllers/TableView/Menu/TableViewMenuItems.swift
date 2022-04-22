//
//  TableViewMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

struct TableViewMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "TableView.Style",
				storyboardName: "TableView",
				viewControllerIdentifier: "TableViewStyleMenuViewController"
			),
			MenuItem(
				name: "TableView.SeparatorStyle",
				storyboardName: "TableView",
				viewControllerIdentifier: "TableViewSeparatorStyleMenuViewController"
			),
			MenuItem(
				name: "TableView.Selection",
				storyboardName: "TableView",
				viewControllerIdentifier: "TableViewSelectionMenuViewController"
			),
			MenuItem(
				name: "Cell.Style",
				storyboardName: "TableView",
				viewControllerIdentifier: "CellStyleMenuViewController"
			),
			MenuItem(
				name: "Cell.SelectionStyle",
				storyboardName: "TableView",
				viewControllerIdentifier: "CellSelectionStyleViewController"
			),
			MenuItem(
				name: "Cell.AccessoryType",
				storyboardName: "TableView",
				viewControllerIdentifier: "CellAccessoryTypeViewController"
			),
			MenuItem(
				name: "Cell.SeparatorInsets",
				storyboardName: "TableView",
				viewControllerIdentifier: "CellSeparatorInsetsViewController"
			),
			MenuItem(
				name: "Headers and Footters",
				storyboardName: "TableView",
				viewControllerIdentifier: "TableViewHeadersAndFoottersViewController"
			),
			MenuItem(
				name: "SectionIndex",
				storyboardName: "TableView",
				viewControllerIdentifier: "TableViewSectionIndexViewController"
			)
		]
	}
}
