//
//  SnakeView.swift
//  SwiftUI X CoordinatorPattern
//
//  Created by Roman on 23.05.24.
//

import SwiftUI

struct SnakeView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        List{
            Button("Назад") {
                coordinator.dismissCover()
            }
        }
        .navigationTitle("🐍")
    }
}
