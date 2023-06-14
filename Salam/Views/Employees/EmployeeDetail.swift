//
//  EmployeeDetail.swift
//  Salam
//
//  Created by Abraham Alkhatib on 6/12/23.
//

import Foundation
import SwiftUI

struct EmployeeDetail: View {
    let employee : Employee
    
    var body : some View {
        Text(employee.name)
    }
    
}
