//
//  Nav.swift
//  MyEstadel
//
//  Created by Arwamohammed07 on 13/07/1444 AH.
//

import SwiftUI

struct Nav: View {
    var body: some View {
        NavigationView {
            
            NavigationLink(destination: Sitting()) {
                Text("School information")
                    .padding()
                    .navigationTitle("Hi")
                    .toolbar{
                        ToolbarItemGroup(placement: .navigationBarLeading) {
                            Button("Back") {
                              
                            }
                        }
                    }
            }
        }
    }
}

struct Nav_Previews: PreviewProvider {
    static var previews: some View {
        Nav()
    }
}
