//
//  CardView.swift
//  04-ScrollCardView
//
//  Created by roott on 6/3/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        GeometryReader { bounds in
            ScrollView {
                
                VStack {
                    Image("saturno")
                        .resizable()
                        
                     .frame(maxWidth: 50, maxHeight: 50)
                         .cornerRadius(12)
                  .padding(50)
                        .aspectRatio(contentMode: .fit)
                       // .padding(-10)
                       
                  
                        

                    Text("Aprende mas sobre los")
                        .fontWeight(.bold )
                    .offset(x: 0, y: -30)
                    Text("Planetas")
                        .fontWeight(.light)
                      .offset(x: 0, y: -20)
                }
          
                .foregroundColor(.primary)
              
                
            ContentView(imageName: "marte", planetName: "Marte", Subline: "Marte es un planeta rocoso", cross: "Marte no es  gaseoso")
            ContentView(imageName: "luna", planetName: "La luna", Subline: "La luna es un satelite natural de la tierra", cross: "La luna no es un planeta")
            ContentView(imageName: "saturno", planetName: "Saturno", Subline: "Saturno es un planeta gaseoso", cross: "Saturno no es un planeta rocoso")
            ContentView(imageName: "vetus", planetName: "Venus", Subline: "Venus es un planeta rocoso", cross: "Venus no es un planeta gaseoso")
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
