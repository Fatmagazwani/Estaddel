//
//  OnbordingView.swift
//  CountDown
//
//  Created by Fatma Gazwani on 13/06/1444 AH.
//
import SwiftUI


enum OnbordingType: CaseIterable {
    case track
    case notified
    case accessibility
    
    var image: String {
        switch self {
        case .track:
            return "ob1"
        case .notified:
            return "ob2"
        case .accessibility:
            return "ob3"
        }
    }
    
    var title: String {
        switch self {
        case .track:
            return "Track"
        case .notified:
            return "Get notified"
        case .accessibility:
            return "Customize"
        }
    }
    
    var description: String {
        switch self {
        case .track:
            return "Track your events through our countdown feature."
        case .notified:
            return "Enable notification to get reminder of your events."
        case .accessibility:
            return "Supports Arabic and English languages, light and dark mode, and Voice over."
        }
    }
}


struct OnbordingView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("isUserOnboarded") var isUserOnboarded: Bool = false
    @State var selectedOnbordingType: OnbordingType = .track
    
    var body: some View {
        ZStack {
            
            TabView(selection: $selectedOnbordingType) {
                
                ForEach(OnbordingType.allCases, id: \.title) { onbording in
                    SingleOnbordingView(onbordingType: onbording)
                        .tag(onbording)
                        .onChange(of: selectedOnbordingType, perform: { newValue in
                            selectedOnbordingType = newValue
                        })
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
            if selectedOnbordingType != .accessibility {
                skipButton
            }
        }
        .onAppear {
            setupAppearance()
        }
    }
}

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
    }
}

extension OnbordingView {
    var skipButton: some View {
        Button {
            withAnimation(.spring()) {
                isUserOnboarded = true
            }
        } label: {
            Text("skip")
                .padding(10)
        }
        .padding(.top, 1)
        .padding(.trailing)
        .frame(maxWidth: .infinity, alignment: .trailing)
        .frame(maxHeight: .infinity, alignment: .top)
        .foregroundColor(.accentColor)
    }
}

extension OnbordingView {
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor =
        colorScheme == .dark ? .white : .black
        UIPageControl.appearance().pageIndicatorTintColor = colorScheme == .dark ? UIColor.white.withAlphaComponent(0.2) : UIColor.black.withAlphaComponent(0.2)
    }
}

