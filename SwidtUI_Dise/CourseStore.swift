 //
 //  CourseStore.swift
 //  SwidtUI_Dise
 //
 //  Created by roott on 5/16/20.
 //  Copyright © 2020 roott. All rights reserved.
 //
 
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
        getArray(id: "course") { (items) in
            items.forEach { (item) in
                self.courses.append(Course(
                    title: item.fields["title"] as! String,
                    subTitle: item.fields["subtitle"] as! String,
                    image: #imageLiteral(resourceName: "Background1"),
                    logo: #imageLiteral(resourceName: "Logo1"),
                    color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1),
                    show: false))
            }
        }
    }
 }
