//
//  SchoolF.swift
//  MyEstadel
//
//  Created by Arwamohammed07 on 15/07/1444 AH.
//

import SwiftUI

struct Schoolphoto: View {
    @State var gridLayout: [GridItem] = [ GridItem() ]

    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 150))
        
    ]
    let columns: [GridItem] = [
        
        GridItem(spacing: 10, alignment: .center),
        GridItem(spacing: 10, alignment: .center),
        GridItem(spacing: 10, alignment: .center),
        GridItem(spacing: 10, alignment: .center),
        GridItem(spacing: 10, alignment: .center),
        GridItem(spacing: 10, alignment: .center),
        GridItem(spacing: 10, alignment: .center),
        GridItem(spacing: 10, alignment: .center),
        GridItem(spacing: 10, alignment: .center),
        GridItem(spacing: 10, alignment: .center),
    ]
    
    let array = ["0", "1", "2" , "3" , "4"  , "5" , "6", "7", "8","9"]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: adaptiveColumns, spacing: 20)  {
                ForEach(0..<10) {index in
                    HStack(alignment: .center){
                        ZStack (alignment: .bottom){
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 150, height: 150)
                                .foregroundColor(Color("Green"))
                            
                            VStack {
                                Image("\(index)")
                                    .resizable()
                                    .frame(width:150 ,height: 150)
                                    .clipShape(                    RoundedRectangle(cornerRadius: 8)
)

                                
                            }
                        }
                    }

                }
                .navigationTitle("Gallery")
            }
        }
    }
}
struct Schoolphoto_Previews: PreviewProvider {
    static var previews: some View {
        Schoolphoto()
    }
}
