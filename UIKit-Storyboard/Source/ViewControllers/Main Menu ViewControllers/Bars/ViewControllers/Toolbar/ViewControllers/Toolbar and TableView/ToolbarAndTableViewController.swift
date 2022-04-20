//
//  ToolbarAndTableViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

class ToolbarAndTableViewController: BaseToolbarViewController {
	
	// MARK: - Properties
	
	@IBOutlet weak var tableViewOutlet: UITableView!
	@IBOutlet weak var toolbar: UIToolbar!
	
	override var tableView: UITableView {
		return tableViewOutlet
	}
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		updateContentInsets()
	}
	
	func updateContentInsets() {
		let insets = UIEdgeInsets(
			top: 0.0,
			left: 0.0,
			bottom: toolbar.frame.size.height,
			right: 0.0
		)
		
		tableView.contentInset = insets
		tableView.scrollIndicatorInsets = insets
	}
	
	// MARK: - Actions
	
	@IBAction func actionButtonClicked() {
		print("Action button clicked")
	}
	
	@IBAction func refreshButtonClicked() {
		print("Refresh button clicked")
	}
	
	@IBAction func trashButtonClicked() {
		print("Trash button clicked")
	}
}
