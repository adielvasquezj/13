//
//  ContentView.swift
//  06_Music
//
//  Created by roott on 6/4/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State private var isPlaying = false
    
     var body: some View {
        
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
            .font(.system(size: 100))
            .foregroundColor(isPlaying ? .red : .blue)
            
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
