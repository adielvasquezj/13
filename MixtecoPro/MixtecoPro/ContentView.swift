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
                        
                        HomeIxtaViewH(priEspaverdeH: "shdhd", segMixverdeH: "djdndndn", tercEspaverdeH: "dndnd", cuartMixverdeH: "dndndnd", priEspablancoH: "dndndnd", segMixblancoH: "dndndnd", tercEspablancoH: "dndnd", cuarMixblancoH: "dndnd", priEsparojoH: "dndnd", segMixrojoVH: "dmdmd", tercEsparojoH: "dndnd", cuarMixrojoH: "dndndn", numero: "1")
                        
                        WholeViewV(priEspaverdeV: "MMDMDMD", segMixverdeV: "SNSNNSNS", priEspablancoV: "SNSNSNSNNS", segMixblancoV: "SNSNSNS", priEsparojoV: "SNSNSNSNSNS", segMixrojoV: "SNSNSNSNS", number: "2")
                        HomeIxtaViewH(priEspaverdeH: "shdhd", segMixverdeH: "djdndndn", tercEspaverdeH: "dndnd", cuartMixverdeH: "dndndnd", priEspablancoH: "dndndnd", segMixblancoH: "dndndnd", tercEspablancoH: "dndnd", cuarMixblancoH: "dndnd", priEsparojoH: "dndnd", segMixrojoVH: "dmdmd", tercEsparojoH: "dndnd", cuarMixrojoH: "dndndn", numero: "3")
                        
                        WholeViewV(priEspaverdeV: "MMDMDMD", segMixverdeV: "SNSNNSNS", priEspablancoV: "SNSNSNSNNS", segMixblancoV: "SNSNSNS", priEsparojoV: "SNSNSNSNSNS", segMixrojoV: "SNSNSNSNS", number: "4")
                        
                        
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
