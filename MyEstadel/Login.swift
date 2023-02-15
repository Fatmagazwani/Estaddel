//
//  Login.swift
//  MyEstadel
//
//  Created by Arwamohammed07 on 17/07/1444 AH.
//

import SwiftUI

struct Login: View {
    @State private var mail: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationView{
            // MARK: - image system

            VStack{
                Image(systemName: "person.circle")
                    
                    .resizable()
                    .frame(width: 145, height: 145)
                // MARK: - title

                Text("Login")
                    .font(.title)
                // MARK: - Email

                CustomInputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $mail)
                
                passwordView()
                
                // MARK: - Forgot Password

                Button("Forgot Password?"){
                    
                } .foregroundColor(Color("Orange"))
                    .padding(.trailing, 200.0)
                
                
                // MARK: - Login Button
                NavigationLink (destination: Nav(), label: {
                  
                    Text("Register")
                        
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 358, height: 48)
                        .background(Color("Sage"))
                        .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    
                   
                })
                Button("Login") {
                }
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 358, height: 48)
                .background(Color("Sage"))
                .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                // MARK: - if you Don’t have an account

                HStack{
                    Text("Don’t have an account ?")

                    Button {

                    }  label: {
                        Text("Register")
                            .foregroundColor(Color("Mandarin"))
                    }
                    
                    

                }
                // MARK: - Toolbar

                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button("Back") {
                            
                        }
                    }
                }
            }.padding(.bottom)

        }
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
