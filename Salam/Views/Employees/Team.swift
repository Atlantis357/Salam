//
//  Team.swift
//  Salam
//
//  Created by Abraham Alkhatib on 6/12/23.
//

import Foundation
import SwiftUI

class Team: ObservableObject {
    
    @Published var employees = [
        Employee(name: "Polo", phoneNumber: "1234567890"),
        Employee(name: "Nick", phoneNumber: "1212323434")
    ]

}

struct Employee : Identifiable {
    var name: String
    var phoneNumber: String
    var id = UUID()
    var hours = 0
}

extension Team {
    
    func indexFor(_ employee: Employee) ->  Double {
        if let index = employees.firstIndex(where: { $0.id == employee.id }) {
            return Double(index)
        }
        return 0.0
    }
}
