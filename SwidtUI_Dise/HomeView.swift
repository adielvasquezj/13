//
//  HomveView.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/13/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @Binding var showProfile: Bool
    @State var showUpdate = false
    @Binding var showContent: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                HStack(spacing: 12) {
                    Text("Vista")
                        // .font(.system(size: 28, weight: .bold))
                        .modifier(CustomFontModifier(size: 28))
                    
                    Spacer()
                    
                    AvatarView(showProfile: $showProfile)
                    Button(action: { self.showUpdate.toggle() }) {
                        Image(systemName: "bell")
                            .renderingMode(.original)
                            .font(.system(size: 16, weight: .medium))
                            .frame(width: 36, height: 36)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                        
                    }
                    .sheet(isPresented: $showUpdate) {
                        UpdateList()
                    }
                }
                .padding(.horizontal)
                .padding(.leading, 14)
                .padding(.bottom, 30)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    WatchRingsView()
                        .padding(.horizontal, 30)
                        .padding(.bottom, 30)
                        .onTapGesture {
                            self.showContent = true
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20){
                        ForEach(sectionData) { item in
                            GeometryReader { geometry in
                                SectionView(section: item)
                                    .rotation3DEffect(Angle(degrees: Double(geometry.frame(in: .global).minX - 30) / -20
                                        ),
                                                      axis: (x: 0, y: 10, z: 0))
                            }
                            .frame(width: 275, height: 275)
                        }
                    }
                    .padding(30)
                }
                .offset(y: -30)
                HStack {
                    Text("Mas")
                        .font(.title)
                        .bold()
                    Spacer()
                }
                .padding(.leading, 30)
                .offset(y: -35)
                
                SectionView(section: sectionData[2], width: screen.width - 60, height: 275)
                
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(false), showContent: .constant(false))
    }
}

struct SectionView: View {
    var section: Section
    var width: CGFloat = 275
    var height: CGFloat = 275
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(.white)
                Spacer()
                Image(section.logo)
            }
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: width, height: height)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}


struct  Section: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var logo: String
    var image: Image
    var color: Color
}

let sectionData = [
    Section(title: "Diseño en SwiftUI con Swift", text: "Sección 1", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Background1")), color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))),
    Section(title: "Apple es una compañia estadounidense", text: "Sección 2", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card1")), color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))),
    Section(title: "Swift is fun", text: "Sección 3", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card4")), color: Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))),
    Section(title: "Swift es un lenguage de programacion", text: "Sección 4", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card1")), color: Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))),
    Section(title: "Diseño en SwiftUI con Swift", text: "Sección 1", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Background1")), color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))),
    Section(title: "Apple es una compañia estadounidense", text: "Sección 2", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card1")), color: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))),
    Section(title: "Swift is fun", text: "Sección 3", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card4")), color: Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))),
    Section(title: "Swift es un lenguage de programacion", text: "Sección 4", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card1")), color: Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
]


struct WatchRingsView: View {
    var body: some View {
        HStack(spacing: 30) {
            HStack(spacing: 12.0) {
                RingView(color1: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), color2: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), width: 44, height: 44, percent: 68, show: .constant(true))
                VStack(alignment: .leading, spacing: 4.0) {
                    Text("Te faltan 3 horas").bold().modifier(FontModifier(style: .subheadline))
                    Text("Has leído 30 minutos hoy").modifier(FontModifier(style: .caption))
                }
                .modifier(FontModifier())
            }
            .padding(8)
            .background(Color.white)
            .cornerRadius(20)
            .modifier(ShadowModifier())
            
            HStack(spacing: 12.0) {
                RingView(color1: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), color2: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1), width: 33, height: 33, percent: 54, show: .constant(true))
                    
                    .modifier(FontModifier())
            }
            .padding(8)
            .background(Color.white)
            .cornerRadius(20)
            .modifier(ShadowModifier())
            HStack(spacing: 12.0) {
                RingView(color1: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), color2: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1), width: 33, height: 33, percent: 54, show: .constant(true))
                    
                    .modifier(FontModifier())
            }
            .padding(8)
            .background(Color.white)
            .cornerRadius(20)
            .modifier(ShadowModifier())
            
        }
    }
}
