//
//  StepperViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class StepperViewController: UIViewController {
	
	// MARK: - Properties
	
	@IBOutlet weak var stepper: UIStepper!
	@IBOutlet weak var stepperValueLabel: UILabel!
	
	// MARK: - Lifecycle
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		updateStepperValueLabel()
	}
	
	// MARK: - Actions
	
	@IBAction func stepperValueChanged() {
		updateStepperValueLabel()
	}
	
	// MARK: - Functions
	
	func updateStepperValueLabel() {
		stepperValueLabel.text = String(Int(stepper.value))
	}
}
