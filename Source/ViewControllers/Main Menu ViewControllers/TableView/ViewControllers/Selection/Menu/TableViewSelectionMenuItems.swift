//
//  TableViewSelectionMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

struct TableViewSelectionMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Single",
				storyboardName: "TableView",
				viewControllerIdentifier: "TableViewSelectionSingleViewController"
			),
			MenuItem(
				name: "Single with deselect",
				storyboardName: "TableView",
				viewControllerIdentifier: "TableViewSelectionWithDeselectViewController"
			),
			MenuItem(
				name: "Multiple",
				storyboardName: "TableView",
				viewControllerIdentifier: "TableViewSelectionMultipleViewController"
			)
		]
	}
}
