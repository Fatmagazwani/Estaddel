//
//  ContentView.swift
//  MyEstadel
//
//  Created by Arwamohammed07 on 13/07/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var isTapped = false
    @State private var name: String = ""
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
