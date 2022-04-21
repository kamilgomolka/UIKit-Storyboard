//
//  SimpleTabbarChild2.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/04/2022.
//

import UIKit

class SimpleTabbarChild2: UIViewController {
	
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
