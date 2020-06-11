//
//  CourseList.swift
//  SwidtUI_Dise
//
//  Created Adiel Jimenez on 5/14/20.
//  Copyright © 2020 Jimenez. All rights reserved.
//

import SDWebImageSwiftUI
import SwiftUI
import Contentful

struct CourseList: View {
    @ObservedObject var store = CourseStore()
    @State var active = false
    @State var activeIndex = -1
    @State var activeView = CGSize.zero
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var isScrolable = false
    
    var body: some View {
        GeometryReader { bounds in
            ZStack {
                Color.black.opacity(Double(self.activeView.height/500))
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
                            .blur(radius: self.active ? 20 : 0)
                        // CourseView(show: $show)
                        //GeometryReader es para detectar tipo de pantalla
                        ForEach(self.store.courses.indices, id: \.self) { index in
                            GeometryReader { geometry in
                                
                                
                                CourseView(show: self.$store.courses[index].show,
                                           active: self.$active, index: index, activeIndex: self.$activeIndex,
                                           course: self.store.courses[index], activeView: self.$activeView, bounds: bounds, isScrolable: self.$isScrolable
                                )
                                    .offset(y: self.store.courses[index].show ? -geometry.frame(in: .global).minY : 0)
                                    .opacity(self.activeIndex != index && self.active ? 0 : 1)
                                    .scaleEffect(self.activeIndex != index && self.active ? 0.5 : 1)
                                    .offset(x: self.activeIndex != index && self.active ? bounds.size.width : 0)
                                
                            }
                            .frame(height: self.horizontalSizeClass == .regular ? 80 : 280)
                            .frame(maxWidth: self.store.courses[index].show ? 712 : getCardWidth(bounds: bounds))
                                //.zIndex Es para encimar algo
                                .zIndex(self.store.courses[index].show ? 1: 0)
                        }
                        
                    }
                    .frame(width: bounds.size.width)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                }
                    
                .statusBar(hidden: self.active ? true : false)
                .animation(.linear)
                .disabled(self.active && !self.isScrolable ? true : false)
            }
        }
    }
}

func getCardWidth(bounds: GeometryProxy) -> CGFloat {
    if bounds.size.width > 712 {
        return 712
    }
    return  bounds.size.width - 60
}
func getCardCornerRadius(bounds: GeometryProxy) -> CGFloat {
    if bounds.size.width < 712 && bounds.safeAreaInsets.top < 44 {
        return 0
        
    }
    
    return 30
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
    @Binding var activeView : CGSize
    var bounds: GeometryProxy
    @Binding var isScrolable : Bool
    
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
            .animation(nil)
            .padding(30)
            .frame(maxWidth: show ? .infinity : screen.width - 60, maxHeight: show ? .infinity : 280, alignment: .top)
            .offset(y: show ? 450 : 0)
            .background(Color("background1"))
            .clipShape(RoundedRectangle(cornerRadius: show ? getCardCornerRadius(bounds: bounds) : 30, style: .continuous))
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
                        .offset(x: 2, y: -2)
                    }
                }
                Spacer()
                WebImage(url: course.image)
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
                .clipShape(RoundedRectangle(cornerRadius: show ? getCardCornerRadius(bounds: bounds) : 30, style: .continuous))
                .shadow(color: Color(course.color).opacity(0.3), radius: 20, x: 0, y: 20)
                
                .gesture(
                    show ?
                        DragGesture().onChanged { value in
                            guard value.translation.height < 300 else { return }
                            guard value.translation.height > 0 else { return }
                            
                            //self.activeView = value.translation
                            
                        }
                        .onEnded { value in
                            if self.activeView.height > 50 {
                                self.show = false
                                self.active = false
                                self.activeIndex = -1
                                self.isScrolable = false
                                
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
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        self.isScrolable = true
                    }
            }
            if isScrolable {
                CourseDetail(course: course, show: $show, active: $active, activeIndex: $activeIndex, isScrolable: $isScrolable, bounds: bounds)
                    .background(Color("background1"))
                    .clipShape(RoundedRectangle(cornerRadius: show ? getCardCornerRadius(bounds: bounds) : 30, style: .continuous))
                    .animation(nil)
                    .transition(.identity)
                
            }
            
        }
            
        .frame(height: show ? bounds.size.height + bounds.safeAreaInsets.top + bounds.safeAreaInsets.bottom : 280)
        .scaleEffect(1 - self.activeView.height / 1000)
        .rotation3DEffect(Angle(degrees: Double(self.activeView.height / 10)), axis: (x: 0, y: 10, z: 0))
        .hueRotation(Angle(degrees: Double(self.activeView.height)))
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        .gesture(
            show ?
                DragGesture().onChanged { value in
                    guard value.translation.height < 300 else { return }
                    guard value.translation.height > 50 else { return }
                    
                    self.activeView = value.translation
                    
                }
                .onEnded { value in
                    if self.activeView.height > 50 {
                        self.show = false
                        self.active = false
                        self.activeIndex = -1
                        self.isScrolable = false
                        
                    }
                    self.activeView = .zero
                    
                }
                : nil
        )
            .disabled(active && !isScrolable ? true : false)
            .edgesIgnoringSafeArea(.all)
    }
}

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
