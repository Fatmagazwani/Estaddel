//
//  CustomTitle.swift
//  MyEstadel
//
//  Created by Fatma Gazwani on 24/07/1444 AH.
//

import SwiftUI

struct CustomTitle: View {
    let title: String

    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.system(size: 20, weight: .bold))
                .padding(.bottom)

        }
        
    }
}

struct CustomTitle_Previews: PreviewProvider {
    static var previews: some View {
        CustomTitle(title: "Account Information")
    }
}
