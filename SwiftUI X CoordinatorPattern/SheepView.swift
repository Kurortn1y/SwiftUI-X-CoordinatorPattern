//
//  SheepView.swift
//  SwiftUI X CoordinatorPattern
//
//  Created by Roman on 23.05.24.
//

import SwiftUI

struct SheepView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List{
            Button("Назад") {
                coordinator.pop()
            }
            Button("Назад на главную") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("SheepView 🐑")
    }
}
