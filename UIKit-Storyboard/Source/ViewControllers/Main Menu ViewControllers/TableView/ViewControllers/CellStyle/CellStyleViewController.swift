//
//  CellStyleViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import UIKit

enum CellStyleSection: String, CaseIterable {
    case basic
    case leftDetail
    case rightDetail
    case subtitle
    case basicBigFont
    case leftDetailBigFont
    case rightDetailBigFont
    case subtitleBigFont
    case basicLongText
    case leftDetailLongText
    case rightDetailLongText
    case subtitleLongText
    
    var sectionTitle: String {
        switch self {
        case .basic:
            return "Basic"
        case .leftDetail:
            return "Left detail"
        case .rightDetail:
            return "Right detail"
        case .subtitle:
            return "Subtitle"
        case .basicBigFont:
            return "Basic (big font)"
        case .leftDetailBigFont:
            return "Left detail (big font)"
        case .rightDetailBigFont:
            return "Right detail (big font)"
        case .subtitleBigFont:
            return "Subtitle (big font)"
        case .basicLongText:
            return "Basic (long text)"
        case .leftDetailLongText:
            return "Left detail (long text)"
        case .rightDetailLongText:
            return "Right detail (long text)"
        case .subtitleLongText:
            return "Subtitle (long text)"
        }
    }
    
    var cellIdentifier: String {
        return self.rawValue
    }
}

class CellStyleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
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
