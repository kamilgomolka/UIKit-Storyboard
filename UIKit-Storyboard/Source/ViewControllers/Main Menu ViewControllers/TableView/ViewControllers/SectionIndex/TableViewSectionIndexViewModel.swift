//
//  TableViewSectionIndexViewModel.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/02/2022.
//

import Foundation

class TableViewSectionIndexViewModel {
    
    // MARK: - Properties
    
    var letters: [String] = []
    var sections: [String: [Person]] = [:]
    
    private var persons: [Person] = []
    
    // MARK: - Functions
    
    func loadData() {
        loadPersonsFromJsonFile()
        createSections()
    }
    
    private func loadPersonsFromJsonFile() {
        guard let path = Bundle.main.path(forResource: "personData", ofType: "json") else {
            return
        }
        
        let url = URL(fileURLWithPath: path)
        
        guard let data = try? Data(contentsOf: url),
              let array = try? JSONDecoder().decode([Person].self, from: data) else {
                  return
              }
        
        persons = array
    }
    
    private func createSections() {
        letters = []
        sections = [:]
        
        persons.sort(by: {
            ( $0.fullNameLowercased ?? "" ) < ( $1.fullNameLowercased ?? "" )
        })
        
        for person in persons {
            let currentLetter = person.fullName?.first?.uppercased() ?? "#"
            
            if letters.last == nil || letters.last != currentLetter {
                letters.append(currentLetter)
                sections[currentLetter] = []
            }
            
            sections[currentLetter]?.append(person)
        }
    }
}
