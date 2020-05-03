//
//  ContentView.swift
//  MixtecoPro
//
//  Created by kernel-root on 5/1/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Text("Bienvenido 🤠")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            
            
            ScrollView {
                VStack {
                    VStack {
                        
                        //  WholeViewWI()
                        
                        HomeIxtaViewH(priEspaverdeH: "Ustedes", segMixverdeH: "Mando", tercEspaverdeH: "Ellos", cuartMixverdeH: "Machi", priEspablancoH: "Nosotros", segMixblancoH: "Mayo", tercEspablancoH: "Mío", cuarMixblancoH: "Chi mai", priEsparojoH: "Tuyo", segMixrojoVH: "Chi mau", tercEsparojoH: "Aceptar", cuarMixrojoH: "Ki'i", numero: "1")
                        
                        WholeViewV(priEspaverdeV: "Ustedes son mi equipo", segMixverdeV: "Mando ku equipu mai", priEspablancoV: "Ellos fueron a la tienda", segMixblancoV: "Machi icha'a tienda", priEsparojoV: "Yo quiero cantar", segMixrojoV: "Mai kuñi kata", number: "2")
                        
                        
                        WholeViewV(priEspaverdeV: "Tú eres inteligente", segMixverdeV: "Mau ku inteligente", priEspablancoV: "Él ayuda mucho", segMixblancoV: "Mara ñi'i tyinty", priEsparojoV: "Ella horneó un pastel", segMixrojoV: "Make isa'a nu pastel", number: "3")
                        
                         WholeViewV(priEspaverdeV: "Nosotros estamos aquí", segMixverdeV: "Mayo nyayo  iya", priEspablancoV: "El carro es mío", segMixblancoV: "Carru mai ku", priEsparojoV: "Ése es el gato de ellos", segMixrojoV: "Vilu machi ku", number: "4")
                        
                        
                        
                    }
                }
            }
            //   .offset(x: 0, y: 10)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
