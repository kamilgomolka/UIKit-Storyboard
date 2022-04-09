//
//  BaseViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 27/01/2022.
//

import UIKit

class BaseViewController: UIViewController {
	
	// MARK: - Properties
	
	var scrollViewToAdjst: UIScrollView? {
		return nil
	}
	
	var keyboardHelper: KeyboardHelper? = nil
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		createKeyboardHelperIfNeeded()
		keyboardHelper?.viewDidLoad()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		keyboardHelper?.viewWillAppear(animated)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		
		keyboardHelper?.viewWillAppear(animated)
	}
	
	// MARK: - Private functions
	
	private func createKeyboardHelperIfNeeded() {
		if let scrollViewToAdjst = scrollViewToAdjst {
			keyboardHelper = KeyboardHelper(viewController: self, scrollView: scrollViewToAdjst)
		}
	}
}
