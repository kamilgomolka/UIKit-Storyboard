//
//  ControlsMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 30/04/2022.
//

import UIKit

class ControlsMenuViewController: MenuViewController {
	
	@IBOutlet weak var tableViewOutlet: UITableView!
	
	override var tableView: UITableView {
		return tableViewOutlet
	}
	
	override func createItems() -> [MenuItem] {
		return ControlsMenuItems.all
	}
}

