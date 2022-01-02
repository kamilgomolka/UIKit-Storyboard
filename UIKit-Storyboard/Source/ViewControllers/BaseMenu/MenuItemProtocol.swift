//
//  MenuItemProtocol.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import Foundation
import UIKit

protocol MenuItemProtocol: CaseIterable {
    var name: String { get }
    var storyboardName: String { get }
}
