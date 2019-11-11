//
//  Event.swift
//  FIT
//
//  Created by Aka on 29.10.19.
//  Copyright © 2019 Aka. All rights reserved.
//

import Foundation

class Event: Decodable {
    
    var id: Int
    var type: String
    var time: String
    var title: String
    var subtitle: String
    
    init (id: Int, type: String, time: String, title: String, subtitle: String) {
        self.id = id
        self.type = type
        self.time = time
        self.title = title
        self.subtitle = subtitle
    }
    
}
