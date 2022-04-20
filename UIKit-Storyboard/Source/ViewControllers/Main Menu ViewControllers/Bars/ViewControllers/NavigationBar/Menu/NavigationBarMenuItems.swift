//
//  NavigationBarMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

struct NavigationBarMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Small title",
				storyboardName: "NavigationBarSmallTitle"
			),
			MenuItem(
				name: "Large title",
				storyboardName: "NavigationBarLargeTitle"
			),
			MenuItem(
				name: "Grouped, Small title",
				storyboardName: "NavigationBarGroupedSmallTitle"
			),
			MenuItem(
				name: "Grouped, Large title",
				storyboardName: "NavigationBarGroupedLargeTitle"
			),
			MenuItem(
				name: "Custom titleView",
				storyboardName: "NavigationBarCustomTitleView"
			),
			MenuItem(
				name: "Buttons",
				storyboardName: "NavigationBarButtons"
			),
			MenuItem(
				name: "Prompt",
				storyboardName: "NavigationBarPrompt"
			)
		]
	}
}
