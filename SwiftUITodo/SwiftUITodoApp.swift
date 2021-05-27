//
//  SwiftUITodoApp.swift
//  SwiftUITodo
//
//  Created by 遠藤聖也 on 2021/05/27.
//

import SwiftUI

@main
struct SwiftUITodoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
