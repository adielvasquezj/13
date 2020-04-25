//
//  ContentView.swift
//  First_App
//
//  Created by kernel-root on 4/24/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("""
Aviso de privacidad
simplificado del acta de nacimiento
 en línea La recolección de
 datos personales se lleva a cabo a
 través de www.gob.mx/actanacimiento.

Cuyo administrador y responsable del tratamiento es la Unidad de Gobierno Digital de la Secretaría de la Función Pública.

      
""")
            .font(.largeTitle)
            .font(.custom("Gill Sans", size: 19))
            .foregroundColor(Color.blue)
            .multilineTextAlignment(.center)
            //.padding(.horizontal)
            .padding(.horizontal)
            .truncationMode(.middle)
            .lineLimit(nil)
            .lineLimit(23)
           // .rotationEffect(.init(degrees: 36))
            .rotation3DEffect(Angle(degrees: 50), axis: (x: 0, y: 0, z: 0))
            .shadow(color: .green, radius: 1, x: 0, y: 19)
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
          
    }
}
