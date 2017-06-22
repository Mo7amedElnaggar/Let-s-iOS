//
//  githubAPI.swift
//  githubAPI
//
//  Created by Mohamed El-Naggar on 6/22/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct API {
    static let api = "https://api.github.com/emojis"
}

class githubAPI {

    class func gitEmojj(completion: @escaping (_ success: Bool , _ data: [(String , String)]?) -> Void) {
        
        Alamofire.request(API.api, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil)
        
        .responseJSON { (response) in
            switch(response.result) {
            case .failure(let error):
                print(error)
                completion(false , nil)
                
            case .success(let val) :
                let json = JSON(val)
                
                var data = [(String , String)]()
                
                json.forEach({ (row) in
                    if data.count < 20 {
                        data.append((row.0 , row.1.string ?? ""))
                    }
                })
                
                completion(true , data)
            }
        }
    }
    
    class func downloadImage(urlString: String , completion: @escaping (_ success: Bool , _ image: UIImage?) -> Void) {
        
        let url = URL(string: urlString)
        
        Alamofire.request(url!).responseData { (response) in
            switch(response.result) {
            case .failure(let error):
                print(error)
                completion(false , nil)
            case .success(_):
                
                let image = UIImage(data: response.data!)
                
                completion(true , image)
                
            }
        }
        
        
    }
    
    
}
