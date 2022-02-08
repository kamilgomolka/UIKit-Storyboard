//
//  FullScreenPartialCurlTransitionViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import UIKit

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
