//
//  DatePickerMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 22/05/2022.
//

import UIKit

class DatePickerMenuViewController: MenuViewController {
	
	@IBOutlet weak var tableViewOutlet: UITableView!
	
	override var tableView: UITableView {
		return tableViewOutlet
	}
	
	override func createItems() -> [MenuItem] {
		return DatePickerMenuItem.all
	}
}
