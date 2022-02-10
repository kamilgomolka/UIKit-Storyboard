//
//  CollectionViewMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 10/02/2022.
//

import Foundation

enum CollectionViewMenuItem: MenuItemProtocol {
    case grid
    case sections
    case badge
    case paging
    
    var name: String {
        switch self {
        case .grid:
            return "Basic grid"
        case .sections:
            return "Sections with headers"
        case .badge:
            return "Badge icon"
        case .paging:
            return "Paging (Orthogonal scrolling)"
        }
    }
    
    var storyboardName: String {
        switch self {
        case .grid:
            return "CollectionViewGrid"
        case .sections:
            return "CollectionViewSections"
        case .badge:
            return "CollectionViewBadge"
        case .paging:
            return "CollectionViewPaging"
        }
    }
}
