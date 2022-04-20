//
//  LabelMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import Foundation

struct LabelMenuItems {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "System text styles",
				storyboardName: "LabelTextStyles"
			),
			MenuItem(
				name: "Font sizes in pt",
				storyboardName: "LabelFontSizes"
			),
			MenuItem(
				name: "Font weights",
				storyboardName: "LabelFontWeights"
			)
		]
	}
}
