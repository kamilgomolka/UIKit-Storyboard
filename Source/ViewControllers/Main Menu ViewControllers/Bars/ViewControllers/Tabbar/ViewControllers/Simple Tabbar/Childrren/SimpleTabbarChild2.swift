//
//  SimpleTabbarChild2.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/04/2022.
//

import UIKit

class SimpleTabbarChild2: UIViewController {
	
	// MARK: - Init
	
	override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
		print("SimpleTabbarChild2 - init(nibName:bundle:)")
		
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		print("SimpleTabbarChild2 - init(coder:)")
		
		super.init(coder: coder)
	}
	
	// MARK: - Lifecycle

	override func viewDidLoad() {
		super.viewDidLoad()
		
		print("SimpleTabbarChild2 - viewDidLoad")
	}
	
	deinit {
		print("SimpleTabbarChild2 - deinit")
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		print("SimpleTabbarChild2 - viewWillAppear")
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		
		print("SimpleTabbarChild2 - viewWillDisappear")
	}
}
