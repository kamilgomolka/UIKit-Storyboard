//
//  TextFieldClearButtonViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 22/01/2022.
//

import UIKit

class TextFieldClearButtonViewController: BaseViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    
    override var scrollViewToAdjst: UIScrollView? {
        return scrollView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for view in stackView.arrangedSubviews {
            if let textField = view as? UITextField {
                textField.delegate = self
            }
        }
    }
}

extension TextFieldClearButtonViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
