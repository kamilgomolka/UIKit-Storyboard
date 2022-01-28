//
//  TableViewStyleMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import UIKit

class TableViewStyleMenuViewController: MenuViewController<TextFieldMenuItem> {
    
    @IBOutlet weak var tableViewOutlet: UITableView?
    
    override var tableView: UITableView? {
        return tableViewOutlet
    }
}
