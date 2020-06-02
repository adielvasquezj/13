//
//  ContentView.swift
//  02_Images
//
//  Created by roott on 6/2/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI
// 
struct ContentView: View {
    var body: some View {
        GeometryReader { bounds in
            Image("ny")
                .resizable()
                .edgesIgnoringSafeArea(.vertical)
                //  .padding(.all, -40)
                //  .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 300)
                .clipShape(Capsule())
                .opacity(0.9)
                .overlay(
                    /*Image(systemName: "heart.fill")
                     .font(.system(size: 40, weight: .semibold, design: .rounded))
                     .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                     .opacity(0.5)*/
                    
                    /* GeometryReader { bounds in
                     Text("Seguridad en el manejo de archivos Tu privacidad está garantizada. Nadie tiene acceso a tus archivos JPG y PDF y se eliminarán de manera permanente de nuestros servidores cuando haya pasado una hora.")
                     .font(.system(size: 22, weight: .heavy, design: .rounded))
                     .padding()
                     .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)).opacity(0.5))
                     .cornerRadius(10)
                     .padding()
                     } , alignment: .center
                     
                     */
                    Capsule()
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .opacity(0.3)
                        .overlay(Text("New York"))
                        .font(.title)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
