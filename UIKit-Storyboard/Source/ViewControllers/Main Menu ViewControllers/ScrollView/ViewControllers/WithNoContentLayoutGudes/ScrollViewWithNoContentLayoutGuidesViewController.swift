//
//  ScrollViewWithNoContentLayoutGuidesViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import UIKit

class ScrollViewWithNoContentLayoutGuidesViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var label: UILabel!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateLabelText()
    }
    
    // MARK: Functions
    
    func generateLabelText() {
        let ints = 1...100
        let strings = ints.map { "\($0)" }
        let multiline = strings.joined(separator: "\n")
        label.text = multiline
    }
}
