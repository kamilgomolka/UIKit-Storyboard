//
//  MenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import UIKit

class MenuViewController<MenuItemType: MenuItemProtocol>: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Properties
    
    let cellNibName = "MenuCell"
    
    var tableView: UITableView {
        fatalError("Please override 'var tableView' in subclass!")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: cellNibName)
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MenuItemType.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellNibName, for: indexPath)
        let allCasesArray = Array(MenuItemType.allCases)
        let menuItem = allCasesArray[indexPath.row]
        
        cell.textLabel?.text = menuItem.name
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let allCasesArray = Array(MenuItemType.allCases)
        let menuItem = allCasesArray[indexPath.row]
        
        guard let viewController = menuItem.instantiateViewController() else {
            return
        }
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}
