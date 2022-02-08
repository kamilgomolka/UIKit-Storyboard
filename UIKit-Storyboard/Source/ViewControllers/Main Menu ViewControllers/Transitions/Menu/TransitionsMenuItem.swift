//
//  TransitionsMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 08/02/2022.
//

import Foundation

enum TransitionsMenuItem: String, CaseIterable {
    case show
    case showDetail
    case fullScreenCoverVertical
    case fullScreenFlipHorizontal
    case fullScreenCrossDisolve
    
    // Notes - as for iOS 15.2:
    //
    // -> "Partial curl" can be only applied
    //     with full-screen presentation ViewControllers.
    //
    // -> "Partial curl" can only be dismissed without animation.
    //    Animated dismiss causes a visual bug.
    //    (trantision stops in half and app is not responsive).
    //
    case fullScreenPartialCurl
    
    case pageSheetCoverVertical
    case pageSheetFlipHorizontal
    case pageSheetCrossDisolve
    case pageSheetWithDelegate
    case sheetMedium
    case sheetMediumAndLarge
    
    var name: String {
        switch self {
        case .show:
            return "Show (e.g. Push)"
        case .showDetail:
            return "Show Detail (e.g. Replace)"
        case .fullScreenCoverVertical:
            return "Modal, Full screen, Cover vertical"
        case .fullScreenFlipHorizontal:
            return "Modal, Full screen, Flip horizontal"
        case .fullScreenCrossDisolve:
            return "Modal, Full screen, Cross disolve"
        case .fullScreenPartialCurl:
            return "Modal, Full screen, Partial curl"
        case .pageSheetCoverVertical:
            return "Page sheet, Cover vertical"
        case .pageSheetFlipHorizontal:
            return "Page sheet, Flip horizontal"
        case .pageSheetCrossDisolve:
            return "Page sheet, Cross disolve"
        case .pageSheetWithDelegate:
            return "Page sheet + Detect closing"
        case .sheetMedium:
            return "Sheet, medium"
        case .sheetMediumAndLarge:
            return "Sheet, resizable (medium -> large)"
        }
    }
    
    var segueName: String {
        return rawValue
    }
}
