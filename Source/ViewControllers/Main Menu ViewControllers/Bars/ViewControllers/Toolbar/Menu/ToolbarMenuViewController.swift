//
//  ToolbarMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

class ToolbarMenuViewController: MenuViewController {
	
	@IBOutlet weak var tableViewOutlet: UITableView!
	
	override var tableView: UITableView {
		return tableViewOutlet
	}
	
	override func createItems() -> [MenuItem] {
		return ToolbarMenuItems.all
	}
}
