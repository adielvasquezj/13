//
//  0.swift
//  Project0
//
//  Created by kernel-root on 4/27/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import Foundation
import SwiftUI

//Vertival Cuadro
struct printVertical: View {
    
    var espñol = " "
    var mixteco = " "
    
    var body: some View {
       
        
        VStack(spacing: 6) {
            Text(espñol)
                .fontWeight(.bold)
                
                .frame(minWidth: 410, idealWidth: 410, maxWidth: 410, minHeight: 30, idealHeight: 10, maxHeight: .infinity, alignment: .center)
                
                .font(.title)
                .background(Color.blue)
            .cornerRadius(12)
            
            
            
            Text(mixteco)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
                .padding(.horizontal)
                .background(Color.gray)
        }
            
        .background(Color.gray)
        .opacity(0.7)
    }
}




