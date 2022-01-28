//
//  MenuItemProtocol.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import Foundation
import UIKit

protocol MenuItemProtocol: CaseIterable {
    var name: String { get }
    var storyboardName: String { get }
    var viewControllerIdentifier: String? { get }
}

extension MenuItemProtocol {
    var viewControllerIdentifier: String? {
        return nil
    }
    
    func instantiateViewController() -> UIViewController? {
        let viewController = UIViewController.newInstance(storyboardName: storyboardName,
                                                          viewControllerIdentifier: viewControllerIdentifier)
        
        viewController?.title = name
        
        return viewController
    }
}
