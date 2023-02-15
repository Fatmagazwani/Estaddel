//
//  CustomInputField.swift
//  MyEstadel
//
//  Created by Fatma Gazwani on 24/07/1444 AH.
//

import SwiftUI

struct CustomInputField: View {
    let imageName: String
    let placeholderText: String
    @Binding var text: String

    
    var body: some View {
VStack{
    HStack{

        Image(systemName:imageName)

//                if isSecureField ?? false {
//                     SecureField(placeholderText, text: $text)
//
//                } else {
            TextField(placeholderText, text: $text)
//                }
    }
    .padding(.horizontal)
    .foregroundColor(Color("Sage"))
    .frame(width: 358, height: 50)
    .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(.gray, lineWidth: 1))
    .padding(.bottom, 8)

}
        
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imageName:"envelope",
                         placeholderText: "Email",
                         text: .constant(""))
    }
}
