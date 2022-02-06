//
//  TextFieldOtherViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 22/01/2022.
//

import UIKit

class TextFieldOtherViewController: BaseTextFieldViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    
    override var scrollViewToAdjst: UIScrollView? {
        return scrollView
    }
    
    override var mainStackView: UIStackView? {
        return stackView
    }
}
