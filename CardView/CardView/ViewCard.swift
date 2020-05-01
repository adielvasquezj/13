//
//  ViewCard.swift
//  CardView
//
//  Created by kernel-root on 5/1/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct ViewCard: View {
    var imagen : String
    var espa: String
    var mix : String
    
    var body: some View {
        
        
        
        VStack {
            Image(imagen)
                .resizable()
                .frame(width: 300, height: 300)
          .cornerRadius(12)
                .overlay(RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))))
            .opacity(0.9)
           
            VStack(alignment: .leading) {
                Text(espa)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    
                   
                
                HStack {
                    Text(espa)
                        .font(.headline)
                        .foregroundColor(.primary)
                    Text(mix)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    .strikethrough()
                    
                }
         
               
            }.layoutPriority(10)
             Spacer()
            
        }
       
       
    }
}

struct ViewCard_Previews: PreviewProvider {
    static var previews: some View {
        ViewCard(imagen: "Ixta", espa: "Uname -a", mix: "Uname -a")
    }
}
