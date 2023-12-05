//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Ricardo de Agostini Neto on 04/12/23.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
