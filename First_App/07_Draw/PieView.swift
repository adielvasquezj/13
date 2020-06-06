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
        
        Path() { path in
            
            path.move(to: CGPoint(x: 200, y: 250))
            path.addArc(center: CGPoint(x: 200, y: 250),
                        radius: 160,
                        startAngle: Angle(degrees: 0), endAngle:
                Angle(degrees: 90), clockwise: true)
            
            
        }
        .fill(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView()
    }
}
