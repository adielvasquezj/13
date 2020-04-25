//
//  ContentView.swift
//  2-Images
//
//  Created by kernel-root on 4/24/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            Image("ixta")
                .resizable()
              //  .edgesIgnoringSafeArea(.all)
              //  .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300)
            //.clipped()
               // .cornerRadius(10)
                .clipShape(Capsule())
                .opacity(0.8)
                  
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
