//
//  ContentView.swift
//  04-ScrollCardView
//
//  Created by roott on 6/3/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var imageName: String
    var planetName: String
    var Subline: String
    var cross: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text(planetName)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(Subline.uppercased())
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                    //  .strikethrough()
                    
                    HStack {
                        Text(Subline)
                            .strikethrough()
                            .font(.caption)
                    }
                    
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
        }
        .cornerRadius(12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.2), lineWidth: 1)
            
        )
            
            .padding([.top, .horizontal])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(imageName: "marte", planetName: "Marte", Subline: "Marte es un planeta rocoso", cross: "Marte no es un planeta gaseoso")
    }
}

