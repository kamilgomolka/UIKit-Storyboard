//
//  BaseTextFieldViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 23/01/2022.
//

import UIKit

class BaseTextFieldViewController: UIViewController {
    
    var scrollViewToAdjst: UIScrollView? {
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        scrollViewToAdjst?.contentInset = inset
        scrollViewToAdjst?.scrollIndicatorInsets = inset
    }
    
    func keyboardHeight(notification: NSNotification) -> CGFloat {
        guard let dict = notification.userInfo,
              let keyboardFrame = dict[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else {
                  return 0.0
              }
        
        return keyboardFrame.cgRectValue.height
    }
}

extension BaseTextFieldViewController: UIGestureRecognizerDelegate {
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        if let view = touch.view, view is UIControl {
            return false
        } else {
            return true
        }
    }
}

