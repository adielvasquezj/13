//
//  ContentView.swift
//  01_First_App
//
//  Created by roott on 6/2/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("""
 Working with a team? GitHub is built for collaboration. Set up an organization to improve the way your team works together, and get access to more features.
""")
            .fontWeight(.regular)
            .font(.custom("Gill Sans", size: 25))
            .foregroundColor(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
            //Fondo costumizado
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .truncationMode(.middle)
            .lineSpacing(8)
            .padding()
            //.rotationEffect(.init(degrees: 15), anchor: UnitPoint(x: 0, y: 0))
            .rotation3DEffect(.init(degrees: 50), axis: (x: 1, y: 0, z: 0))
            .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 1, x: 0, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
