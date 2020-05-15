//
//  PostList.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/15/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct PostList: View {
    @State var posts: [Post] = []
    
    var body: some View {
        List(posts) { post in
            Text(post.title)
                
            }
        .onAppear {
            Api().getPost { (posts) in
                self.posts = posts
            }
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
