//
//  LabelMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class LabelMenuViewController: MenuViewController {
	
	@IBOutlet weak var tableViewOutlet: UITableView!
	
	override var tableView: UITableView {
		return tableViewOutlet
	}
	
	override func createItems() -> [MenuItem] {
		return LabelMenuItems.all
	}
}
