//
//  ContentView.swift
//  StateAndB
//
//  Created by kernel-root on 4/30/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            
            Image(systemName: "play.circle.fill")
                .frame(width: 20, height: 20, alignment: .center)
                .font(.system(size: 35))
                
                //   .cornerRadius(12)
                .background(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Image(systemName: "stop.circle.fill")
                .frame(width: 20, height: 20, alignment: .center)
                .font(.system(size: 35))
                
                //   .cornerRadius(12)
                .background(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                .aspectRatio(contentMode: .fit)
                .padding()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

