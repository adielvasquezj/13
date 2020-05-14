//
//  UpdateList.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/13/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct UpdateList: View {
    var body: some View {
        NavigationView {
            List(updateData) { update in
                NavigationLink(destination: UpdateDetail(update: update)) {
                    
                    HStack {
                        Image(update.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .cornerRadius(20)
                            .padding(.trailing, 4)
                        
                        VStack(alignment: .leading, spacing: 8.0) {
                            Text(update.title)
                                .font(.system(size: 20, weight: .bold))
                            
                            Text(update.text)
                                .lineLimit(2)
                                .font(.subheadline)
                                .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                            Text(update.date)
                                .font(.caption)
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationBarTitle(Text("Actualizaciones"))
        }
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}


struct Update: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var text: String
    var date: String
}

let updateData = [
    
    Update(image: "Card1", title: "Acta de nacimiento", text: "Expedición de la copia certificada del acta de nacimiento en línea", date: "Enero 1"),
    Update(image: "Card2", title: "Swift is fun", text: "Datos de filiación (nombre completo de madre, padre o persona que te registroPara pago en línea, tarjeta de crédito o débito", date: "Enero 4"),
    Update(image: "Card3", title: "Prueba", text: "Expedición de la copia certificada del acta de nacimiento en línea", date: "Enero 6"),
    Update(image: "Card4", title: "Documentos necesarios ", text: "Para tramitar tu copia certificada del acta de nacimiento en línea no es necesario ningún documento, sin embargo, debes contar con los siguientes datos:", date: "Enero 8"),
    Update(image: "Card5", title: "SwiftUI 4", text: "Texto", date: "Enero 9")
]
