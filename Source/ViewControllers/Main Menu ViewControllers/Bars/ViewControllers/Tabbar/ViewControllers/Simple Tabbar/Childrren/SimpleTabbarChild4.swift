//
//  SimpleTabbarChild4.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/04/2022.
//

import UIKit

class SimpleTabbarChild4: UIViewController {
	
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

