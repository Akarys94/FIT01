//
//  EventResponse.swift
//  FIT
//
//  Created by Aka on 29.10.19.
//  Copyright © 2019 Aka. All rights reserved.
//

import Foundation

class EventResponse: Decodable {
    var result: Result?
}

class Result: Decodable {
    var total: Int?
    var offset: Int?
    var count: Int?
    var events: [Event]?
}
