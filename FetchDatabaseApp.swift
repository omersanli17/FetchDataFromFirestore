//
//  FetchDatabaseApp.swift
//  FetchDatabase
//
//  Created by omer sanli on 29.12.2021.
//

import SwiftUI
import Firebase

@main
struct FetchDatabaseApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
