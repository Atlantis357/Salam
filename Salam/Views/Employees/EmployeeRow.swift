//
//  EmployeeRow.swift
//  Salam
//
//  Created by Abraham Alkhatib on 6/12/23.
//

import Foundation
import SwiftUI

struct EmployeeRow: View {
    var employee : Employee
    
    var body: some View {
        HStack {
            VStack {
                Text(employee.name)
                    .font(.title)
                Text(employee.phoneNumber)
                    .font(.caption)
            }
            
            Spacer()
        }
        
        
    }
}

struct EmployeeRow_Previews: PreviewProvider {
   static var previews: some View {
        EmployeeRow(employee: Employee(name: "Flame-bird", phoneNumber:"000-111-2222"))
    }
}
