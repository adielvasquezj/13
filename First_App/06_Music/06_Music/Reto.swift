//
//  Reto.swift
//  06_Music
//
//  Created by roott on 6/5/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct Reto: View {
    
 @State private var numClicks = 0
    
    
    var body: some View {
        VStack {
            CounterView(numClicks: $numClicks, buttonColor: Color("dos"))
             CounterView(numClicks: $numClicks, buttonColor: Color("Dark Ocean"))
             CounterView(numClicks: $numClicks, buttonColor: Color("dos"))
            
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
