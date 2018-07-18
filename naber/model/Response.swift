//
//  Response.swift
//  naber
//
//  Created by 王淳彦 on 2018/7/18.
//  Copyright © 2018年 Melon Ltd. All rights reserved.
//

import Foundation
import SwiftyJSON

class Response <T: AnyObject> {
    var success : String!
    var result : Result!
    
    static func parseJson (json : JSON) -> Response {
        let data = Response()
        data.success = json["success"].string
        data.result = Result.parseJson(json : json["result"])
        return data
    }
    
    
    static func parseJsonArray(json : JSON) -> [Response]{
        var array : [Response] = []
        if let items = json.array {
            for item in items {
                array.append(Response.parseJson(json: item))
            }
        }
        return array
    }
    
}

class Result {
    var resource_id : String!
    var limit: Int!
    var total: Int!
    var fields : [AnyObject]!
    var records : [AnyObject]!
    
    
    static func parseJson (json : JSON) -> Result {
        let data = Result()
        data.resource_id = json["resource_id"].string
        data.limit = json["limit"].int
        data.total = json["total"].int
        data.fields = []
        data.records = BicycleRental<AnyObject>.parseJsonArray(json : json["records"])
        return data
    }
    
    
    static func parseJsonArray(json : JSON) -> [Result]{
        var array : [Result] = []
        if let items = json.array {
            for item in items {
                array.append(Result.parseJson(json: item))
            }
        }
        return array
    }
    
}
