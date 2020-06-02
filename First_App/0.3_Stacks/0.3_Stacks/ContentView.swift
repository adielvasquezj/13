//
//  ContentView.swift
//  0.3_Stacks
//
//  Created by roott on 6/2/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            HStack(spacing: 8) {
                    CourseView(titulo: "Básico", subtitulo: "Un curso incluído", precio: "$9.99 d", textColor: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), backGroundColor: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                    ZStack {
                        CourseView(titulo: "Carrera", subtitulo: "Toda una carrera", precio: "$29.99 D", textColor: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), backGroundColor: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                        Text("El mejor para empezar")
                            .font(.system(.caption, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .fontWeight(.black)
                             .padding(8)
                        .background(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
                        .offset(x: 0, y: -85)
                       
                    }
                    
                  
                }
        .lineLimit(2)
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
        VStack(alignment: .leading, spacing: 4) {
            Text("Elige tu itinerario")
                .font(.system(size: 35, weight: .bold, design: .rounded))
            
            
            Text(" de aprendizaje")
                .font(.system(size: 35, weight: .bold, design: .rounded))
        }
    }
}

struct CourseView: View {
    
    var titulo: String
    var subtitulo: String
    var precio: String
    var textColor : Color
    var backGroundColor: Color
    
    
    
    var body: some View {
       
            VStack {
              
                Text(titulo)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(textColor)
                
                Text(precio)
                    .font(.system(size: 25, weight: .heavy, design: .rounded))
                    .foregroundColor(textColor)
                
                Text(subtitulo)
                    .font(.headline)
                    .foregroundColor(textColor)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
            .padding(30)
            .background(backGroundColor)
            .cornerRadius(10)
        
    }
}
