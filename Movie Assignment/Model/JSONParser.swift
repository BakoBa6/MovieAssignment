//
//  JSONParser.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/7/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import Foundation
import SwiftyJSON
class JSONParser{
    static let sharedParser = JSONParser()
    func parseJSON(fromJSON Json:JSON?, compilition: @escaping (JSON?)->Void){
        compilition(Json)
    }
}
