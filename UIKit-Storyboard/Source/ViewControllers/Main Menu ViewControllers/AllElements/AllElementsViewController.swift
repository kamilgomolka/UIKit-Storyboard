//
//  AllElementsViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/01/2022.
//

import UIKit

class AllElementsViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var buttonContainer: UIView!
    @IBOutlet weak var switchContainer: UIView!
    @IBOutlet weak var stepperContainer: UIView!
    @IBOutlet weak var segmentedControlContainer: UIView!
    @IBOutlet weak var textFieldContainer: UIView!
    @IBOutlet weak var sliderContainer: UIView!
    @IBOutlet weak var activityIndicatorContainer: UIView!
    @IBOutlet weak var progressContainer: UIView!
    @IBOutlet weak var pageControlContainer: UIView!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperValueLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderValueLabel: UILabel!
    
    // MARK: - UIViewController Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCornerRadius()
        updateStepperValueLabel()
        updateSliderValueLabel()
    }
    
    // MARK: - IBActions
    
    @IBAction func stepperValueChanged() {
        updateStepperValueLabel()
    }
    
    @IBAction func sliderValueChanged() {
        updateSliderValueLabel()
    }
    
    // MARK: - Functions
    
    func setCornerRadius() {
        let roundedContainers = [
            buttonContainer,
            switchContainer,
            stepperContainer,
            segmentedControlContainer,
            textFieldContainer,
            sliderContainer,
            activityIndicatorContainer,
            progressContainer,
            pageControlContainer
        ]
        
        roundedContainers.forEach { view in
            view?.layer.cornerRadius = 8.0
        }
    }
    
    func updateStepperValueLabel() {
        stepperValueLabel.text = String(Int(stepper.value))
    }
    
    func updateSliderValueLabel() {
        sliderValueLabel.text = String(Int(slider.value))
    }
}
