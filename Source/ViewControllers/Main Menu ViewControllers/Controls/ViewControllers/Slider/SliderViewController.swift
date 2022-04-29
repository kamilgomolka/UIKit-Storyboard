//
//  SliderViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class SliderViewController: UIViewController {
	
	// MARK: - Properties
		
	@IBOutlet weak var slider: UISlider!
	@IBOutlet weak var sliderValueLabel: UILabel!
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		updateSliderValueLabel()
	}
	
	// MARK: - Actions
	
	@IBAction func sliderValueChanged() {
		updateSliderValueLabel()
	}
	
	// MARK: - Functions
	
	func updateSliderValueLabel() {
		sliderValueLabel.text = String(Int(slider.value))
	}
}
