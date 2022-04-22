//
//  CellAccessoryTypeItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 31/01/2022.
//

import Foundation

enum CellAccessoryTypeItem: String, CaseIterable {
    case disclosureIndicator
    case detailDisclorure
    case checkmark
    case detail
    
    var cellIdentifier: String {
        return self.rawValue
    }
}
