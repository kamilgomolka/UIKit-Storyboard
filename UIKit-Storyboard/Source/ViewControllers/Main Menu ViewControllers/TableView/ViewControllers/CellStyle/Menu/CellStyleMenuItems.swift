//
//  CellStyleMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/02/2022.
//

import Foundation

struct CellStyleMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Default font",
				storyboardName: "TableView",
				viewControllerIdentifier: "CellStyleDefaultFontViewController"
			),
			MenuItem(
				name: "Body",
				storyboardName: "TableView",
				viewControllerIdentifier: "CellStyleBodyViewController"
			),
			MenuItem(
				name: "Title3",
				storyboardName: "TableView",
				viewControllerIdentifier: "CellStyleTitle3ViewController"
			),
			MenuItem(
				name: "Long text",
				storyboardName: "TableView",
				viewControllerIdentifier: "CellStyleLongTextViewController"
			)
		]
	}
}
