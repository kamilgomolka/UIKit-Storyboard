//
//  CellStyleBaseViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/02/2022.
//

import UIKit

class CellStyleBaseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableView: UITableView {
        fatalError("Please override 'var tableView' in subclass!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return CellStyleSection.allCases.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionType = CellStyleSection.allCases[section]
        return sectionType.sectionTitle
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sectionType = CellStyleSection.allCases[indexPath.section]
        return tableView.dequeueReusableCell(withIdentifier: sectionType.cellIdentifier, for: indexPath)
    }
}
