//
//  MMxView.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/28/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct MMxView: View {
    var body: some View {
        VStack {
            MxView(fileName: "8597-eye")
                .frame(width: 150, height: 150)
        }
             
           
        
        
    }
}

struct MMxView_Previews: PreviewProvider {
    static var previews: some View {
        MMxView()
    }
}
