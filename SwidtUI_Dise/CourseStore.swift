 //
//  CourseStore.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/16/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI
 import Contentful
 
 let cliente = Client(spaceId: "180yowkbgkup", accessToken: "_3K8VDr8-GETKPEA6jYbSXNKwOk2bJw7X6ShXcRDwUk")

 func getArray() {
    let query = Query.where(contentTypeId: "course")
    cliente.fetchArray(of: Entry.self, matching: query) { result in
        print(result)
    }
 }
