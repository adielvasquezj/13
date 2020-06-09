//
//  Project0.swift
//  07_Draw
//
//  Created by roott on 6/6/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct Project0: View {
    var body: some View {
        
        
        
        VStack {
            Textos(espanol: "Hola mundo somos Anonymous", mixteco: "Hello world we are anonymous")
            
            
        }
    }
}

struct Project0_Previews: PreviewProvider {
    static var previews: some View {
        Project0()
    }
}

struct Textos: View {
    var espanol : String
    var mixteco : String
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("\(espanol)")
                     .font(.system(size: 15))
                    .font(.callout)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.8))
                    .background(LinearGradient(gradient: Gradient(colors: [Color("primero"), Color("segundo")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/).opacity(0.3) )
                    .cornerRadius(12)
                    .lineLimit(2)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    .animation(.spring(response: 0.4, dampingFraction: 0.5, blendDuration: 0.5))
                  
                
                
                Text("\(mixteco)")
                    .font(.system(size: 13))
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.8))
                    .background(LinearGradient(gradient: Gradient(colors: [Color("primero"), Color("segundo")]), startPoint: .trailing, endPoint: .leading).opacity(0.3))
                    .cornerRadius(12)
                .lineLimit(2)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
         //   .background(LinearGradient(gradient: Gradient(colors: [Color("first"), Color("second")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .font(.system(size: 22, weight: .bold, design: .rounded))
        }
        .edgesIgnoringSafeArea(.all)
    }
}
