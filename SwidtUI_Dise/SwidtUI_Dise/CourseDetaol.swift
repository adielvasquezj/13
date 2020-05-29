//
//  CourseDetaol.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/15/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct CourseDetail: View {
    var course: Course
    @Binding var show: Bool
    @Binding var active : Bool
    @Binding var activeIndex : Int
    @Binding var isScrolable: Bool
    var bounds : GeometryProxy
    
    var body: some View {
        
       ScrollView {
        VStack(spacing: 0) {
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
                        
                            
                            VStack {
                                Image(systemName: "xmark")
                                    .font(.system(size: 16, weight: .medium))
                                    .foregroundColor(.white)
                            }
                            .frame(width: 36, height: 36)
                            .background(Color.black)
                            .clipShape(Circle())
                            .onTapGesture {
                                self.show = false
                                self.active = false
                                self.activeIndex = -1
                                self.isScrolable = false
                            }
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
                    .frame(maxWidth: show ? .infinity : bounds.size.width - 60)
            .frame(height: show ? 460 : 280)
                    .background(Color(course.color))
                    .clipShape(RoundedRectangle(cornerRadius: getCardCornerRadius(bounds: bounds), style: .continuous))
                    .shadow(color: Color(course.color).opacity(0.3), radius: 20, x: 0, y: 20)
                VStack(alignment: .leading, spacing: 30.0) {
                    Text("La industria artificial de alimentos chatarra es un negocio en grande, por eso hay tanto enfermo en el mundo de diabetes, obesidad, hipertensión, entre otras, Y ahora con el coronavirus los está rematando solamente.")
                    
                    Text("objetivo")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("La industria artificial de alimentos chatarra es un negocio en grande, por eso hay tanto enfermo en el mundo de diabetes, obesidad, hipertensión, entre otras, Y ahora con el coronavirus los está rematando solamente.")
                    
                    Text("La industria artificial de alimentos chatarra es un negocio en grande, por eso hay tanto enfermo en el mundo de diabetes, obesidad, hipertensión, entre otras, Y ahora con el coronavirus los está rematando solamente.")
                    
                    
                    
                }
                .padding(30)
                
            }
        }
       .edgesIgnoringSafeArea(.all)
        
    }
}

struct CourseDetaol_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { bounds in
        CourseDetail(course: courseData[0], show: .constant(true), active: .constant(true), activeIndex: .constant(-1), isScrolable: .constant(true), bounds: bounds)
        }
    }
}
