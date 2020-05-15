//
//  PostList.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/15/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct PostList: View {
    @ObservedObject var store = DataStore()
    
    var body: some View {
        List(store.posts) { post in
            VStack(alignment: .leading, spacing: 8.0) {
                Text(post.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                Text(post.body)
                    .font(.subheadline)
                    .foregroundColor(Color("secondary"))
            }
            
            
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
