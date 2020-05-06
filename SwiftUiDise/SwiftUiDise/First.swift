//
//  First.swift
//  SwiftUiDise
//
//  Created by kernel-root on 5/5/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct First: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct First_Previews: PreviewProvider {
    static var previews: some View {
        First()
    }
}


struct HomeViewG: View {
    var body: some View {
        VStack {
            
            Image("girls")
                .resizable()
                .frame(width: 370, height: 310, alignment: .center)
                .cornerRadius(12)
                .shadow(radius: 12)
                // .opacity(0.9)
                .overlay(RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))))
                .overlay(
                    
                    VStack(alignment: .center, spacing: 17) {
                        
                        Text("ff")
                            .font(.system(size: 23, weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(9.9))
                            .frame(width: 360, height: 35)
                            .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)).opacity(0.4))
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                        
                        Text("xxxxxxxff")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(9.9))
                            .frame(width: 360, height: 35)
                            .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)).opacity(0.4))
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                        Text("ff")
                            .font(.system(size: 23, weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .frame(width: 360, height: 35)
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                        
                        Text("ff")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .frame(width: 360, height: 35)
                            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                        
                        Text("ff")
                            .font(.system(size: 23, weight: .bold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(9.9))
                            .frame(width: 360, height: 35)
                            .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)).opacity(0.4))
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                        
                        Text("ff")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(9.9))
                            .frame(width: 360, height: 35)
                            .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)).opacity(0.4))
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            .overlay(
                                
                                
                                VStack {
                                    Text("1")
                                        .font(.system(size: 23, weight: .bold, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.9))
                                        .frame(width: 25, height: 25)
                                        .background(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)).opacity(0.8))
                                        .cornerRadius(12)
                                        .overlay(RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)).opacity(0.9)))
                                        .offset(x:170, y: -273)
                                }
                                
                        )
                        
                    }
                    
                    
                    
                    
            )
        }
    }
}

struct HomoViveI: View {
    var body: some View {
        VStack {
            Image("ixtayutla")
                .resizable()
                .frame(width: 370, height: 310, alignment: .center)
                .cornerRadius(12)
                .shadow(radius: 12)
                .opacity(0.9)
                .overlay(RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1))))
                
                
                .overlay(
                    
                    VStack(alignment: .center, spacing: 16) {
                        
                        HStack {
                            Text("fffffff")
                                .font(.system(size: 23, weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(9.9))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                            Text("fffffffff")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                        }
                        HStack {
                            Text("ff")
                                .font(.system(size: 23, weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(9.9))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                            Text("ff")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                        }
                        HStack {
                            Text("ff")
                                .font(.system(size: 23, weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(9.9))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                            Text("ff")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                        }
                        HStack {
                            Text("ff")
                                .font(.system(size: 23, weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(9.9))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                            Text("ff")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                        }
                        HStack {
                            Text("ff")
                                .font(.system(size: 23, weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(9.9))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                            Text("ff")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                        }
                        HStack {
                            Text("ff")
                                .font(.system(size: 23, weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.9))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                            
                            
                            Text("ff")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                                .frame(width: 180, height: 35)
                                .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)).opacity(0.4))
                                .cornerRadius(12)
                                .overlay(RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)).opacity(0.9)))
                                .overlay(
                                    
                                    Text("1")
                                        .font(.system(size: 23, weight: .bold, design: .rounded))
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)).opacity(0.9))
                                        .frame(width: 25, height: 25)
                                        .background(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)).opacity(0.8))
                                        .cornerRadius(12)
                                        .overlay(RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)).opacity(0.9)))
                                        .offset(x:75, y: -275)
                                    
                                    
                            )
                            
                            
                        }
                        
                        
                        
                        
                        
                    }
                    
                    
                    
                    
            )
        }
    }
}
