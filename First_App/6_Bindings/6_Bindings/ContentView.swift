//
//  ContentView.swift
//  6_Bindings
//
//  Created by roott on 6/5/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct Reto: View {
    //State independientes
    @State private var numClicks1 = 0
    @State private var numClicks2 = 0
    @State private var numClicks3 = 0
    
    
    var body: some View {
        VStack {
            
            Text("\(numClicks1+numClicks2+numClicks3)")
                .font(.system(size: 20, weight: .black, design: .rounded)) //Sumamos los tres states para crear un solo resultado
            
            CounterView(numClicks: $numClicks1, buttonColor: Color("dos"))
            CounterView(numClicks: $numClicks2, buttonColor: Color("Dark Ocean"))
            CounterView(numClicks: $numClicks3, buttonColor: Color("dos"))
            
        }
        
    }
}

struct Reto_Previews: PreviewProvider {
    static var previews: some View {
        Reto()
    }
}

struct CounterView: View {
    @Binding var numClicks: Int
    var buttonColor: Color
    
    var body: some View {
        Button(action: {
            self.numClicks += 1
        }) {
            
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(buttonColor)
                .overlay(Text("\(numClicks)")
                    .font(.system(size: 80, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
            )
        }
    }
}
