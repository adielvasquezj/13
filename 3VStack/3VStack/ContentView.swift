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
        VStack(alignment: .leading, spacing: 4) {
            Text("Aprende Mixteco ")
                .font(.system(size: 23, weight: .bold, design: .rounded))
                .fontWeight(.black)
            
            Text(" 😁 ")
                .font(.system(size: 23, weight: .bold, design: .rounded))
                .fontWeight(.black)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
