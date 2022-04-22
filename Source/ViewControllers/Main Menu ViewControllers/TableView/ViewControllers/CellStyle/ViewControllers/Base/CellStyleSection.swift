//
//  CellStyleSection.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 31/01/2022.
//

import Foundation

enum CellStyleSection: String, CaseIterable {
    case basic
    case rightDetail
    case leftDetail
    case subtitle
    
    var sectionTitle: String {
        switch self {
        case .basic:
            return "Basic"
        case .rightDetail:
            return "Right detail (Value1)"
        case .leftDetail:
            return "Left detail (Value2)"        
        case .subtitle:
            return "Subtitle"
        }
    }
    
    var cellIdentifier: String {
        return self.rawValue
    }
}
