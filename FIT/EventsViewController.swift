//
//  EventsViewController.swift
//  FIT
//
//  Created by Aka on 29.10.19.
//  Copyright © 2019 Aka. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    private let reuseIdentifierCell = ""
    private var events = [Event]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 343.0
        tableView.rowHeight = UITableView.automaticDimension
        NetworkService.getData(path: "https://dev.1fit.app/api/dashboard/fake/events/?offset=100&amp;page=100", completion: { data in
            
            do {
                let result = try JSONDecoder().decode(EventResponse.self, from: data)
                guard let events = result.result?.events else {return}                
                self.events = events
                self.tableView.reloadData()
                print(events.count)
            } catch{
                print(error)
            }
        })
        
        
//        for i in 1...10 {
//            events.append(Event(id: i, type: "Type\(i)", time: "time", title: "Title\(i)", subtitle: "Subtitle\(i)"))
//        }
//        tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableviewcell", for: indexPath)
            as? EventTableViewCell
            else {return UITableViewCell()}
        
        let event = events[indexPath.row]
        cell.setData(event:event)
        
        return cell
        
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
