//
//  SwiftUIView.swift
//  CountDown
//
//  Created by Fatma Gazwani on 13/06/1444 AH.
//

import SwiftUI

struct SingleOnbordingView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("isUserOnboarded") var isUserOnboarded: Bool = false
    let onbordingType: OnbordingType
    
    var body: some View {
        
        ZStack{
            Image(colorScheme == .light ? onbordingType.image : onbordingType.image + "_dark")
                .resizable()
                .scaledToFit()
                .frame( height: 844)
                .ignoresSafeArea()
            
            
            VStack(spacing:10) {
                VStack(alignment: .leading){
                    Text(onbordingType.title)
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("Mandarin"))
                        .padding(.top, 50)
                    
                    Text(onbordingType.description)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                } .padding(.horizontal,40)
                
                
                if onbordingType == .accessibility {
                    Button {
                        withAnimation(.spring()) {
                            isUserOnboarded = true
                        }
                    } label: {
                        Text("Get Started")
                            .font(.headline)
                            .padding()
                            .foregroundColor(colorScheme == .light ? .white : .black)
                            .frame(width: 300, height: 50)
                            .background(Color("Sage"))
                            .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            .padding(.top, 400)
                    }
                }
            }
        }
    }
}
struct SingleOnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        SingleOnbordingView(onbordingType: OnbordingType.track)
    }
}
