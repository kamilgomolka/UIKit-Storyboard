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
        
        title = LocalizedString(.scrollViewMenuItemVertical)
        
        label.text = ScrollViewMockData.longVerticalText
    }
}
