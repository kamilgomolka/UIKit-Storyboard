//
//  CollectionViewMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 10/02/2022.
//

import Foundation

struct CollectionViewMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Basic grid",
				storyboardName: "CollectionViewGrid"
			),
			MenuItem(
				name: "Sections with headers",
				storyboardName: "CollectionViewSections"
			),
			MenuItem(
				name: "Badge icon",
				storyboardName: "CollectionViewBadge"
			),
			MenuItem(
				name: "Paging (Orthogonal scrolling)",
				storyboardName: "CollectionViewPaging"
			)
		]
	}
}
