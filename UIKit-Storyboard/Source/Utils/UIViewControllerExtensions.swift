//
//  UIViewControllerExtensions.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/12/2021.
//

import UIKit

extension UIViewController {
    
    static func newInstance(storyboardName: String, viewControllerIdentifier: String? = nil) -> UIViewController? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        
        if let viewControllerIdentifier = viewControllerIdentifier {
            return storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier)
        } else {
            return storyboard.instantiateInitialViewController()
        }
    }    
}
