//
//  TransitionsMenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

class TransitionsMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Properties
    
    let cellNibName = "MenuCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: cellNibName)
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TransitionsMenuItem.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellNibName, for: indexPath)
        let allCasesArray = Array(TransitionsMenuItem.allCases)
        let menuItem = allCasesArray[indexPath.row]
        
        cell.textLabel?.text = menuItem.name
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let allCasesArray = Array(TransitionsMenuItem.allCases)
        let menuItem = allCasesArray[indexPath.row]
        
        performSegue(withIdentifier: menuItem.segueName, sender: nil)
    }
}
