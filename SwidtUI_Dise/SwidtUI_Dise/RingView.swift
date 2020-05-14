//
//  RingView.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/14/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct RingView: View {
    var body: some View {
        ZStack {
        
            Circle()
                .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5))
                .frame(width: 44, height: 44)
                //Aqui marca el progreso del circulo
                Circle()
                .trim(from: 0.2, to: 1)
                .stroke(
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomLeading),
                    style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0)
         
            )
            
            .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
            .frame(width: 44, height: 44)
                .shadow(color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)).opacity(0.1), radius: 3, x: 0, y: 3)
            Text("82%")
                .font(.subheadline)
                .fontWeight(.bold)
            
            
            
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
