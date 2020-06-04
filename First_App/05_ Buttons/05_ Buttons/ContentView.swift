//
//  ContentView.swift
//  05_ Buttons
//
//  Created by roott on 6/4/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Button(action: {
            //Qué debe hacer el botón
            print("Hello world pulsado")
        }) {
            //Cómo debe verse el botón
            Text("Hello world")
                
                .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                .padding()
                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .font(.system(.largeTitle, design: .rounded))
            
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
