//
//  ContentView.swift
//  Proyecto
//
//  Created by roott on 5/29/20.
//  Copyright © 2020 Santiago Ixtayutla. All rights reserved.
//

import SwiftUI
//import Firebase
//import Lottie
//import Contentful
//import SDWebImageSwiftUI




struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.6, green: 0.8, blue: 0.5960784314, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Hello, World!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
