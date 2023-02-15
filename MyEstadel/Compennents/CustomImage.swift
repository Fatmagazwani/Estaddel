//
//  CustomImage.swift
//  MyEstadel
//
//  Created by Fatma Gazwani on 24/07/1444 AH.
//

import SwiftUI

struct CustomImage: View {
    let imageNo: String

    var body: some View {
        Image(imageNo)
            .resizable()
            .frame(width: 80, height: 80)
            .clipShape(Rectangle())
            .cornerRadius(8)    }
}

struct CustomImage_Previews: PreviewProvider {
    static var previews: some View {
        CustomImage(imageNo: "0")
    }
}
