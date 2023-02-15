//
//  Loading.swift
//  CountDown
//
//  Created by Fatma Gazwani on 13/06/1444 AH.
//

import SwiftUI

struct LoadingView: View {
    
    @State var isActive : Bool = false
    @State private var size = 0.5
    @State private var opacity = 0.5
    @State var bowAnimation = false
    
    @AppStorage("isUserOnboarded") var isUserOnboarded: Bool = false
    
    var body: some View {
        
        if isActive {
            if !isUserOnboarded {
                OnbordingView()
            }
            else {
                ContentView()
            }
        } else {
            ZStack{
                LoadingViewBG()
                VStack{
                    
                    VStack (alignment: .center){
                        Image("Estaddel")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(0.5, contentMode: .fit)
                        
                        
                        Text("Estaddel")
                            .offset(x: -50, y:-100)
                            .font(.title)
                            .bold()
                            .foregroundColor(Color("Sage"))
                        
                        
                    }   .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn (duration: 1.2)) {
                                self.size = 1.00
                                self.opacity = 1.00}}
                    
                }
                
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.7) {
                        withAnimation {
                            self.isActive = true
                        }
                        
                    }
                }
            }
        }
        
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
