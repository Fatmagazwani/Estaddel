//
//  UploadAnImage3.swift
//  infoAdd
//
//  Created by Norah Abass AlOtaibi on 21/07/1444 AH.
//

import SwiftUI
import PhotosUI



struct UploadAnImage3: View {
    
    @State private var selectedItems = [PhotosPickerItem]()
    @State private var selectedImages = [UIImage]()
    
    
    var body: some View {
        
        NavigationStack {
            VStack {
                if selectedImages.count > 0 {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach (selectedImages, id: \.self) { img in
                                Image(uiImage: img)
                                
                                    .resizable ()
                                    .frame(width: 150, height: 150)
                                
                            }
                        }
                    }
                } else {
                    Image(systemName: "photo.artframe")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.gray.opacity (0.6))
                        .padding()
                }
//                 https://www.pexels.com
                PhotosPicker(selection: $selectedItems, matching: .any(of: [.images, .not(.videos)])) {
                    Label("Add School Photo", systemImage: "photo.artframe")
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
           
//                    .navigationTitle ("DevTechie Photos")
            
                                
                                
                                
                        }
                        
                        
                        
                        
                        
                        
                    }
                }
          
struct UploadAnImage3_Previews: PreviewProvider {
    static var previews: some View {
        UploadAnImage3()
    }
}
