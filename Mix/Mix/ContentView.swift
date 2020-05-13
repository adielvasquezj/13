//
//  ContentView.swift
//  Mix
//
//  Created by kernel-root on 5/11/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//
import SwiftUI



struct Mix: Identifiable {
    let id: Int
    
    let name: String
    let type: String
    let color: Color
}

struct ContentView : View {
    @State var lista = [
        Mix(id: 1, name: "Adiel", type: "prueba", color: .red),
    ]
    var body: some View {
        
        NavigationView {
            
       
            List(lista) mixte in  {
                HStack {
                    
                    
                    
                }
                    
                }
            }
        }
        
        
    }
    
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
