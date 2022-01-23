//
//  TextFieldReturnKeyTypeViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 22/01/2022.
//

import UIKit

class TextFieldReturnKeyTypeViewController: BaseTextFieldViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    
    override var scrollViewToAdjst: UIScrollView? {
        return scrollView
    }
}

extension TextFieldReturnKeyTypeViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let index = stackView.arrangedSubviews.firstIndex(of: textField) else {
            textField.resignFirstResponder()
            return false
        }
        
        guard stackView.arrangedSubviews.count > index + 1 else {
            textField.resignFirstResponder()
            return false
        }
        
        if let nextTextField = stackView.arrangedSubviews[index + 1] as? UITextField {
            nextTextField.becomeFirstResponder()
        }
        
        return false
    }
}
