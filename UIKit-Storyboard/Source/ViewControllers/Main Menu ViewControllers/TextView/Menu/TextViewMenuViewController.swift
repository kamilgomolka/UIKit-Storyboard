//
//  TextViewMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 27/01/2022.
//

import UIKit

class TextViewMenuViewController: MenuViewController<TextViewMenuItem> {
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override var tableView: UITableView {
        return tableViewOutlet
    }
}
