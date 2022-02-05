//
//  MainMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/12/2021.
//

import UIKit

class MainMenuViewController: MenuViewController<MainMenuItem> {
    
    // MARK: - Properties
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override var tableView: UITableView {
        return tableViewOutlet
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = LocalizedString(.mainMenuTitle)
    }
}
