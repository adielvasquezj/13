//
//  Scroll.swift
//  Project0
//
//  Created by kernel-root on 4/27/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct Scroll: View {
    var body: some View {
        ZStack {
            FondoDePantalla()
            ScrollView {
                Title()
                    .offset(x: 0, y: -10)
                // printVertical()
                printVertical(espñol: "LA MULA BRONCA ", mixteco: "JAJAJ JAJA JAJA")
                printVertical(espñol: "LA MULA BRONCA ", mixteco: "JAJAJ JAJA JAJA")
                printVertical(espñol: "LA MULA BRONCA ", mixteco: "JAJAJ JAJA JAJA")
                printVertical(espñol: "LA MULA BRONCA ", mixteco: "JAJAJ JAJA JAJA")
                printVertical(espñol: "LA MULA BRONCA ", mixteco: "JAJAJ JAJA JAJA")
                printVertical(espñol: "LA MULA BRONCA ", mixteco: "JAJAJ JAJA JAJA")
                printVertical(espñol: "LA MULA BRONCA ", mixteco: "JAJAJ JAJA JAJA")
                printVertical(espñol: "LA MULA BRONCA ", mixteco: "JAJAJ JAJA JAJA")
                printVertical(espñol: "LA MULA BRONCA ", mixteco: "JAJAJ JAJA JAJA")
                
            }
            Spacer()
       //  frame(width: 10, height: 400, alignment: .center)
       
        }
   
       
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}

struct Title: View {
    var body: some View {
        Text("Bienvenido")
            
            .font(.largeTitle)
            //.fontWeight(.bold)
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .multilineTextAlignment(.center)
            // .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            .opacity(0.9)
            .cornerRadius(12)
    }
}


