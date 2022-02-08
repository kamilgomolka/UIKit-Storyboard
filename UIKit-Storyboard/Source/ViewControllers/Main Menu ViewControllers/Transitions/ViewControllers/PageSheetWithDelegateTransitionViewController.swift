//
//  PageSheetWithDelegateTransitionViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

class PageSheetWithDelegateTransitionViewController: UIViewController, UIAdaptivePresentationControllerDelegate {
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isModalInPresentation = true
        navigationController?.presentationController?.delegate = self
        
        let closeButton = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveAndClose))
        navigationItem.rightBarButtonItem = closeButton
    }
    
    // MARK: - Actions
    
    @objc func saveAndClose() {
        
        // Save changes here
        
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: UIAdaptivePresentationControllerDelegate
    
    public func presentationControllerDidAttemptToDismiss(_ presentationController: UIPresentationController) {
        let alert = UIAlertController(title: "You made some changes.",
                                      message: nil,
                                      preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(
            title: "Save",
            style: .default,
            handler: { [weak self] _ in
                self?.saveAndClose()
            }))
        
        alert.addAction(UIAlertAction(
            title: "Discard changes",
            style: .destructive,
            handler: { [weak self] _ in
                self?.dismiss(animated: true, completion: nil)
            }))
        
        alert.addAction(UIAlertAction(
            title: "Cancel",
            style: .cancel,
            handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
}
