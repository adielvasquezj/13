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
            
            HStack(spacing: 8) {
        
                TraductorView(titulo: "Bienvenido", ultimo: "xbxbx", textColor: .white, backgroundColor: .blue)
                ZStack {
                    TraductorView(titulo: "Bienvenido", ultimo: "xbxbx", textColor: .white, backgroundColor: .gray)
                    Text("Santiago Ixtayutla")
                        .font(.system(size: 17, design: .rounded))
                        .foregroundColor(Color.white)
                        .fontWeight(.black)
                        .background(Color.yellow)
                      //  .rotationEffect(.init(degrees: 21), anchor: .bottom)
                    
                    .cornerRadius(8)
                    .offset(x: 0, y: -69)
                    
                    .padding(8)
                }
         
            }
                
            .padding(.horizontal)
            
            
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

var rana = "ranana"

struct TraductorView: View {
    
    var titulo: String
 //   var medio: String
    var ultimo: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
        VStack {
            
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
