//
//  CourseList.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/14/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct CourseList: View {
    @State var courses = courseData
    @State var active = false
    @State var activeIndex = -1
    
    var body: some View {
        ZStack {
            Color.black.opacity(active ? 0.4 : 0)
                .animation(.linear)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 30.0) {
                    Text("Cursos")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                        .padding(.top, 30)
                        .blur(radius: active ? 20 : 0)
                    // CourseView(show: $show)
                    //GeometryReader es para detectar tipo de pantalla
                    ForEach(courses.indices, id: \.self) { index in
                        GeometryReader { geometry in
                            
                            
                            CourseView(show: self.$courses[index].show,
                                       active: self.$active, index: index, activeIndex: self.$activeIndex,
                                       course: self.courses[index])
                                .offset(y: self.courses[index].show ? -geometry.frame(in: .global).minY : 0)
                                .opacity(self.activeIndex != index && self.active ? 0 : 1)
                                .scaleEffect(self.activeIndex != index && self.active ? 0.5 : 1)
                                .offset(x: self.activeIndex != index && self.active ? screen.width : 0)
                            
                        }
                        .frame(height: 280)
                        .frame(maxWidth: self.courses[index].show ? .infinity : screen.width - 60)
                            //.zIndex Es para encimar algo
                            .zIndex(self.courses[index].show ? 1: 0)
                    }
                    
                }
                .frame(width: screen.width)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            }
                
            .statusBar(hidden: active ? true : false)
            .animation(.easeInOut)
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}

struct CourseView: View {
    @Binding var show: Bool
    @Binding var active: Bool
    var index: Int
    @Binding var activeIndex: Int
    var course: Course
    @State var activeView = CGSize.zero
    var body: some View {
        ZStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 30.0) {
                Text("La industria artificial de alimentos chatarra es un negocio en grande, por eso hay tanto enfermo en el mundo de diabetes, obesidad, hipertensión, entre otras, Y ahora con el coronavirus los está rematando solamente.")
                
                Text("objetivo")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("La industria artificial de alimentos chatarra es un negocio en grande, por eso hay tanto enfermo en el mundo de diabetes, obesidad, hipertensión, entre otras, Y ahora con el coronavirus los está rematando solamente.")
                
                Text("La industria artificial de alimentos chatarra es un negocio en grande, por eso hay tanto enfermo en el mundo de diabetes, obesidad, hipertensión, entre otras, Y ahora con el coronavirus los está rematando solamente.")
                
                
                
            }
            .padding(30)
            .frame(maxWidth: show ? .infinity : screen.width - 60, maxHeight: show ? .infinity : 280, alignment: .top)
            .offset(y: show ? 450 : 0)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .opacity(show ? 1 : 0)
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text(course.title)
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color.white)
                        Text(course.subTitle)
                            .foregroundColor(Color.white.opacity(0.7))
                    }
                    Spacer()
                    ZStack {
                        Image(uiImage: course.logo)
                            .opacity(show ? 0 : 1)
                        
                        VStack {
                            Image(systemName: "xmark")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundColor(.white)
                        }
                        .frame(width: 36, height: 36)
                        .background(Color.black)
                        .clipShape(Circle())
                        .opacity(show ? 1 : 0)
                    }
                }
                Spacer()
                Image(uiImage: course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .frame(height: 140, alignment: .top)
                
            }
            .padding(show ? 30 : 20)
            .padding(.top, show ? 30 : 0)
                //.frame(width:show ?  screen.width : screen.width - 60, height: show ? screen.height : 280)
                .frame(maxWidth: show ? .infinity : screen.width - 60, maxHeight: show ? 460 : 280)
                .background(Color(course.color))
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color(course.color).opacity(0.3), radius: 20, x: 0, y: 20)
                
                .gesture(
                    show ?
                        DragGesture().onChanged { value in
                            if value.translation.height < 300 {
                                self.activeView = value.translation
                            }
                        }
                        .onEnded { value in
                            if self.activeView.height > 50 {
                                self.show = false
                                self.active = false
                                self.activeIndex = -1
                                
                            }
            self.activeView = .zero
            
        }
        : nil
            )
                
                .onTapGesture {
                    self.show.toggle()
                    self.active.toggle()
                    if self.show {
                        self.activeIndex = self.index
                    } else {
                        self.activeIndex = -1
                    }
            }
            
        }
        .frame(height: show ? screen.height: 280)
        .scaleEffect(1 - self.activeView.height / 1000)
        .rotation3DEffect(Angle(degrees: Double(self.activeView.height / 10)), axis: (x: 0, y: 10, z: 0))
        .hueRotation(Angle(degrees: Double(self.activeView.height)))
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        .edgesIgnoringSafeArea(.all)
    }
}

struct Course: Identifiable {
    var id = UUID()
    var title : String
    var subTitle: String
    var image: UIImage
    var logo: UIImage
    var color: UIColor
    var show: Bool
    
}


var courseData = [
    
    Course(title: "Diseño en SwiftUI", subTitle: "Sección 19", image: #imageLiteral(resourceName: "Card5"), logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), show: false),
    Course(title: "Diseño en SwiftUI 1", subTitle: "Sección 20", image: #imageLiteral(resourceName: "Background1"), logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), show: false),
    Course(title: "Diseño en SwiftUI 2", subTitle: "Sección 21", image: #imageLiteral(resourceName: "Card5"), logo: #imageLiteral(resourceName: "Logo1"), color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), show: false),
    
]
