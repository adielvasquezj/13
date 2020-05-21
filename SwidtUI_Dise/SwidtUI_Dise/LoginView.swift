//
//  LoginView.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/20/20.
//  Copyright © 2020 roott. All rights reserved.
//Geometry reader detecta el tamaño d la pantaya!

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color.black
                .edgesIgnoringSafeArea(.all)
            Color("background2")
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .edgesIgnoringSafeArea(.bottom)
            
            VStack {
                GeometryReader { geometry in
                    Text("Aprende SwiftUI, \nDesde 0")
                        .font(.system(size: geometry.size.width/10, weight: .bold))
                        .foregroundColor(.white)
                    
                }
                .frame(maxWidth: 375, maxHeight: 100)
                .padding(.horizontal, 16)
                
                
                Text("By Adiel Jimenez :) 😂")
                    .font(.subheadline)
                    .frame(width: 250)
                
                
                Spacer()
            }
            .multilineTextAlignment(.center)
            .padding(.top, 100)
            .frame(height: 477)
            .frame(maxWidth: .infinity)
            .background(
                
                ZStack {
                    Image(uiImage: #imageLiteral(resourceName: "Blob"))
                        .offset(x: -150, y: -200)
                        .blendMode(.plusDarker)
                    Image(uiImage: #imageLiteral(resourceName: "Blob"))
                        .offset(x: -200, y: -250)
                        .blendMode(.overlay)
            })
                .background(ZStack {
                    Image(uiImage: #imageLiteral(resourceName: "Card2"))
                }, alignment: .bottom)
                .background(Color(#colorLiteral(red: 0.4078431373, green: 0.4705882353, blue: 0.9725490196, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        //   .previewDevice("iPad Air 2")
    }
}
