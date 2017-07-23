//
//  API.swift
//  TryPra
//
//  Created by Mohamed El-Naggar on 7/19/17.
//  Copyright © 2017 Mohamed El-Naggar. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct URLs {
    
    static let API_URL = "http://0.0.0.0:8080/"
    static let Login = API_URL + "Login"
}

class API {
    
    
    class func tryToLogin(userName: String , passWord: String , completion: @escaping (_ err: Error?)-> Void) {
        
        let parameters: [String: Any] = [
            "userName" : userName ,
            "passWord" : passWord
        ]
        
        Alamofire.request(URLs.Login, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil)
        
        .responseJSON { (response: DataResponse<Any>) in
            
            switch(response.result) {
                
            case .failure(let err):
                print(err)
                completion(err)
                
            case .success(_ ):
                print("DONE")
                completion(nil)
            }
        }
        
        
    }
    
    
    
}
