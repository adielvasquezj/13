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
        
        VStack {
            Path() { path in
                
                path.move(to: CGPoint(x: 200, y: 250))
                path.addArc(center: CGPoint(x: 200, y: 250), radius: 160, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: true)
                
            }
            .fill(Color.yellow)
           
        }
        
    }
}

struct PiewView_Previews: PreviewProvider {
    static var previews: some View {
        PiewView()
    }
}
