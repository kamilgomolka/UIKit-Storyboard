//
//  SwitchViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 29/04/2022.
//

import UIKit

class SwitchViewController: UIViewController {
	
	// MARK: - Actions
	
	@IBAction func switchValueChanged(_ sender: UISwitch) {
		print("switchValueChanged. newValue=\(sender.isOn)")
	}
}
