//
//  TransitionsMenuItems.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import Foundation

struct TransitionsMenuItems {
	
	static var all: [TransitionsMenuItem] {
		return [
			TransitionsMenuItem(
				name: "Show (e.g. Push)",
				segueName: "show"
			),
			TransitionsMenuItem(
				name: "Show Detail (e.g. Replace)",
				segueName: "showDetail"
			),
			TransitionsMenuItem(
				name: "Modal, Full screen, Cover vertical",
				segueName: "fullScreenCoverVertical"
			),
			TransitionsMenuItem(
				name: "Modal, Full screen, Flip horizontal",
				segueName: "fullScreenFlipHorizontal"
			),
			TransitionsMenuItem(
				name: "Modal, Full screen, Cross disolve",
				segueName: "fullScreenCrossDisolve"
			),
			TransitionsMenuItem(
				name: "Modal, Full screen, Partial curl",
				segueName: "fullScreenPartialCurl"
			),
			TransitionsMenuItem(
				name: "Page sheet, Cover vertical",
				segueName: "pageSheetCoverVertical"
			),
			TransitionsMenuItem(
				name: "Page sheet, Flip horizontal",
				segueName: "pageSheetFlipHorizontal"
			),
			TransitionsMenuItem(
				name: "Page sheet, Cross disolve",
				segueName: "pageSheetCrossDisolve"
			),
			TransitionsMenuItem(
				name: "Page sheet + Detect closing",
				segueName: "pageSheetWithDelegate"
			),
			TransitionsMenuItem(
				name: "Sheet, medium",
				segueName: "sheetMedium"
			),
			TransitionsMenuItem(
				name: "Sheet, resizable (medium -> large)",
				segueName: "sheetMediumAndLarge"
			)
		]
	}
}
