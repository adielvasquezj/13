//
//  TabBar.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/13/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            ContentView().tabItem {
                Image(systemName: "rectangle.stack.fill")
            }
        }
       // .edgesIgnoringSafeArea(.horizontal)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {

             TabBar().previewDevice("iPhone 11 Pro Max")
            TabBar().previewDevice("iPhone 8")
                        
        }
    }
}
