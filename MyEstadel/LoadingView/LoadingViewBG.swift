//
//  BG.swift
//  4th
//
//  Created by Fatma Gazwani on 17/07/1444 AH.
//

import SwiftUI

struct LoadingViewBG: View {
    var body: some View {
        Image("003")
            .resizable()
            .frame(width: 450)
    }
}

struct BG_Previews: PreviewProvider {
    static var previews: some View {
        LoadingViewBG()
    }
}
