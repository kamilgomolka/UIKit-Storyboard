//
//  MenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 18/04/2022.
//

import UIKit

typealias MenuItemClickHandler = (UIViewController) -> Void
typealias ViewControllerProviderClosure = () -> UIViewController?

struct MenuItem {
	
	// MARK: - Properties
	
	let name: String
	let clickHandler: MenuItemClickHandler
	
	// MARK: - Init
	
	init(name: String, clickHandler: @escaping MenuItemClickHandler) {
		self.name = name
		self.clickHandler = clickHandler
	}
	
	init(name: String, storyboardName: String, viewControllerIdentifier: String? = nil) {
		self.name = name
		
		clickHandler = { parentViewController in
			guard let viewController = UIViewController.newInstance(
				storyboardName: storyboardName,
				viewControllerIdentifier: viewControllerIdentifier
			) else {
				return
			}
			
			viewController.title = name
			parentViewController.navigationController?.pushViewController(viewController, animated: true)
		}
	}
}
