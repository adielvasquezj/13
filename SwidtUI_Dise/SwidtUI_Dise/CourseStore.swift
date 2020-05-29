 //
 //  CourseStore.swift
 //  SwidtUI_Dise
 //
 //  Created by roott on 5/16/20.
 //  Copyright © 2020 roott. All rights reserved.
 //
 import SDWebImageSwiftUI
 import SwiftUI
 import Contentful
 import Combine
 
 let cliente = Client(spaceId: "180yowkbgkup", accessToken: "_3K8VDr8-GETKPEA6jYbSXNKwOk2bJw7X6ShXcRDwUk")
 
 func getArray(id: String, completion: @escaping([Entry]) -> ()) {
    let query = Query.where(contentTypeId: id)
    cliente.fetchArray(of: Entry.self, matching: query) { result in
        
        switch result {
        case .success(let array):
            DispatchQueue.main.async {
                completion(array.items)
            }
            completion(array.items)
        case .error(let error):
            print(error)
            
            
        }
    }
 }
 
 
 class CourseStore: ObservableObject {
    @Published var courses: [Course] = courseData
    
    init() {
        let colors = [#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1),#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1),#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1),#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1),#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)]
        var index = 0
        getArray(id: "course") { (items) in
            items.forEach { (item) in
                self.courses.append(Course(
                    title: item.fields["title"] as! String,
                    subTitle: item.fields["subtitle"] as! String,
                    image: item.fields.linkedAsset(at:
                        "image")?.url ?? URL(string: " ")!,
                    logo: #imageLiteral(resourceName: "Logo3"),
                  //  color: colors.randomElement()!,
                    color: colors[index],
                    show: false))
                index = index + 1
            }
        }
    }
 }
