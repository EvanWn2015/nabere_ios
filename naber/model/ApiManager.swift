//
//  ApiManager.swift
//  naber
//
//  Created by 王淳彦 on 2018/7/18.
//  Copyright © 2018年 Melon Ltd. All rights reserved.
//

//
//  ApiManager.swift
//  EvanApp
//
//  Created by 王淳彦 on 2017/8/16.
//  Copyright © 2017年 王淳彦. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ApiManager<T: AnyObject> {
    
    public static func testCallApi (completion : @escaping (Response<AnyObject>) -> ())  {
        let url : String = "https://cloud.culture.tw/frontsite/trans/SearchShowAction.do?method=doFindTypeJ&category=6";
        self.get(url: url, parameters: [:]) { response in
            debugPrint(response)
            completion(Response.parseJson(json: response))
        }
    }
    
    private static func post(url: URLConvertible, parameters: Parameters , completion : @escaping (JSON) -> ())  {
        Alamofire.request(url, method:HTTPMethod.post, parameters:parameters).validate().responseJSON {
            response in
            debugPrint(response.timeline)
//            if response.result.isSuccess {
//                let jsonData = JSON(data: response.data!)
//                debugPrint("success: ")
//                debugPrint(jsonData)
//                completion(jsonData)
//            }else{
//                debugPrint("error: \(String(describing: response.error))")
//                completion(JSON(data: NSData() as Data))
//            }
            
            completion("")
        }
    }
    
    
    private static func get(url: URLConvertible, parameters: Parameters , completion : @escaping (JSON) -> ())  {
        Alamofire.request(url, method:HTTPMethod.get, parameters:parameters).validate().responseJSON {
            response in
            debugPrint(response.timeline)
//            if response.result.isSuccess {
//                let jsonData = JSON(data: response.data!)
//                debugPrint("success: ")
//                debugPrint(jsonData)
//                completion(jsonData)
//            }else{
//                debugPrint("error: \(String(describing: response.error))")
//                completion(JSON(data: NSData() as Data))
//            }
            completion("")
        }
    }
    
    
}
