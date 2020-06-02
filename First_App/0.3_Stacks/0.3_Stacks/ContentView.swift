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
            HStack {
                VStack {
                    Text("Plan Básico")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    
                    Text("9.99USD")
                        .font(.system(size: 25, weight: .heavy, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    
                    Text("Un curso incluído")
                        .font(.headline)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .padding(30)
                .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                .cornerRadius(10)
                
                
                VStack {
                    Text("Plan Premium")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    
                    Text("29.99USD")
                        .font(.system(size: 25, weight: .heavy, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    
                    Text("Toda una carrera")
                        .font(.headline)
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .padding(30)
                .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                .cornerRadius(10)
                
            }
            
        }
        .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)).opacity(0.5))
        .cornerRadius(12)
    .padding()
        
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
            Text("Elije tu itinerario")
                .font(.system(size: 35, weight: .bold, design: .rounded))
            
            
            Text(" de aprendizaje")
                .font(.system(size: 35, weight: .bold, design: .rounded))
        }
    }
}
