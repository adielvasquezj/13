//
//  project1.swift
//  07_Draw
//
//  Created by roott on 6/6/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct project1: View {
    var body: some View {
        
        
        
        ZStack {
            //  Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            //.edgesIgnoringSafeArea(.all)
            VStack {
                GeometryReader { bounds in
                    
                    
                    VStack {
                        
                        
                        ScrollView {
                            
                            HStack {
                                Text("Aprende Mixteco")
                                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .font(.title)
                                    .fontWeight(.black)
                                    //   .padding(.horizontal, 30)
                                    .font(.system(size: 30, weight: .bold, design: .rounded))
                                    .padding(.horizontal)
                                HStack {
                                    Image("ixta")
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                    // .offset(y: 30)
                                }
                                
                                //  Spacer()
                            }
                            
                            
                            
                            
                            Textos(espanol: "Hello world we are anonymous", mixteco: "Hola mundo somos anonymous")
                            Textos(espanol: "Hello world we are ansonymous", mixteco: "Hola musndo somos anonymous")
                            Textos(espanol: "Hello world we are ansonymous", mixteco: "Holas mundo somos anonymous")
                            Textos(espanol: "Hello world we asre anonymous", mixteco: "Hola munsdo somos anonymous")
                            
                            
                        }
                            
                        .padding(10)
                        
                    }
                    .offset(x: 0, y: 40)
                    
                }
                
            }
                
            .background(LinearGradient(gradient: Gradient(colors: [Color("first"), Color("second")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct project1_Previews: PreviewProvider {
    static var previews: some View {
        project1()
    }
}

/*
 
 Textos(espanol: "Hello world we are anonymous", mixteco: "Hola mundo somos anonymous")
 Textos(espanol: "Hello world we are ansonymous", mixteco: "Hola musndo somos anonymous")
 Textos(espanol: "Hello world we are ansonymous", mixteco: "Holas mundo somos anonymous")
 Textos(espanol: "Hello world we asre anonymous", mixteco: "Hola munsdo somos anonymous")
 
 .background(LinearGradient(gradient: Gradient(colors: [Color("first"), Color("second")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
 
 */
