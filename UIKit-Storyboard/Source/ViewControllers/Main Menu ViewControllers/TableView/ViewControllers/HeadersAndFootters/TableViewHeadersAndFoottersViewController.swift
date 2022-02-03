//
//  TableViewHeadersAndFoottersViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/02/2022.
//

import UIKit

class TableViewHeadersAndFoottersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let cellNibName = "SimpleTableViewCell"
    let sectionHeaderNibName = "TableViewSectionHeaderView"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: cellNibName)
        tableView.register(UINib(nibName: sectionHeaderNibName, bundle: nil),
                           forHeaderFooterViewReuseIdentifier: sectionHeaderNibName)
        tableView.tableHeaderView = TableViewHeaderFooterView.newHeaderView()
        tableView.tableFooterView = TableViewHeaderFooterView.newFooterView()
        tableView.sectionHeaderHeight = UITableView.automaticDimension
        tableView.estimatedSectionHeaderHeight = 52.5
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: sectionHeaderNibName)
                as? TableViewSectionHeaderView else {
            return nil
        }
        
        headerView.embededContentView.backgroundColor = section % 2 == 0
            ? .systemGray3
            : .systemGray5
        
        headerView.titleLabel.text = "Section header [\(section)]"
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellNibName, for: indexPath)
        
        cell.textLabel?.text = "Cell [\(indexPath.section), \(indexPath.row)]"
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
