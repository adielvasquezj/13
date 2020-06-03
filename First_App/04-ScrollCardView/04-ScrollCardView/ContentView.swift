//
//  ContentView.swift
//  04-ScrollCardView
//
//  Created by roott on 6/3/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("marte")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading) {
                Text("Marte")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Marte un planeta rocozo")
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
              //  .strikethrough()
                
                HStack {
                    Text("Marte no es un planeta gaseoso")
                    .strikethrough()
                        .font(.caption)
                }
                 
            }
      
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

