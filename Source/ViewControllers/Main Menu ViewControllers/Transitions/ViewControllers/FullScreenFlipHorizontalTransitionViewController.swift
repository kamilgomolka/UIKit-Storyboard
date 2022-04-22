//
//  FullScreenFlipHorizontalTransitionViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

class FullScreenFlipHorizontalTransitionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let closeButton = UIBarButtonItem(title: "Close", style: .done, target: self, action: #selector(close))
        navigationItem.rightBarButtonItem = closeButton
    }
    
    @objc func close() {
        dismiss(animated: true, completion: nil)
    }
}
