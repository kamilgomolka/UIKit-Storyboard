//
//  SheetMediumTransitionViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

class SheetMediumTransitionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let sheet = presentationController as? UISheetPresentationController {
            sheet.detents = [.medium()]
        }
    }
}
