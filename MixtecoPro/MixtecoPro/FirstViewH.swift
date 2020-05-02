//
//  FirstViewH.swift
//  MixtecoPro
//
//  Created by kernel-root on 5/1/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct FirstViewH: View {
    var body: some View {
        VStack {
            Text("d")
        // HomeIxtaView()
            Spacer()
        }
        
    }
}

struct FirstViewH_Previews: PreviewProvider {

    
    static var previews: some View {
        FirstViewH()
    }
}

struct HomeIxtaViewH: View {
    
    var priEspaverdeH: String
       var segMixverdeH: String
       var tercEspaverdeH: String
          var cuartMixverdeH: String
       
       var priEspablancoH: String
       var segMixblancoH: String
       var tercEspablancoH: String
          var cuarMixblancoH: String
       
       var priEsparojoH: String
       var segMixrojoVH: String
       var tercEsparojoH: String
          var cuarMixrojoH: String
    var numero : String 
    
    var body: some View {
        VStack {
            Image("ixta")
                .resizable()
                .frame(width: 368, height: 320, alignment: .center)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(12)
                .overlay(RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))))
                .opacity(0.9)
                .padding(.horizontal)
                .overlay(
                    VStack(alignment: .center, spacing: 13) {
                        HStack(alignment: .center, spacing: 5) {
                            
                            
                            Text(priEspaverdeH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            
                            
                            Text(segMixverdeH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                        }
                        HStack(alignment: .center, spacing: 5) {
                            
                            
                            Text(tercEspaverdeH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            
                            
                            Text(cuartMixverdeH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                        }
                        HStack(alignment: .center, spacing: 5) {
                            
                            
                            Text(priEspablancoH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            
                            
                            Text(segMixblancoH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                        }
                        HStack(alignment: .center, spacing: 5) {
                            
                            
                            Text(tercEspablancoH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            
                            
                            Text(cuarMixblancoH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                        }
                        HStack(alignment: .center, spacing: 5) {
                            
                            
                            Text(priEsparojoH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            
                            
                            Text(segMixrojoVH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                        }
                        HStack(alignment: .center, spacing: 5) {
                            
                            
                            Text(tercEsparojoH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                            
                            
                            
                            Text(cuarMixrojoH)
                                .frame(width: 178, height: 40, alignment: .center)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                //.fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                                .overlay(
                                    
                                    
                                    Text(numero)
                                        .frame(width: 23, height: 23)
                                        .font(.system(size: 23, weight: .semibold, design: .rounded))
                                        .background(Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                                        .clipShape(Circle())
                                        .overlay(RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                                        .offset(x: 85, y: -280)
                                    
                                    
                            )
                        }
                        
                        
                        
                    }
                    
                    
                    
            )
            
        }
    }
}
