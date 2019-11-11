//
//  EventTableViewCell.swift
//  FIT
//
//  Created by Aka on 29.10.19.
//  Copyright © 2019 Aka. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
   
   
   
    
    
    func setData(event: Event){
     
        
        
       let data = event.title
       let a = data.replacingOccurrences(of: "<[^>]+>", with: "", options: String.CompareOptions.regularExpression, range: nil)
        let b = a.replacingOccurrences(of: "&[^;]+;", with: "", options: String.CompareOptions.regularExpression, range: nil)
        print(b)
        titleLabel.text = b
        timeLabel.text = event.time
        subTitleLabel.text = event.subtitle
        eventImage.image = UIImage(named: event.type)
}
}
