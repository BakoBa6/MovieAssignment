//
//  APIRequest.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/6/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class APIRequest{
    static let sharedAPIRequest = APIRequest()
    private init(){
        
    }
    func requestData(fromUrl url:URL,withParameters parameters:[String:String],compilition:@escaping  (JSON?)->Void){
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON(queue: DispatchQueue.global(qos: .userInitiated)) { (response) in
            guard response.result.isSuccess else{
                compilition(nil)
                return
            }
            let json = JSON(response.result.value!)
            compilition(json)
        }
        
    }
    
    
    
}

