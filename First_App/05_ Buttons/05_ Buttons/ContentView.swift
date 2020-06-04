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
               // .padding()
                 .font(.largeTitle)
            .padding()
                .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
               // .font(.largeTitle)
            .cornerRadius(50)
               .padding(12)
            .overlay(
            RoundedRectangle(cornerRadius: 50)
             .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), lineWidth: 4)
            )
                //.border(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)), width: 6)
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
