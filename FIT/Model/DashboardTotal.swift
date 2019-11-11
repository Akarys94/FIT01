//
//  DashboardTotal.swift
//  FIT
//
//  Created by Aka on 01.11.19.
//  Copyright © 2019 Aka. All rights reserved.
//

import Foundation
class DashboardTotal: Decodable {
    var name: String
    var color: String
    var value: String
    
    init (name: String, color: String, value: String) {
        
        self.name = name
        self.color = color
        self.value = value
    }
    
}
