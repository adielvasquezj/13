//
//  NewPath.swift
//  07_Dibujo
//
//  Created by kernel-root on 5/2/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct NewPath: View {
    var body: some View {
        ZStack {
            Path() { path in
                path.move(to: CGPoint(x: 60, y: 130))
                path.addLine(to: CGPoint(x: 130, y: 60))
                
                path.addLine(to: CGPoint(x: 200, y: 130))
                
                
            }
                
            .fill(Color.orange)
            Path() { path in
                path.move(to: CGPoint(x: 30, y: 130))
                path.addLine(to: CGPoint(x: 60, y: 130))
                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 60))
                path.addLine(to: CGPoint(x: 230, y: 130))
                path.addLine(to: CGPoint(x: 230, y: 250))
                path.addLine(to: CGPoint(x: 30, y: 250))
                
            }
                
            .fill(Color.blue)
            
            Path() { path in
                path.move(to: CGPoint(x: 30, y: 130))
                path.addLine(to: CGPoint(x: 60, y: 130))
                path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y: 60))
                path.addLine(to: CGPoint(x: 230, y: 130))
                path.addLine(to: CGPoint(x: 230, y: 250))
                path.addLine(to: CGPoint(x: 30, y: 250))
                path.closeSubpath()
                
            }
            .stroke(Color.gray, lineWidth: 10)
            
        }
    }
}

struct NewPath_Previews: PreviewProvider {
    static var previews: some View {
        NewPath()
    }
}
