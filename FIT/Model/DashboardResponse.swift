//
//  DashboardResponse.swift
//  FIT
//
//  Created by Aka on 31.10.19.
//  Copyright © 2019 Aka. All rights reserved.
//

import Foundation
class DashboardResponse: Decodable {
    var stats: Stats?
}
class Stats: Decodable {
    var approved_count: Dashboard?
    var waiting_count: Dashboard?
    var future_visits: Dashboard?
    var trial_count: Dashboard?
    var trial_visit_exist_count: Dashboard?
    var trial_visited_count: Dashboard?
    var total_count: DashboardTotal?
    var today_count: DashboardTotal?
    var mobizon_balance: DashboardTotal?
}
