//
//  LoginView.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/20/20.
//  Copyright © 2020 roott. All rights reserved.
//Geometry reader detecta el tamaño d la pantaya!

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.black
                .edgesIgnoringSafeArea(.all)
            Color("background2")
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .edgesIgnoringSafeArea(.bottom)
            
            CoverView()
            
            VStack {
                HStack {
                    Image(systemName: "person.crop.circle.fill")
                        .foregroundColor(Color((#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))))
                        .frame(width: 44, height: 44)
                        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                        .padding(.leading)
                    
                    
                    TextField("Tu Email".uppercased(), text: $email)
                        .keyboardType(.emailAddress)
                        .font(.subheadline)
                        //  .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading)
                        .frame(height: 44)
                }
                Divider().padding(.leading, 80)
                HStack {
                    Image(systemName: "lock.fill")
                        .foregroundColor(Color((#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))))
                        .frame(width: 44, height: 44)
                        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                        .padding(.leading)
                    
                    
                    SecureField("Contraseña".uppercased(), text: $password)
                        .keyboardType(.default)
                        .font(.subheadline)
                        //  .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading)
                        .frame(height: 44)
                }
            }
            .frame(height: 136)
            .frame(maxWidth: .infinity)
            .background(BlurView(style: .systemMaterial))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.15), radius: 20, x: 0, y: 20)
            .padding(.horizontal)
            .offset(y: 460)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        //   .previewDevice("iPad Air 2")
    }
}

struct CoverView: View {
    @State  var show = false
    @State var viewState = CGSize.zero
    @State var isDragging = false
    var body: some View {
        VStack {
            GeometryReader { geometry in
                Text("Learn design & code. \nFrom scratch")
                    .font(.system(size: geometry.size.width/10, weight: .bold))
                    .foregroundColor(.white)
                
            }
            .frame(maxWidth: 375, maxHeight: 100)
            .padding(.horizontal, 16)
            .offset(x: viewState.width/15, y: viewState.height/15)
            
            
            Text("By Adiel Jimenez :) 😂")
                .font(.subheadline)
                .frame(width: 250)
                .offset(x: viewState.width/20, y: viewState.height/20)
            
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
                    .rotationEffect(Angle(degrees: show ? 360+90 : 90))
                    .blendMode(.plusDarker)
                    //  .animation(Animation.linear(duration: 120).repeatForever(autoreverses: false))
                    .animation(nil)
                    .onAppear { self.show = true }
                Image(uiImage: #imageLiteral(resourceName: "Blob"))
                    .offset(x: -200, y: -250)
                    .rotationEffect(Angle(degrees: show ? 360 : 0), anchor: .leading)
                    .blendMode(.overlay)
                    // .animation(Animation.linear(duration: 120)
                    //.repeatForever(autoreverses: false))
                    .animation(nil)
        })
            .background(ZStack {
                Image(uiImage: #imageLiteral(resourceName: "Card2"))
                    .offset(x: viewState.width/25, y: viewState.height/26)
            }, alignment: .bottom)
            .background(Color(#colorLiteral(red: 0.4078431373, green: 0.4705882353, blue: 0.9725490196, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .scaleEffect(isDragging ? 0.9 : 1)
            .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
            .rotation3DEffect(Angle(degrees: 5), axis: (x: viewState.width, y: viewState.height, z: 0))
            
            
            .gesture(
                DragGesture().onChanged { value in
                    self.viewState = value.translation
                    self.isDragging = true
                }
                .onEnded { value in
                    self.viewState = .zero
                    self.isDragging = false
                }
        )
    }
}
