//
//  ContentView.swift
//  Salam
//
//  Created by Abraham Alkhatib on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    let minDragDistance: CGFloat = 50
    let numTabs = 3
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            HomeTab()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
                .highPriorityGesture(DragGesture().onEnded({
                    self.handleSwipe(translation: $0.translation.width)
                    }))
            
            EmployeeTab()
                .tabItem {
                    Label("Employee", systemImage: "list.dash")
                }
                .tag(1)
                .highPriorityGesture(DragGesture().onEnded({
                    self.handleSwipe(translation: $0.translation.width)
                    }))
            
            InsightsTab()
                .tabItem {
                    Label("Insights", systemImage: "chart.bar.xaxis")
                }
                .tag(2)
                .navigationBarHidden(false)
                .highPriorityGesture(DragGesture().onEnded({
                    self.handleSwipe(translation: $0.translation.width)
                    }))
        }
        
    }
    
    private func handleSwipe(translation: CGFloat) {
        if translation > minDragDistance && selectedTab > 0 {
            selectedTab -= 1
        } else if translation < -minDragDistance && selectedTab < numTabs - 1 {
            selectedTab += 1
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
