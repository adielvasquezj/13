//
//  PieView.swift
//  07_Draw
//
//  Created by roott on 6/6/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct PieView: View {
    var body: some View {
        
        ZStack {
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250),
                            radius: 160,
                            startAngle: Angle(degrees: 0), endAngle:
                    Angle(degrees: 200), clockwise: true)
                
                
            }
            .fill(Color(.systemBlue))
            
        
        
        Path() { path in
                   
                   path.move(to: CGPoint(x: 200, y: 250))
                   
                   path.addArc(center: CGPoint(x: 200, y: 250),
                               radius: 160,
                               startAngle: Angle(degrees: 200), endAngle:
                       Angle(degrees: 160), clockwise: true)
                   
                   
               }
               .fill(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
            .offset(x: -30, y: 0)
            
            Path() { path in
                       
                       path.move(to: CGPoint(x: 200, y: 250))
                       
                       path.addArc(center: CGPoint(x: 200, y: 250),
                                   radius: 160,
                                   startAngle: Angle(degrees: 200), endAngle:
                           Angle(degrees: 160), clockwise: true)
                path.closeSubpath()
                       
                       
                   }
            .stroke(Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)),lineWidth: 10)
                .offset(x: -30, y: 0)
            .overlay(
                Text("11.1%")
                    .font(.system(.largeTitle, design: .rounded))
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .offset(x: -140, y: -160)
            )
            
        
            
            Path() { path in
                              
                              path.move(to: CGPoint(x: 200, y: 250))
                              
                              path.addArc(center: CGPoint(x: 200, y: 250),
                                          radius: 160,
                                          startAngle: Angle(degrees: 160), endAngle:
                                  Angle(degrees: 110), clockwise: true)
                              
                              
                          }
                          .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            
            Path() { path in
                              
                              path.move(to: CGPoint(x: 200, y: 250))
                              
                              path.addArc(center: CGPoint(x: 200, y: 250),
                                          radius: 160,
                                          startAngle: Angle(degrees: 110), endAngle:
                                  Angle(degrees: 0), clockwise: true)
                              
                              
                          }
                          .fill(Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
        }
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView()
    }
}
