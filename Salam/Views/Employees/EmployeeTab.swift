//
//  EmployeeTab.swift
//  Salam
//
//  Created by Abraham Alkhatib on 6/12/23.
//

import Foundation
import SwiftUI
import RealmSwift

struct EmployeeTab: View {
    @StateObject var team = Team()
    
    var body : some View {
        NavigationStack {
           TeamView()
               .navigationTitle("Team members!")
               .environmentObject(team)
        }
    }
}


struct EmployeeTab_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeTab()
    }
}
