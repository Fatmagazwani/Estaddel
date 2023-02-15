//
//  uploadanimage.swift
//  Ivy
//
//  Created by Fatma Gazwani on 14/05/1444 AH.
//
import SwiftUI
import Photos
struct UploadAnImage: View {
    @State var isPickerShowing = false
    @State var selectedImage: UIImage?
//    @State var selectedItem = [PhotoPickerItem]
    var body: some View {
        
        VStack {
            if selectedImage != nil {
                
                Image (uiImage: selectedImage!)
                
                    .resizable ()
                
                    .frame (width: 200, height: 200)
            }
            Button {
                // Show the image picker
                isPickerShowing = true
            } label: {
//                Rectangle()
                Text ("Add School Photo here" )
                    .foregroundColor(Color("Mandarin"))
                    .padding()
            }
        }
        .sheet(isPresented: $isPickerShowing, onDismiss: nil) {
            // Image picker
            
            ImagePicker (selectedImage: $selectedImage, isPickerShowing: $isPickerShowing)
            //  If you wish to take a photo from camera instead:
            // ImagePicker(sourceType: .camera, selectedImage: self.$image)
        }
    }
}
struct UploadAnImage_Previews: PreviewProvider {
    static var previews: some View {
        UploadAnImage()
    }
}
