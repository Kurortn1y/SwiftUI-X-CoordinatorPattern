//
//  CockView.swift
//  SwiftUI X CoordinatorPattern
//
//  Created by Roman on 23.05.24.
//

import SwiftUI

struct CockView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List{
            Button("Нажми 🐑") {
                coordinator.push(.sheep)
            }
            Button("POP") {
                coordinator.pop()
            }
        }
        .navigationTitle("PetuhView 🐔")
    }
}
