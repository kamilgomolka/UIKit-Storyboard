//
//  MainMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/12/2021.
//

import UIKit

class MainMenuViewController: MenuViewController {
	
	@IBOutlet weak var tableViewOutlet: UITableView!
    
    override var tableView: UITableView {
        return tableViewOutlet
    }
	
	override func createItems() -> [MenuItem] {
		return MainMenuItems.all
	}
}
