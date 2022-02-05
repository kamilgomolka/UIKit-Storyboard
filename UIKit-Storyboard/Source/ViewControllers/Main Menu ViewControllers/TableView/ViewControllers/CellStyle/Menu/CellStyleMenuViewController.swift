//
//  CellStyleMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/02/2022.
//

import UIKit

class CellStyleMenuViewController: MenuViewController<CellStyleMenuItem> {
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override var tableView: UITableView {
        return tableViewOutlet
    }
}
