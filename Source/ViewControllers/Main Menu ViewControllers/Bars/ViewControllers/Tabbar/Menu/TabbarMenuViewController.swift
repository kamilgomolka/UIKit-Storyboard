//
//  TabbarMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/04/2022.
//

import UIKit

class TabbarMenuViewController: MenuViewController {
	
	@IBOutlet weak var tableViewOutlet: UITableView!
	
	override var tableView: UITableView {
		return tableViewOutlet
	}
	
	override func createItems() -> [MenuItem] {
		return TabbarMenuItems.all
	}
}
