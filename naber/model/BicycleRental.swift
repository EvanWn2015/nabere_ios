//
//  BicycleRental.swift
//  EvanApp
//
//  Created by 王淳彦 on 2017/8/17.
//  Copyright © 2017年 王淳彦. All rights reserved.
//

import Foundation
import SwiftyJSON

class BicycleRental <T: AnyObject> {
    var aren : String!
    var ar : String!
    var sna : String!
    var mday : String!
    var tot : String!
    var lat : String!
    var sbi : String!
    var sareaen : String!
    var bemp : String!
    var sno : String!
    var sarea : String!
    var lng : String!
    var snaen : String!
    var act : String!
    
    
    
    static func parseJson (json : JSON) -> BicycleRental {
        let data = BicycleRental()
        data.aren = json["aren"].string
        data.ar = json["ar"].string
        data.sna = json["sna"].string
        data.mday = json["mday"].string
        data.tot = json["tot"].string
        data.lat = json["lat"].string
        data.sbi = json["sbi"].string
        data.sarea = json["sareaen"].string
        data.bemp = json["bemp"].string
        data.sno = json["sno"].string
        data.sarea = json["sarea"].string
        data.lng = json["lng"].string
        data.snaen = json["snaen"].string
        data.act = json["act"].string
        return data
    }
    
    static func parseJsonArray(json : JSON) -> [BicycleRental]{
        var array : [BicycleRental] = []
        if let items = json.array {
            for item in items {
                array.append(BicycleRental.parseJson(json: item))
            }
        }
        return array
    }
    
    
    
    static func parseParameters(data : BicycleRental) -> [String: Any]{
        let parameters : [String: Any] = [
            "aren" : data.aren,
            "ar" : data.ar,
            "sna" : data.sna,
            "mday" : data.mday,
            "tot" : data.tot,
            "lat" : data.lat,
            "sbi" : data.sbi,
            "sarea" : data.sarea,
            "bemp" : data.bemp,
            "sno" : data.sno,
            "sarea" : data.sarea,
            "lng" : data.lng,
            "snaen" : data.snaen,
            "act" : data.act
        ]
        return parameters
    }
    
    
}

