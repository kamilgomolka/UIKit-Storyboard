//
//  SimpleTabbarChild3.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/04/2022.
//

import UIKit

class SimpleTabbarChild3: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		print("SimpleTabbarChild3 - viewDidLoad")
	}
	
	deinit {
		print("SimpleTabbarChild3 - deinit")
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		print("SimpleTabbarChild3 - viewWillAppear")
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)
		
		print("SimpleTabbarChild3 - viewWillDisappear")
	}
}

