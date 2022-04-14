//
//  MockDataLoader.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 14/04/2022.
//

import Foundation

class MockDataLoader {
	
	// MARK: - Singleton
	
	static let shared = MockDataLoader()
	
	// MARK: - Getting mock data
		
	func persons() -> [Person] {
		guard let path = Bundle.main.path(forResource: "personData", ofType: "json") else {
			return []
		}
		
		let url = URL(fileURLWithPath: path)
		
		guard let data = try? Data(contentsOf: url),
			  let array = try? JSONDecoder().decode([Person].self, from: data) else {
				  return []
			  }
		
		return array
	}	
}

