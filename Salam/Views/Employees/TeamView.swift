//
//  TeamView.swift
//  Salam
//
//  Created by Abraham Alkhatib on 6/12/23.
//

import Foundation
import SwiftUI

struct TeamView: View {
    @EnvironmentObject var team : Team
    
    var body: some View {
        List {
            ForEach(team.employees) { member in
                NavigationLink {
                    EmployeeDetail(employee: member)
                        .navigationTitle(member.name)
                } label : {
                    EmployeeRow(employee: member)
                }
            }.onDelete { idx in
                team.employees.remove(atOffsets: idx)
            }
        }.toolbar {
            ToolbarItem {
                NavigationLink("New Employee") {
                    EmployeeEditor()
                        .navigationTitle("Add Em!")
                }
            }
        }
    }
    
    
}
