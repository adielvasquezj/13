//
//  FondoDePantalla.swift
//  Project0
//
//  Created by kernel-root on 4/27/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct FondoDePantalla: View {
    var body: some View {
        VStack {
            ViewGirls()
        }
        
    }
}



struct FondoDePantalla_Previews: PreviewProvider {
    static var previews: some View {
        FondoDePantalla()
    }
}

struct ViewGirls: View {
    var body: some View {
        VStack {
            Image("girls")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .opacity(0.8)
        }
    }
}
























