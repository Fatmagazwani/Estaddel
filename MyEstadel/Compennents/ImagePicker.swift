////
////  ImageUploader.swift
////  Ivy
////
////  Created by Fatma Gazwani on 14/05/1444 AH.


import Foundation
import UIKit
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage?
    @Binding var isPickerShowing: Bool
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = context.coordinator
        
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    func makeCoordinator ( ) -> Coordinator {
        return Coordinator (self)
    }
}
class Coordinator: NSObject, UIImagePickerControllerDelegate,
                   UINavigationControllerDelegate {
    var parent: ImagePicker
    
    init(_ picker: ImagePicker) {
        self.parent = picker
    }
    func imagePickerController (_ picker: UIImagePickerController,
                                didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey :Any]) {
        // Run code when the user has selected an image
        print ("image selected")
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            DispatchQueue.main.async {
                self.parent.selectedImage = image
                
            }
        }
        //Dismiss Picker
        parent.isPickerShowing = false
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        // Run code when the user has cancelled the picker UI
        print ("cancelled")
        //Dismiss Picker
        parent.isPickerShowing = false
    }
}

//func getAllImages () {
//    let req = PHAsset. fetchAssets (with: .image, options: .none)
//    DispatchQueue.global (qos: .background) .async {
//        req.enumerateObjects { (asset, _ _) in
//            
//            
//        }
//    }
//}
//
