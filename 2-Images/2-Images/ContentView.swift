//
//  ContentView.swift
//  2-Images
//
//  Created by kernel-root on 4/24/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      

            Image("ixta")
                .resizable()
              //  .edgesIgnoringSafeArea(.all)
              //  .scaledToFit()
                .aspectRatio(contentMode: .fill)
              //  .padding([.top, .leading, .trailing])
                .frame(width: 300)
                //.clipped()
                // .cornerRadius(10)
                .clipShape(Capsule())
                .opacity(0.9)
            .overlay(
                /* .overlay(Image(systemName: "heart.fill"))
                 .font(.system(size: 40))
                 .foregroundColor(.red)
                 .opacity(0.5) */
                Text("Santiago Ixtayutla es un municipio indígena del Estado de Oaxaca")
                
                    
                    .fontWeight(.bold)
                    .font(.system(.headline, design: .rounded))
                    
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
                    .opacity(0.7)
                    .padding(), alignment: .bottom 
                        
                      
            
           

      )
     
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
