//
//  FirstView.swift
//  MixtecoPro
//
//  Created by kernel-root on 5/1/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        
       VStack {
       //WholeViewWI()
        Text(" ")
        }
        
        
    }
    
}
struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

struct WholeViewV: View {
    
    var priEspaverdeV: String
    var segMixverdeV: String
    
    var priEspablancoV: String
    var segMixblancoV: String
    
    var priEsparojoV: String 
    var segMixrojoV: String
    
    var number : String
    
    var body: some View {
        VStack {
            
            
            Image("girls")
                .resizable()
                .frame(width: 368, height: 320, alignment: .center)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(12)
                .overlay(RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))))
                .opacity(0.9)
                .padding(.horizontal)
                .overlay(
                    VStack(alignment: .center, spacing: 4) {
                        VStack(alignment: .center, spacing: 20) {
                            Text(priEspaverdeV)
                                .frame(width: 365, height: 35, alignment: .center)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            
                            
                            Text(segMixverdeV)
                                .frame(width: 365, height: 35, alignment: .center)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)).opacity(0.4))
                                .cornerRadius(12).overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            Text(priEspablancoV)
                                .frame(width: 365, height: 35, alignment: .center)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            
                            
                            Text(segMixblancoV)
                                .frame(width: 365, height: 35, alignment: .center)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            Text(priEsparojoV)
                                .frame(width: 365, height: 35, alignment: .center)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            
                            
                            Text(segMixrojoV)
                                .frame(width: 365, height: 35, alignment: .center)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                                .overlay(
                                    Text(number)
                                        .frame(width: 23, height: 23)
                                        .font(.system(size: 23, weight: .semibold, design: .rounded))
                                        .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9))
                                        .clipShape(Circle())
                                        .overlay(RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                                        .offset(x: 168, y: -288)
                                    
                            )
                            
                            
                        }
                        
                    }
                    
                    
            )
            
            
            Spacer()
            
        }
    }
}
