//
//  ContentView.swift
//  StateAndB
//
//  Created by kernel-root on 4/30/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

private var isPlaying = false

struct ContentView: View {
    var body: some View {
        
        
        Button(action: {
            //Que debe hacer el boton
            print("Botón pulsado")
        }) {
            //Como debe verse el boton
            
            Image(systemName:isPlaying ? "stop.circle.fill" : "play.circle.fill")
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

