//
//  CustomTextView.swift
//  MyEstadel
//
//  Created by Fatma Gazwani on 24/07/1444 AH.
//

import SwiftUI

struct CustomTextView: View {
    let iconName: String
    let text: String
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(systemName: iconName)
                    .font(.system(size: 25, weight: .regular))
                    .foregroundColor(Color("Sage"))

                Text(text)
                    .font(.system(size: 17, weight: .regular)).foregroundColor(.black)
                
            }
        }
    }
}

struct CustomTextView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextView(iconName: "envelope", text: "ABC@info.edu.sa")
    }
}
