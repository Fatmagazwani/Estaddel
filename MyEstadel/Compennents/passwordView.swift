//
//  Passward.swift
//  MyEstadel
//
//  Created by Fatma Gazwani on 24/07/1444 AH.
//

import SwiftUI

struct passwordView: View {
    @State private var password: String = ""
    @State private var isTapped: Bool = false
    @State private var isPasswordError: Bool = false
    @State private var isSpecialCharsError: Bool = false
    @State private var isCapitalLettersError: Bool = false
    
    var body: some View {
        VStack {
               HStack {
                   Image(systemName: "key")
                   SecureField("Password", text: $password, onCommit: {
                       validatePassword()
                   })
                   .onTapGesture {
                       isTapped = true
                   }
                   .autocapitalization(.none)
               }
               .padding(.horizontal)
               .foregroundColor(Color("Sage"))
               .frame(width: 358, height: 50)
               .overlay(
                   RoundedRectangle(cornerRadius: 10)
                       .stroke(isTapped ? (isPasswordError || isSpecialCharsError || isCapitalLettersError ? Color.red : Color.gray) : Color.gray, lineWidth: 1)
                       .overlay(isTapped && (isPasswordError || isSpecialCharsError || isCapitalLettersError) ?
                                HStack {
                                    Spacer()
                                    Image(systemName: "exclamationmark.triangle")
                                        .foregroundColor(.red)
                                        .offset(x: -20, y: 15)
                                } : nil, alignment: .topTrailing)
               )
               .padding(.bottom, 8)

               if isPasswordError || isSpecialCharsError || isCapitalLettersError {
                   Text("""
                       Password must be between 8 to 16 characters
                       Password must contain at least one special character
                       Password must contain one capital letter
                   """)
                       .foregroundColor(.red)
                       .font(.caption2)
                       .transition(.move(edge: .bottom))
               }
           }
       }

       private func validatePassword() {
           if password.count < 8 || password.count > 16 {
               isPasswordError = true
           } else {
               isPasswordError = false
           }

           let specialChars = CharacterSet(charactersIn: "!@#$%^&*()_-+={}[]|:;<>,.?/~")
           if password.rangeOfCharacter(from: specialChars) == nil {
               isSpecialCharsError = true
           } else {
               isSpecialCharsError = false
           }

           let capitalLetters = CharacterSet.uppercaseLetters
           if password.rangeOfCharacter(from: capitalLetters) == nil {
               isCapitalLettersError = true
           } else {
               isCapitalLettersError = false
           }
       }
   }





     
struct passwordView_Previews: PreviewProvider {
    static var previews: some View {
        passwordView()
    }
}
