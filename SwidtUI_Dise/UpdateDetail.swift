
//
//  UpdateDetail.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/13/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update: Update = updateData[1]
    
    var body: some View {
        
        
        
        
        ScrollView {
            VStack {
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                Text(update.text)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
            }
            .navigationBarTitle(update.title)
        }
        
        
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
