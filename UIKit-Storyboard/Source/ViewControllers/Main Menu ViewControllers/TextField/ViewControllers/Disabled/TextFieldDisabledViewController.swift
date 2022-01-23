//
//  TextFieldDisabledViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 22/01/2022.
//

import UIKit

class TextFieldDisabledViewController: BaseTextFieldViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override var scrollViewToAdjst: UIScrollView? {
        return scrollView
    }
}
