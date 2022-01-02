//
//  ScrollViewWithNoContentLayoutGuidesViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import UIKit

class ScrollViewWithNoContentLayoutGuidesViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = LocalizedString(.scrollViewMenuItemWithNoContentLayoutGuides)
        
        label.text = ScrollViewMockData.longVerticalText
    }
}
