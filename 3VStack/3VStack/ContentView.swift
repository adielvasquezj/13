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
            VStack {
                HeaderView()
                
                HStack(spacing: 8) {
            
                    TraductorView(titulo: "Bienvenido", ultimo: "xbxbx", textColor: .white, backgroundColor: .blue)
                    ZStack {
                        TraductorView(titulo: "Bienvenido", ultimo: "xbxbx", textColor: .white, backgroundColor: .gray)
                       
                    }
             
                }
                    
                .padding(.horizontal)
                
                ZStack {
                    TraductorView(titulo: "Bienvenido", ultimo: "Welcome", textColor: .white, backgroundColor: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), icon: "lightbulb")
                        
                        .padding(.horizontal)
                  
                    
                }
            }
              
            .padding(.vertical)
            Spacer()
        }
           // Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Aprende Mixteco ")
                    .font(.system(size: 23, weight: .bold, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
            
        }.padding()
    }
}

var rana = "ranana"

struct TraductorView: View {
    
    var titulo: String
 //   var medio: String
    var ultimo: String
    var textColor: Color
    var backgroundColor: Color
    var icon : String?
    var body: some View {
        VStack {
            
            
            icon.map({
                Image(systemName:$0) //$0 = icon
                .font(.largeTitle)
                .foregroundColor(.white)
            })
            
            
            Text(titulo)
                .font(.system(size: 19, weight: .bold, design: .rounded))
                .foregroundColor(textColor)
            
           // Text(medio)
            Text(ultimo)
                .font(.system(size: 35, weight: .heavy, design: .rounded))
                .foregroundColor(.black)
            
            
        } .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(20)
        .background(backgroundColor)
        .cornerRadius(10)
        
 //   .padding(30)
    }
}
