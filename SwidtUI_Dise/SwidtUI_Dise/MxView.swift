//
//  MxView.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/28/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI
import Lottie

struct MxView: UIViewRepresentable {
        typealias UIViewType = UIView
    var fileName: String
    
    func makeUIView(context: UIViewRepresentableContext<MxView>) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = AnimationView()
        let animation = Animation.named(fileName)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<MxView>) {
        
    }
    
    
}
