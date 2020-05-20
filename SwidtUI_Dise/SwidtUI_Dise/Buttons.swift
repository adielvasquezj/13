//
//  Buttons.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/20/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct Buttons: View {
    @State var tap = false
    @State var press = false
    var body: some View {
        VStack {
            Text("Botón")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 200, height: 60)
                .background(
                    ZStack {
                        Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0.8376570344, green: 0.8434004188, blue: 1, alpha: 1))
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .foregroundColor(Color(press ? #colorLiteral(red: 0.8376570344, green: 0.8434004188, blue: 1, alpha: 1) : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .blur(radius: 4)
                            .offset(x: -8, y: -8)
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            //  .foregroundColor(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8376570344, green: 0.8434004188, blue: 1, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                
                        )
                            .padding(2)
                            .blur(radius: 2)
                        
                    }
            )
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .overlay(
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 24, weight: .light))
                            .foregroundColor(Color.white.opacity(press ? 0 : 1))
                            .frame(width:press ? 64 : 54, height:press ? 4 : 50)
                            .background(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                            .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.3), radius: 10, x: 10, y: 10)
                            .offset(x: press ? 70 : -10, y: press ? 16 : 0)
                        Spacer()
                    }
            )
                .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) :  #colorLiteral(red: 0.8376570344, green: 0.8434004188, blue: 1, alpha: 1)), radius: 20, x: 20, y: 20)
                .shadow(color: Color(press ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
                .scaleEffect(tap ? 1.2 : 1)
                .gesture(
                    LongPressGesture(minimumDuration: 0.5, maximumDistance: 10)
                        .onChanged { value in
                            self.tap = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                self.tap = false
                            }
                    }
                    .onChanged { value in
                        self.press.toggle()
                    }
            )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.8376570344, green: 0.8434004188, blue: 1, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
        .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
