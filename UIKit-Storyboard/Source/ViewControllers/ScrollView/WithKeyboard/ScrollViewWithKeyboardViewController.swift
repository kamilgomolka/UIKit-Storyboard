//
//  ScrollViewWithKeyboardViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import UIKit

class ScrollViewWithKeyboardViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    
    var allTextFields: [UITextField] {
        return [
            textField1,
            textField2,
            textField3,
            textField4,
            textField5,
            textField6
        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = LocalizedString(.scrollViewMenuItemWithKeyboard)
        
        setupTextFields()
        addKeyboardHideGesture()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        addKeyboardObservers()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        removeObservers()
    }
    
    func setupTextFields() {
        for textField in allTextFields {
            textField.delegate = self
            textField.returnKeyType = .next
        }
        
        allTextFields.last?.returnKeyType = .done
    }
    
    // MARK: - Keyboard
    
    func addKeyboardHideGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        tapGesture.cancelsTouchesInView = false
        tapGesture.delegate = self
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    func addKeyboardObservers() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardDidShow(notification:)),
                                               name: UIResponder.keyboardDidShowNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide(notification:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillChangeFrame(notification:)),
                                               name: UIResponder.keyboardWillChangeFrameNotification,
                                               object: nil)
    }
    
    func removeObservers() {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func keyboardDidShow(notification: NSNotification) {
        adjustScrollview(keyboardVisible: true, notification: notification)
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        adjustScrollview(keyboardVisible: false, notification: notification)
    }
    
    @objc func keyboardWillChangeFrame(notification: NSNotification) {
        adjustScrollview(keyboardVisible: true, notification: notification)
    }
    
    func adjustScrollview(keyboardVisible: Bool, notification: NSNotification) {
        let keyboardHeight = keyboardVisible ? keyboardHeight(notification: notification) : 0.0
        let inset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardHeight, right: 0.0)
        scrollView.contentInset = inset
        scrollView.scrollIndicatorInsets = inset
    }
    
    func keyboardHeight(notification: NSNotification) -> CGFloat {
        guard let dict = notification.userInfo,
              let keyboardFrame = dict[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else {
                  return 0.0
              }
        
        return keyboardFrame.cgRectValue.height
    }
}

extension ScrollViewWithKeyboardViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let allTextFields = self.allTextFields
        
        guard let index = allTextFields.firstIndex(of: textField) else {
            textField.resignFirstResponder()
            return false
        }
        
        let nextIndex = index + 1
        
        guard allTextFields.count > nextIndex else {
            textField.resignFirstResponder()
            return false
        }
        
        let nextTextField = allTextFields[nextIndex]
        nextTextField.becomeFirstResponder()
        return false
    }
}

extension ScrollViewWithKeyboardViewController: UIGestureRecognizerDelegate {
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        if let view = touch.view, view is UIControl {
            return false
        } else {
            return true
        }
    }
}
