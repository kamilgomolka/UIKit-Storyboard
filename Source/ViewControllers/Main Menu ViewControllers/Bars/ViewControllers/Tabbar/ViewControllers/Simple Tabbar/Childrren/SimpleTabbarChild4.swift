//
//  SimpleTabbarChild4.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/04/2022.
//

import UIKit

class SimpleTabbarChild4: UIViewController {
	
	// MARK: - Init
	
	override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
		print("SimpleTabbarChild4 - init(nibName:bundle:)")
		
		super.init(nibName: nil, bundle: nil)
	}
	
	required init?(coder: NSCoder) {
		print("SimpleTabbarChild4 - init(coder:)")
		
		super.init(coder: coder)
	}
	
	// MARK: - Lifecycle

	override func viewDidLoad() {
		super.viewDidLoad()
		
		print("SimpleTabbarChild4 - viewDidLoad")
	}
	
	deinit {
		print("SimpleTabbarChild4 - deinit")
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		print("SimpleTabbarChild4 - viewWillAppear")
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		
		print("SimpleTabbarChild4 - viewWillDisappear")
	}
}
