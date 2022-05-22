//
//  DatePickerMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 22/05/2022.
//

import Foundation

struct DatePickerMenuItem {
	
	static var all: [MenuItem] {
		return [
			MenuItem(
				name: "Wheels, Time",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "WheelsTime"
			),
			MenuItem(
				name: "Wheels, Date",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "WheelsDate"
			),
			MenuItem(
				name: "Wheels, Date and time",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "WheelsDateAndTime"
			),
			MenuItem(
				name: "Wheels, Count down",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "WheelsCountDown"
			),
			MenuItem(
				name: "Wheels, Count down (15 minutes)",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "WheelsCountDown15"
			),
			MenuItem(
				name: "Compact, Time",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "CompactTime"
			),
			MenuItem(
				name: "Compact, Date",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "CompactDate"
			),
			MenuItem(
				name: "Compact, Date and time",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "CompactDateAndTime"
			),
			MenuItem(
				name: "Inline, Time",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "InlineTime"
			),
			MenuItem(
				name: "Inline, Date",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "InlineDate"
			),
			MenuItem(
				name: "Inline, Date and time",
				storyboardName: "DatePicker",
				viewControllerIdentifier: "InlineDateAndTime"
			),
		]
	}
}
