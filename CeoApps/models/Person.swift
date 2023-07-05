//
//  Person.swift
//  CeoApps
//
//  Created by Karan Doshi on 7/3/23.
//

import Foundation

struct Person: Identifiable, Codable {
    
    var id: String { name }
    
    let name: String
    let description: String
    let imageName: String
    let shortDescription: String
    let sections: [PersonSection]?
}

struct PersonSection: Identifiable, Codable {
    
    var id: String { name }
    
    let name: String
    var picturesImageName: [String]
    
}


extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.id == rhs.id
    }
}

extension Person {
    
    static var stubbed: [Person] {
        let url = Bundle.main.url(forResource: "ceo_list", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let people = try! JSONDecoder().decode([Person].self, from: data)
        return people
    }
    
    static var stubbedPeople: [Person] {
        []
    }
    
    
}
