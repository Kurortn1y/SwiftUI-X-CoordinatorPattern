//
//  CoordinatorView.swift
//  SwiftUI X CoordinatorPattern
//
//  Created by Roman on 23.05.24.
//


import SwiftUI

struct CoordinatorView: View {
    
   @State var coordinator = Coordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.build(page: .main)
                .navigationDestination(for: Page.self) { page in
                    coordinator.build(page: page)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
                .fullScreenCover(item: $coordinator.cover) { cover in
                    coordinator.build(cover: cover)
                }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    CoordinatorView()
}
