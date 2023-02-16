//
//  ContentView.swift
//  MyEstadel
//
//  Created by Arwamohammed07 on 13/07/1444 AH.
//

import SwiftUI
import CoreLocationUI
import MapKit


struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var body: some View {
       
        NavigationView {
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
                           
                           Text("Here gose the map")
                           
                           Text("Here gose the map")

                           Text("Here gose the map")

                           Spacer()
                           LocationButton {
                               locationManager.requestLocation()
                           }
                           .cornerRadius(30)
                           .symbolVariant(.fill)
                           .foregroundColor(.white)
            
                       }
        }

        }
        
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
