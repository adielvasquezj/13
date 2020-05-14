//
//  UpdateStore.swift
//  SwidtUI_Dise
//
//  Created by roott on 5/13/20.
//  Copyright © 2020 roott. All rights reserved.
//

import SwiftUI
import Combine


class UpdasteStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
