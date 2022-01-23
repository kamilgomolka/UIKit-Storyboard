//
//  TextFieldClearButtonViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 22/01/2022.
//

import UIKit

class TextFieldClearButtonViewController: BaseTextFieldViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override var scrollViewToAdjst: UIScrollView? {
        return scrollView
    }
}

extension TextFieldClearButtonViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
