//
//  CollectionBadgeView.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 10/02/2022.
//

import UIKit

class CollectionBadgeView: UICollectionReusableView {
    
    // MARK: - Properties
    
    static let nibName = "CollectionBadgeView"
    
    @IBOutlet weak var label: UILabel!
    
    override var frame: CGRect {
        didSet {
            updateRadius()
        }
    }
    
    override var bounds: CGRect {
        didSet {
            updateRadius()
        }
    }
    
    // MARK: - Functions
    
    func updateRadius() {
        let radius = bounds.width / 2.0
        layer.cornerRadius = radius
    }
    
    func updateView(number: Int) {
        isHidden = number == 0
        
        label.text = "\(number)"
    }
}
