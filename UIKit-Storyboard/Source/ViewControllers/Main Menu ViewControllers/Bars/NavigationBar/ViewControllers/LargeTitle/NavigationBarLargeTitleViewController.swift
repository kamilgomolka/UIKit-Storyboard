//
//  NavigationBarLargeTitleViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

class NavigationBarLargeTitleViewController: BaseNavigationBarViewController {
	
	@IBOutlet weak var tableViewOutlet: UITableView!
	
	override var tableView: UITableView {
		return tableViewOutlet
	}
}

