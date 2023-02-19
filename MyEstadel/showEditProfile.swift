//
//  showEditProfile.swift
//  infoAdd
//
//  Created by Norah Abass AlOtaibi on 24/07/1444 AH.
//

import SwiftUI
import CoreLocationUI
import MapKit

struct showEditProfile: View {
    
    @State private var name: String = ""
    @StateObject var locationManager = LocationManager()
    @State private var SchoolName: String = ""
    @State private var Email: String = ""
    @State private var PhoneNumber: String = ""
    @State private var profileText = " bio"
    @State var selectedImage: UIImage?
    @State var selectedImage1: UIImage?
    
    var body: some View {
        
        
        VStack{
            ScrollView{
                
                
                UploadAnImage1()


                CustomTitle(title: "Account Information")

                Group{
                    CustomInputField(imageName: "bus.fill",
                                     placeholderText: "School Name",
                                     text: $SchoolName)
                    
                    CustomInputField(imageName: "envelope",
                                     placeholderText: "Email",
                                     text: $Email)
                    
                    CustomInputField(imageName: "phone",
                                     placeholderText: "Phone Number",
                                     text: $PhoneNumber)


                    
                }   
                    HStack(alignment: .top){
                        Image(systemName:"pencil.and.outline")
                        .padding(.top, 8)
                        TextEditor(text: $profileText)
                            
                    }
                    .padding(.horizontal)
                    .frame(width: 358, height: 72)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray, lineWidth: 1))
                    .padding(.bottom, 8)
                
                    
                    //✏️ Title
                        .navigationTitle("Add School")   .font(.system(size: 17, weight: .semibold))
                        .navigationBarTitleDisplayMode(.inline)
//                            .tracking(-0.41)
                      
                    
                    
                    
                
//                    Divider()
//                        .frame(width: 300, height: 16)
                CustomTitle(title: "Facility")
                    .padding(.top)

                // Facility
                
                Group{
                    HStack(spacing: 24){
                        CustomShape(iconName: "bus.fill",
                                    iconText: "Transport",
                                    iconColor: "Sage")
                        
                        CustomShape(iconName: "desktopcomputer",
                                    iconText: "Smart",
                                    iconColor: "Mandarin")
                        
                        CustomShape(iconName: "figure.pool.swim",
                                    iconText: "Pool",
                                    iconColor: "Sage")
                        
                        CustomShape(iconName: "building.2",
                                    iconText: "Complex",
                                    iconColor: "Mandarin")
                        
                    }
                }.padding(.bottom)
                //Add Your school Photos:

                HStack{

//                    UploadAnImage3()
                    UploadAnImage4()

                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height:150)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .frame(width: 150, height: 150)
                        .padding()
                }
                .padding()
                //Add Your school location:
                Text("Add Your school location:").font(.system(size: 20, weight: .semibold)).fontWeight(.medium).tracking(0.38)
                
                ZStack(alignment: .bottom) {
                    Map(coordinateRegion: $locationManager.region, showsUserLocation: true)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        if let location = locationManager.location {
                            Text("**Current location:** \(location.latitude), \(location.longitude)")
                                .font(.callout)
                                .foregroundColor(.white)
                                .padding()
                                .background(.gray)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                        Spacer()
                        LocationButton {
                            locationManager.requestLocation()
                        }
                        
                        .frame(width: 180, height: 40)
                        .cornerRadius(30)
                        .symbolVariant(.fill)
                        .foregroundColor(.white)
                    }
                    .padding()
                    
                }.frame(width: 340, height: 200)
                    .cornerRadius(8)

            }
            
            
            .toolbar {
                // 1
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button("Save") {}
                }
                // 2
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    Button("Back") {}
                }
            }
        }    }
}

struct showEditProfile_Previews: PreviewProvider {
    static var previews: some View {
        showEditProfile()
    }
}
