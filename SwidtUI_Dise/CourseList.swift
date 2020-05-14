//
//  CourseList.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/14/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct CourseList: View {
  var body: some View {
        VStack {
            CourseView()
        }
        
        
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}

struct CourseView: View {
    @State var show = false
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 30.0) {
                Text("La industria artificial de alimentos chatarra es un negocio en grande, por eso hay tanto enfermo en el mundo de diabetes, obesidad, hipertensión, entre otras, Y ahora con el coronavirus los está rematando solamente.")
                
                Text("objetivo")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("La industria artificial de alimentos chatarra es un negocio en grande, por eso hay tanto enfermo en el mundo de diabetes, obesidad, hipertensión, entre otras, Y ahora con el coronavirus los está rematando solamente.")
                
                Text("La industria artificial de alimentos chatarra es un negocio en grande, por eso hay tanto enfermo en el mundo de diabetes, obesidad, hipertensión, entre otras, Y ahora con el coronavirus los está rematando solamente.")
                
                
                
            }
            .padding(30)
            .frame(maxWidth: show ? .infinity : screen.width - 60, maxHeight: show ? .infinity : 280, alignment: .top)
            .offset(y: show ? 450 : 0)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .opacity(show ? 1 : 0)
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text("SwiftUI avanzado")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color.white)
                        Text("19 Secciónes")
                            .foregroundColor(Color.white.opacity(0.7))
                    }
                    Spacer()
                    ZStack {
                        Image(uiImage: #imageLiteral(resourceName: "Logo1"))
                            .opacity(show ? 0 : 1)
                        
                        VStack {
                            Image(systemName: "xmark")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white)
                        }
                        .frame(width: 36, height: 36)
                        .background(Color.black)
                        .clipShape(Circle())
                        .opacity(show ? 1 : 0)
                    }
                }
                Spacer()
                Image(uiImage: #imageLiteral(resourceName: "Card2"))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .frame(height: 140, alignment: .top)
                
            }
            .padding(show ? 30 : 20)
            .padding(.top, show ? 30 : 0)
                //.frame(width:show ?  screen.width : screen.width - 60, height: show ? screen.height : 280)
                .frame(maxWidth: show ? .infinity : screen.width - 60, maxHeight: show ? 460 : 280)
                .background(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.3), radius: 20, x: 0, y: 20)
                
                .onTapGesture {
                    self.show.toggle()
            }
          
        }
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
          .edgesIgnoringSafeArea(.all)
    }
}
