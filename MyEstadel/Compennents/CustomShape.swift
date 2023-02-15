//
//  CustomShape.swift
//  MyEstadel
//
//  Created by Fatma Gazwani on 24/07/1444 AH.
//

import SwiftUI

struct CustomShape: View {
    let iconName: String
    let iconText: String
    let iconColor: String


    var body: some View {
        
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(width: 66, height: 47)
                .cornerRadius(8)
                .shadow(color: Color(.lightGray), radius:3, x:0, y:2)
            VStack{
                Image(systemName: iconName)
                Text(iconText)
                    .font(.system(size: 12, weight: .regular))
                
            }
            .foregroundColor(Color(iconColor))

        }
    }
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape(iconName: "building.2", iconText: "Complex", iconColor: "Sage")
    }
}
