//
//  DataStore.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/15/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = [ ]
    
    init() {
        getPost()
    }
    
    func getPost() {
        Api().getPost { (posts) in
            self.posts = posts
        }
    }
}
