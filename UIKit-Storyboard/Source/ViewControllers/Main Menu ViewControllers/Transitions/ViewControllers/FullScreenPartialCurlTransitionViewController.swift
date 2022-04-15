//
//  FullScreenPartialCurlTransitionViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

/// Notes - as for iOS 15.2:
///
/// -> "Partial curl" can be only applied
///     with full-screen presentation ViewControllers.
///
/// -> "Partial curl" can only be dismissed without animation.
///    Animated dismiss causes a visual bug.
///    (trantision stops in half and app is not responsive).
///
class FullScreenPartialCurlTransitionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let closeButton = UIBarButtonItem(title: "Close", style: .done, target: self, action: #selector(close))
        navigationItem.rightBarButtonItem = closeButton
    }
    
    @objc func close() {
        dismiss(animated: false, completion: nil)
    }
}
