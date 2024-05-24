//
//  CatView.swift
//  SwiftUI X CoordinatorPattern
//
//  Created by Roman on 23.05.24.
//

import SwiftUI

struct CatView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List{
            Button("Назад") {
                coordinator.dismissSheet()
            }
        }
        .navigationTitle("CatView 🐈")
    }
}
