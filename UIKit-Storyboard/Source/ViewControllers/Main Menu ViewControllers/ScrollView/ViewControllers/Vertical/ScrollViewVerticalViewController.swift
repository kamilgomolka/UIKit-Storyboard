//
//  ScrollViewVerticalViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import UIKit

class ScrollViewVerticalViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateLabelText()
    }
    
    func generateLabelText() {
        let ints = 1...100
        let strings = ints.map { "\($0)" }
        let multiline = strings.joined(separator: "\n")
        label.text = multiline
    }
}
