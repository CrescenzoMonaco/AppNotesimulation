//
//  AppNotesimulationApp.swift
//  AppNotesimulation
//
//  Created by Crescenzo Monaco on 21/11/23.
//

import SwiftUI
import SwiftData
@main
struct AppNotesimulationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            
                .modelContainer(for: Nota.self)
        }
    }
}
