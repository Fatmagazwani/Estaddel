//
//  Register.swift
//  MyEstadel
//
//  Created by Arwamohammed07 on 17/07/1444 AH.
//

import SwiftUI

struct Register: View {
    
    @State private var name: String = ""
    @State private var mail: String = ""
    @State private var password: String = ""
    @State private var checked = false
    @State private var checked2 = false



    
    var body: some View {
        NavigationView{
            VStack{
                // MARK: - image system
                Image(systemName: "person.circle")
                    
                    .resizable()
                    .frame(width: 145, height: 145)
                // MARK: - title
                Text("Register")
                    .font(.title)
                // MARK: - Textfield 1
                CustomInputField(imageName: "person.circle",
                                 placeholderText: "Full Name",
                                 text: $name)
                
                // MARK: - Textfield 2
                CustomInputField(imageName: "envelope",
                                 placeholderText: "Email",
                                 text: $mail)
                
                // MARK: - Textfield 3
                passwordView()

                
                // MARK: - Remember
               
                HStack{
                    Toggle(isOn: $checked2) {
                        Text("Remember me?")
//                            .foregroundColor(Color("Mandarin"))
                    }
                    .toggleStyle(CheckboxStyle())
                    .padding(.horizontal)
                    Spacer()
                }
                // MARK: - Agree
                HStack{
                    Toggle(isOn: $checked) {
                        Text("Agree to our Privacy Policy")
                    }
                    .toggleStyle(CheckboxStyle())
                    .padding(.horizontal)
                    Spacer()
                }
                
                
                // MARK: - Register
                Button("Register") {
                   
                } 
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 358, height: 48)
                .background(Color("Sage"))
                .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                
                // MARK: - If Already have an account
                
                HStack{
                    Text("Already have an account ?")
                    Button("Login"){

                    }.foregroundColor(Color("Mandarin"))

                }
                // MARK: - Toolbar
                
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button("Back") {
                            
                        }
                    }
                }
            }
           .padding(.bottom)
            
           

        }
        
    }
}


struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}

struct CheckboxStyle: ToggleStyle {

    func makeBody(configuration: Self.Configuration) -> some View {

        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .blue : .gray)
                .font(.system(size: 20, weight: .regular, design: .default))
                configuration.label
        }
        .onTapGesture { configuration.isOn.toggle() }

    }
}
