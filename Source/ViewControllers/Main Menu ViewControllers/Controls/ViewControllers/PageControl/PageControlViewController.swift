//
//  PageControlViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class PageControlViewController: UIViewController {
	
	@IBOutlet weak var prominentPageControl: UIPageControl!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		prominentPageControl.backgroundStyle = .prominent
	}
	
	@IBAction func pageControlValueChanged(_ sender: UIPageControl) {
		print("pageControlValueChanged: page=\(sender.currentPage)")
	}
}

