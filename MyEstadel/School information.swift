//
//  School information.swift
//  MyEstadel
//
//  Created by Arwamohammed07 on 15/07/1444 AH.
//

import SwiftUI
import CoreLocationUI
import MapKit

struct School_information: View {
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        NavigationView{
            ScrollView{
                
                VStack{
                    VStack{
                        Image("A")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .overlay(Circle()
                                .stroke(Color.gray))
                            .padding(.bottom)
                        Text("ABC international school")
                            .font(.system(size: 17, weight: .semibold)).foregroundColor(Color("Sage"))
                        Text("Riyadh")
                            .font(.system(size: 17, weight: .regular)).foregroundColor(Color("Mandarin"))
                        
                    }
                    
                    //The schools in Riyadh were...
                    Text("The schools in Riyadh were established in 2018 as an educational institution from pre-school to grade twelfth, the schools are still continuing on the pace of development and expansion for the coming years.").font(.system(size: 17, weight: .regular)).foregroundColor(.black)
                    
                    
                        .padding()
                    // MARK: -
                    //
                    Group{
                        VStack(alignment: .leading){
                            CustomTextView(iconName: "person.circle", text: "Each class has 20-30 students ")
                                .padding(.bottom)
                                .padding(.horizontal)

                            
                            CustomTextView(iconName: "dollarsign.circle", text: "200-$ ")
                                .padding(.bottom)
                                .padding(.horizontal)

                            
                            CustomTitle(title: "Account Information")
                            
                            
                            CustomTextView(iconName: "person.circle", text: "ABC international school")
                                .padding(.horizontal)
                            Divider()
                            
                            CustomTextView(iconName: "envelope", text: "ABC@info.edu.sa")
                                .padding(.horizontal)
                            Divider()
                            
                            CustomTextView(iconName: "phone", text: "+966 555-333-234")
                                .padding(.horizontal)
                            Divider()
                            


                        }
                        
                        
                        
                    }
                    
                    // MARK: -
                    //اسويها اري افضل عشان اختصر الكود
                    CustomTitle(title: "Facility")
                        .padding(.top)
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
                    VStack(alignment: .leading){
                        HStack{
                            CustomTitle(title: "Photos")
                                .padding(.top)
                            
                            
                            Spacer()
                            NavigationLink (destination: Schoolphoto(), label: {
                                Text("See All")
                                    .foregroundColor(Color("Mandarin"))
                                    .padding()
                            })
                        }
                    }
                    
                        // MARK: -
                        //اسويها اري افضل عشان اختصر الكود
                        HStack{
                            CustomImage(imageNo: "0")
                            CustomImage(imageNo: "2")
                            CustomImage(imageNo: "3")
                            CustomImage(imageNo: "4")
                            
                        }

                        
                    .padding(.horizontal)
                    
                    CustomTitle(title: "Location Map")
                        .padding(.top)
                    
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
                .padding(.bottom)
                //✏️ Title
                .navigationTitle("School information")
                
                //لازم اسويها ربط بين الصفحات وصفحة وهيمه عشان اربطها فيها
                
                // MARK: - Toolbar
                .toolbar {
                    // 1
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: Sitting()) {
                            Text("Setting")
                                .padding()
                                .navigationTitle("Hi")
                                .toolbar{
                                }
                        }
                    }
                    // 2
                    ToolbarItem(placement: .navigationBarLeading) {
                        
                        Button("Back") {
                            
                        }
                    }
                }
            }
        }
    }
}

struct School_information_Previews: PreviewProvider {
    static var previews: some View {
        School_information()
    }
}
