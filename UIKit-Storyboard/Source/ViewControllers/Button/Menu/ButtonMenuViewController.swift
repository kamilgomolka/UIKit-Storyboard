//
//  ButtonMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class ButtonMenuViewController: MenuViewController<ButtonMenuItem> {
    
    @IBOutlet weak var tableViewOutlet: UITableView?
    
    override var tableView: UITableView? {
        return tableViewOutlet
    }
}

