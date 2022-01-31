//
//  TextFieldMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class TextFieldMenuViewController: MenuViewController<TextFieldMenuItem> {
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override var tableView: UITableView {
        return tableViewOutlet
    }
}

