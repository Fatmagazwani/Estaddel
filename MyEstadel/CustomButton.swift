//
//  CustomButton.swift
//  MyEstadel
//
//  Created by Fatma Gazwani on 24/07/1444 AH.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        Button("Register") {
           
        }
        .font(.headline)
        .foregroundColor(.white)
        .frame(width: 358, height: 48)
        .background(Color("Green"))
        .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}
