//
//  TableViewSeparatorStyleMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

struct TableViewSeparatorStyleMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "None",
				storyboardName: "TableView",
				viewControllerIdentifier: "TableViewSeparatorStyleNoneViewController"
			),
			MenuItem(
				name: "Single line",
				storyboardName: "TableView",
				viewControllerIdentifier: "TableViewSeparatorStyleLineViewController"
			)
		]
	}
}
