//
//  spotify_appApp.swift
//  spotify_app
//
//  Created by Kaan on 5.07.2023.
//

import SwiftUI

@main
struct spotify_appApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: spotify_appDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
