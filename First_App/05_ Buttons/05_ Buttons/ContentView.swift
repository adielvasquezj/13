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
        
        VStack {
            /*  Button(action: {
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
             */
            
            Button(action: {
                print("Botón con icono pulsado")
            }) {
                HStack {
                    Image(systemName: "square.and.pencil")
                    Text("editar")
                }
                
            }
            .buttonStyle(BasicButtonStyle())
            
            Button(action: {
                print("Compartir pulsado")
            }) {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                    Text("Compartir")
                }
                
            }
            .buttonStyle(BasicButtonStyle())
            
            Button(action: {
                print("Botón con icono pulsado")
            }) {
                HStack {
                    Image(systemName: "trash")
                    Text("Eliminar")
                }
                
            }
            .buttonStyle(BasicButtonStyle())
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color("Dark Ocean"), Color("dos")]), startPoint: .leading, endPoint: .trailing) )
            // .clipShape(Circle())
            .font(.largeTitle)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(45)
            .shadow(color: Color("dos"), radius: 10, x: 5, y: 5)
            .padding(.horizontal, 30)
    }
}
