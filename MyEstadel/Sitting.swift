//
//  Sitting.swift
//  MyEstadel
//
//  Created by Arwamohammed07 on 13/07/1444 AH.
//

import SwiftUI

struct Sitting: View {
    @State private var isFullScreen = false

    var body: some View {
        NavigationView{
            List{
                Section{
                    // MARK: -
                    NavigationLink (destination: Privacy(), label: {
                      
                            SittingCell(title: "Privacy and Security", imgName: "shield.righthalf.filled", clr: Color("Sage") , clor: .black)
                        
                       
                    })
                    // MARK: -
                    NavigationLink (destination: Privacy(), label: {
                        SittingCell(title: "Contact us", imgName: "envelope", clr: Color("Sage") , clor: .black)
                    })
                    // MARK: -
                    
                    NavigationLink (destination: Privacy(), label: {
                        SittingCell(title: "Log out", imgName: "arrow.left.circle", clr: Color("Sage") , clor: .black)
                    })
                    // MARK: -
                    
                    NavigationLink (destination: Privacy(), label: {
                            SittingCell(title: "Delete account", imgName: "minus.circle", clr: Color("Sage") , clor: .red)
                          
                    })
                    // MARK: - 

            }
            .navigationTitle("Setting")

        }
    }
    }
}

struct Sitting_Previews: PreviewProvider {
    static var previews: some View {
        Sitting()
    }
}
