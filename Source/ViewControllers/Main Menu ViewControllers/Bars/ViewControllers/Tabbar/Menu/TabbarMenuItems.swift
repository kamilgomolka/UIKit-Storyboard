//
//  TabbarMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/04/2022.
//

import Foundation

struct TabbarMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Simple Tabbar",
				storyboardName: "SimpleTabbar"
			),
			MenuItem(
				name: "Many Items",
				storyboardName: "ManyItemsTabbar"
			),
			MenuItem(
				name: "Badge",
				storyboardName: "BadgeTabbar"
			)
		]
	}
}
