//
//  DashboardViewController.swift
//  FIT
//
//  Created by Aka on 31.10.19.
//  Copyright © 2019 Aka. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {

//    private var approvedCount:Dashboard?
    
    @IBOutlet weak var futureValue: UILabel!
    @IBOutlet weak var approvedValue: UILabel!
    @IBOutlet weak var waitingValue: UILabel!
    @IBOutlet weak var trialvalue: UILabel!
    @IBOutlet weak var trialVisitValue: UILabel!
    @IBOutlet weak var trialExistValue: UILabel!
    @IBOutlet weak var buyFreeValue: UILabel!
    @IBOutlet weak var buyTrialValue: UILabel!
    @IBOutlet weak var mobizonValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("AAAAAAAAAAAAAaaa ")
        NetworkService.getData(path: "https://dev.1fit.app/api/dashboard/fake/stats/", completion: { data in
            do {
                let result = try JSONDecoder().decode(DashboardResponse.self, from: data)
                guard let stats = result.stats else {return}
                self.setData(stats: stats)
            } catch{
                print(error)
            }
        })
    }
    func setData(stats: Stats){
        if let approvedCount = stats.approved_count {
            approvedValue.text = String(approvedCount.value)
            print(approvedCount.name, approvedCount.color)
        }
        if let waitingCount = stats.waiting_count {
            waitingValue.text = String(waitingCount.value)
            print(waitingCount.name, waitingCount.color)
        }
        if let futureCount = stats.future_visits {
            futureValue.text = String(futureCount.value)
            print(futureCount.name, futureCount.color)
        }
        if let trialCount = stats.trial_count {
            trialvalue.text = String(trialCount.value)
            print(trialCount.name, trialCount.color)
        }
        if let trialVisitCount = stats.trial_visited_count {
            trialVisitValue.text = String(trialVisitCount.value)
            print(trialVisitCount.name, trialVisitCount.color)
        }
        if let trialExistCount = stats.trial_visit_exist_count{
            trialExistValue.text = String(trialExistCount.value)
            print(trialExistCount.name, trialExistCount.color)
        }
        if let buyFreeCount = stats.total_count {
            buyFreeValue.text = String(buyFreeCount.value)
            print(buyFreeCount.name, buyFreeCount.color)
        }
        if let buyTrialCount = stats.today_count {
            buyTrialValue.text = String(buyTrialCount.value)
            print(buyTrialCount.name, buyTrialCount.color)
        }
        if let mobizonCount = stats.mobizon_balance {
            mobizonValue.text = String(mobizonCount.value)
            print(mobizonCount.name, mobizonCount.color)
        }
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
