//
//  UploadAnImage4.swift
//  MyEstadel
//
//  Created by Norah Abass AlOtaibi on 25/07/1444 AH.
//

import SwiftUI
import PhotosUI



struct UploadAnImage4: View {
    
    @State private var selectedItems = [PhotosPickerItem]()
    @State private var selectedImages = [UIImage]()
    
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
        
        NavigationStack {
            VStack {
                if selectedImages.count > 0 {
                    ScrollView(.horizontal) {
                        HStack {
                            
//                            LazyVGrid(columns: [GridItem.init(.adaptive(minimum: 140))]) {
//                                ForEach (selectedImages, id: \.self) { img in
                            ForEach (selectedImages, id: \.self) { img in
                                    Image(uiImage: img)
                                    
                                        .resizable ()
                                        .frame(width: 150, height: 150)
                                    
                                }
                            }
                        }
                    } else {
                        
                        //                        Image(systemName: "icloud.and.arrow.up")
                        //                            .resizable()
                        //                            .scaledToFill()
                        //                            .frame(width: 40, height: 40)
                        //                            .foregroundColor(.gray.opacity (0.6))
                        //                            .padding()
                    }
                    //                 https://www.pexels.com
                    
                    
                    
                    PhotosPicker(selection: $selectedItems, matching: .any(of: [.images, .not(.videos)])) {
                        
                        Label("Add photo ", systemImage: "icloud.and.arrow.up")
                            .frame(width:180, height: 180)
                            .overlay(
                                RoundedRectangle(cornerRadius:12)
                                
                                    .strokeBorder(style: StrokeStyle(lineWidth: 2 , dash: [10])))
                    }
                    
                    
                    
                    .onChange (of: selectedItems) { newValues in
                        Task {
                            
                            selectedImages = []
                            for value in newValues {
                                if let imageData = try? await value.loadTransferable(type:
                                                                                        Data.self), let image = UIImage (data: imageData) {
                                    selectedImages.append(image)
                                    
                                }
                                
                            }
                        }
                    }
                    
                    
                }
                
                
                
                
                
                
            }
            
            
            
            
            
            
        }
    }

struct UploadAnImage4_Previews: PreviewProvider {
    static var previews: some View {
        UploadAnImage4()
    }
}


