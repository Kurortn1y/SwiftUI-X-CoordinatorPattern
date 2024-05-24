//
//  MainView.swift
//  SwiftUI X CoordinatorPattern
//
//  Created by Roman on 23.05.24.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List{
            Button("Нажми 🐔") {
                coordinator.push(.cock)
            }
            Button("Покажи 🐈") {
                coordinator.present(.cat)
            }
            Button("Покажи 🐍") {
                coordinator.present(.snake)
            }
        }
        .navigationTitle("🧶")
    }
}
