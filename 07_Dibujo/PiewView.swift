//
//  PiewView.swift
//  07_Dibujo
//
//  Created by kernel-root on 5/2/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct PiewView: View {
    var body: some View {
        
        ZStack {
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 200), clockwise: true)
                
            }
            .fill(Color(.systemYellow))
            
            
            
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 200), endAngle: Angle(degrees: 160), clockwise: true)
                
            }
            .fill(Color(.systemBlue))
            
            
            
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 160), endAngle: Angle(degrees: 110), clockwise: true)
                
            }
            .fill(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
            
            
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 0), clockwise: true)
                
            }
            .fill(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
            
            
        }
        
    }
}

struct PiewView_Previews: PreviewProvider {
    static var previews: some View {
        PiewView()
    }
}
