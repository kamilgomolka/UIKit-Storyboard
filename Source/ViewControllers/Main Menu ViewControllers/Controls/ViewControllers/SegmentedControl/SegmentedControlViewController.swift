//
//  SegmentedControlViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class SegmentedControlViewController: UIViewController {
	
	// MARK: - Properties
	
	@IBOutlet weak var momentarySegmentedControl: UISegmentedControl!
	@IBOutlet weak var customColorsSegmentedControl: UISegmentedControl!
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		///
		/// Fix bug causing first segment to be initially selected.
		///
		momentarySegmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
		
		customColorsSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
		customColorsSegmentedControl.setTitleTextAttributes([.foregroundColor: UIColor.darkGray], for: .selected)
	}
	
	// MARK: - Actions
	
	@IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
		print("segmentedControlValueChanged:\(sender.selectedSegmentIndex)")
	}
}
