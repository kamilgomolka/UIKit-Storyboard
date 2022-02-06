//
//  BaseTextFieldViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/02/2022.
//

import UIKit

class BaseTextFieldViewController: BaseViewController {
    
    var mainStackView: UIStackView? {
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainStackView?.arrangedSubviews.forEach { view in
            if let textField = view as? UITextField {
                textField.delegate = self
            }
        }
    }
}

extension BaseTextFieldViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let stackView = mainStackView,
              let index = stackView.arrangedSubviews.firstIndex(of: textField),
              stackView.arrangedSubviews.count > index + 1 else {
            textField.resignFirstResponder()
            return false
        }
        
        if let nextTextField = stackView.arrangedSubviews[index + 1] as? UITextField {
            nextTextField.becomeFirstResponder()
        }
        
        return false
    }
}
