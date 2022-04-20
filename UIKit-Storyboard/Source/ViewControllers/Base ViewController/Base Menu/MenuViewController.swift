//
//  MenuViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - Properties
    
    let cellNibName = "MenuCell"
	var items: [MenuItem] = []
	
	var tableView: UITableView {
		fatalError("Please override 'var tableView' in subclass!")
	}
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
		items = createItems()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: cellNibName)
    }
	
	// MARK: - Create items
	
	func createItems() -> [MenuItem] {
		fatalError("Please override 'func createItems()' in subclass!")
	}
    
	// MARK: - UITableViewDataSource
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return items.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: cellNibName, for: indexPath)
		let item = items[indexPath.row]
		cell.textLabel?.text = item.name
		return cell
	}
	
	// MARK: - UITableViewDelegate
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		
		let item = items[indexPath.row]
		item.clickHandler(self)
	}
}
