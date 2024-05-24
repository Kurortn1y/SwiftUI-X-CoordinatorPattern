//
//  Coordinator.swift
//  SwiftUI X CoordinatorPattern
//
//  Created by Roman on 23.05.24.
//

import SwiftUI
import Observation

//Test
enum Page: String, Identifiable {
    case main, cock, sheep
    
    var id: String {
        self.rawValue
    }
}

enum Sheet: String, Identifiable {
    case cat
    
    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case snake
    
    var id: String {
        self.rawValue
    }
}

@Observable class Coordinator: ObservableObject {
    
    var path = NavigationPath()
    var sheet: Sheet?
    var cover: FullScreenCover?
    
    func push(_ page: Page) {
        path.append(page)
    }
    func present(_ sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(_ cover: FullScreenCover) {
        self.cover = cover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissCover() {
        self.cover = nil
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .main:
            MainView()
        case .cock:
            CockView()
        case .sheep:
            SheepView()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .cat:
            NavigationStack{
                CatView()
            }
        }
    }
    
    @ViewBuilder
    func build(cover: FullScreenCover) -> some  View {
        switch cover {
        case .snake:
            NavigationStack {
                SnakeView()
            }
        }
    }
    
}
