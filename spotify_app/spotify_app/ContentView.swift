//
//  ContentView.swift
//  spotify_app
//
//  Created by Kaan on 5.07.2023.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: spotify_appDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(spotify_appDocument()))
    }
}
