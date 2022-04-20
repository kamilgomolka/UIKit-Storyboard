//
//  CollectionViewMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 10/02/2022.
//

import UIKit

class CollectionViewMenuViewController: MenuViewController {
	
	@IBOutlet weak var tableViewOutlet: UITableView!
	
	override var tableView: UITableView {
		return tableViewOutlet
	}
	
	override func createItems() -> [MenuItem] {
		return CollectionViewMenuItems.all
	}
}
