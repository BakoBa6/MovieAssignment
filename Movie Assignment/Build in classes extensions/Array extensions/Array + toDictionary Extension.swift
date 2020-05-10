//
//  Array + toDictionary Extension.swift
//  Movie Assignment
//
//  Created by bako abdullah on 5/10/20.
//  Copyright © 2020 bako abdullah. All rights reserved.
//

import Foundation
extension Array{
    static func toDictionary<key,value>(keyArray:[key],valueArray:[value])->[key:value]?{
        var dictionary:[key:value] = [:]
        if keyArray.count == valueArray.count{
            for i in 0...keyArray.count{
                dictionary = [keyArray[i]:valueArray[i]]
            }
            return dictionary
        }
        else{
            return nil
        }
    }
}
