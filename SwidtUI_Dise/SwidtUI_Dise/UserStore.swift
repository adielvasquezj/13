//
//  UserStore.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/28/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI
import Combine

class UserStore: ObservableObject {
    @Published var isLogged: Bool = UserDefaults.standard.bool(forKey: "isLogged") {
        didSet {
            UserDefaults.standard.set(self.isLogged, forKey: "isLogged")
        }
    }
    @Published var showLogin = false 
}
