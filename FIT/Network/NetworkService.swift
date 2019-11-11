//
//  NetworkService.swift
//  FIT
//
//  Created by Aka on 29.10.19.
//  Copyright © 2019 Aka. All rights reserved.
//

import Foundation

class NetworkService {

//    static var shared = NetworkService()
    
    static func getData(path: String, completion: @escaping(Data) -> ()) {
        
        guard  let url = URL(string: path) else {return}
        
        let session = URLSession.shared
        session.dataTask(with: url){
            data, response, _ in
            
            guard let data = data else {return}
            DispatchQueue.main.async {
                completion(data)
            }
        }.resume()
        
    }
}
