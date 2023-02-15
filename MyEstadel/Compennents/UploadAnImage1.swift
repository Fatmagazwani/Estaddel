//
//  UploadAnImage1.swift
//  infoAdd
//
//  Created by Norah Abass AlOtaibi on 15/07/1444 AH.
//

import SwiftUI

struct UploadAnImage1: View {
    @State var isPickerShowing1 = false
    @State var selectedImage1: UIImage?
    
    var body: some View {
        
        ZStack {
            if selectedImage1 != nil {
                
                Image (uiImage: selectedImage1!)
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                
                
                //                    .frame (width: 200, height: 200)
            }
            Button {
                // Show the image picker
                isPickerShowing1 = true
            } label: {
                
                
                
                
                Image(systemName:"circle")
                
                    .resizable()
                    .clipShape(Circle())
                
                
                    .frame(width: 120, height: 120)
                    .overlay  {
                        Image(systemName:"pencil.and.outline")
//                            .foregroundColor(.gray) Alignment: .bottomTrailing) 
                        
                        //                        Circle()
                        //                        .stroke(Color.gray, lineWidth: 0.5)}
                        //
                        
                        //                Rectangle()
                        //                Text ("Add a Photo" )
                        //                    .foregroundColor(.blue)
                        
                        
                    }
                
                
                
            }
            
            .sheet(isPresented: $isPickerShowing1, onDismiss: nil) {
                // Image picker
                
                ImagePicker (selectedImage: $selectedImage1, isPickerShowing: $isPickerShowing1)
                //  If you wish to take a photo from camera instead:
                // ImagePicker(sourceType: .camera, selectedImage: self.$image)
            }
        }
    }
}
struct UploadAnImage1_Previews: PreviewProvider {
    static var previews: some View {
        UploadAnImage1()
    }
}
