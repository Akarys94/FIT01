//
//  Dashboard.swift
//  FIT
//
//  Created by Aka on 31.10.19.
//  Copyright © 2019 Aka. All rights reserved.
//

import Foundation
class Dashboard: Decodable {    
    var name: String
    var color: String
    var value: Int
    
    init (name: String, color: String, value: Int) {
        
        self.name = name
        self.color = color
        self.value = value
    }
    
}
