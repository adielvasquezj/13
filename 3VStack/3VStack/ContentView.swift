//
//  ContentView.swift
//  3VStack
//
//  Created by kernel-root on 4/25/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            VStack {
                
                Text("Español")
                    .font(.system(size: 19, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                
                
                Text("Mixteco")
                    .font(.system(size: 21, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                
                
            }
        .padding(10)
        .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
        .cornerRadius(12)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 4) {
            Text("Aprende Mixteco ")
                .font(.system(size: 23, weight: .bold, design: .rounded))
                .fontWeight(.black)
            
            Text(" 😁 ")
                .font(.system(size: 23, weight: .bold, design: .rounded))
                .fontWeight(.black)
            
            
        }
    }
}
