//
//  SittingCell.swift
//  MyEstadel
//
//  Created by Arwamohammed07 on 13/07/1444 AH.
//

import SwiftUI

struct SittingCell: View {
    var title : String
    var imgName : String
    var clr: Color
    var clor: Color
    var body: some View {
        HStack{
            Image(systemName: imgName)
                .font(.largeTitle)
                .foregroundColor(clr)
            
            Text(title)
                .font(.title3)
                .padding(.leading, 10)
                .foregroundColor(clor)

        }    }
}

struct SittingCell_Previews: PreviewProvider {
    static var previews: some View {
        SittingCell(title: "Arwa", imgName: "sparks", clr: .purple , clor: .black)
    }
}
