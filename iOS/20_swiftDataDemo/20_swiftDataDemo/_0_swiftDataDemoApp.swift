//
//  _0_swiftDataDemoApp.swift
//  20_swiftDataDemo
//
//  Created by Gonçalo Feliciano on 16/01/2025.
//

import SwiftUI
import SwiftData

@main
struct _0_swiftDataDemoApp: App {
    
    let container:ModelContainer = {
        
        let schema = Schema([Aluno.self])
        let container = try! ModelContainer(for: schema, configurations: [])
      
        return container
        
        
    }()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(container)
        }
    }
}
