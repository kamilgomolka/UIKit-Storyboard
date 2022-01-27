//
//  TextViewNonEditableNonSelectableViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 27/01/2022.
//

import UIKit

class TextViewNonEditableNonSelectableViewController: BaseViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override var scrollViewToAdjst: UIScrollView? {
        return textView
    }
}

