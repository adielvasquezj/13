//
//  Prueba_Uno.swift
//  Proyecto
//
//  Created by kernel-root on 6/1/20.
//  Copyright © 2020 kernel-root. All rights reserved.
//

import SwiftUI

struct Prueba_Uno: View {
  @ObservableObject var tienda = courseData()
    @State var activeIndex = -1
    
    var body: some View {

       GeometryReader { bounds in
            ZStack {
                Color.black.opacity(0.3) //Pendiente
                    .animation(.linear)
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 30) {
                    Text("Cursos")
                        .font(.largeTitle)
                        .fontWeight(.bold).frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                        .padding(.top, 30)
                        .blur(radius: 1) //Pendiente
                    
                 
                    
                }
            }
        }
        
    }
}

struct Prueba_Uno_Previews: PreviewProvider {
    static var previews: some View {
        Prueba_Uno()
    }
}


let screen = UIScreen.main.bounds

struct Course: Identifiable {
    var id = UUID()
    var title : String
    var subTitle: String
    var image: URL
    var logo: UIImage
    var color: UIColor
    var show: Bool
    
}


var courseData = [
    
    Course(title: "Diseño en SwiftUI", subTitle: "Sección 19", image: URL(string: "https://dl.dropbox.com/s/zc12olnzj4lvo6h/Card4%402x.png?dl=0")!,
           logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), show: false),
    Course(title: "Diseño en SwiftUI", subTitle: "Sección 19", image: URL(string: "https://dl.dropbox.com/s/pnva9rwjs6nx9ik/Card2%402x.png?dl=0")!, logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), show: false),
    Course(title: "Diseño en SwiftUI", subTitle: "Sección 19", image: URL(string: "https://dl.dropbox.com/s/pnva9rwjs6nx9ik/Card2%402x.png?dl=0")!, logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), show: false),
    
    
]
