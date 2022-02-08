//
//  SheetResizableTransitionViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

class SheetResizableTransitionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let sheet = presentationController as? UISheetPresentationController {
            sheet.detents = [.medium(), .large()]
        }
    }
}
