//
//  NavigationBarButtonsViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

class NavigationBarButtonsViewController: BaseNavigationBarViewController {
	
	@IBOutlet weak var tableViewOutlet: UITableView!
	
	override var tableView: UITableView {
		return tableViewOutlet
	}
	
	// MARK: - Actions
	
	@IBAction func cancelButtonClicked() {
		print("Cancel button clicked")
	}
	
	@IBAction func doneButtonClicked() {
		print("Done button clicked")
	}
}
