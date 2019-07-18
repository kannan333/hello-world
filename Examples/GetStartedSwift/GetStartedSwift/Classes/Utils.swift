//
//  Utils.swift
//  pepup
//
//  Created by Sudos Tech Pvt Ltd on 28/12/16.
//  Copyright © 2016 Sudos Tech Pvt Ltd. All rights reserved.
//

import Foundation

class Utils {
    
    //MARK:- Dictionary
    
    static func convertDictionaryToJson(dictionary:Dictionary<String,Any>) -> String {
        let requestData = try? JSONSerialization.data(withJSONObject:dictionary, options: .prettyPrinted)
        return String(data: requestData! as Data, encoding: String.Encoding.utf8)!.replacingOccurrences(of: "^\\s*", with: "", options: .regularExpression)
    }
    
    static func convertStringToDictionary(inStr:String) -> Dictionary<String,Any> {
        let dictData = inStr.data(using: String.Encoding.utf8, allowLossyConversion: false)
        if (dictData?.count)! <= 0 {return [:]}
        let dictJSON = try? JSONSerialization.jsonObject(with: dictData!, options: JSONSerialization.ReadingOptions.allowFragments) as! Dictionary<String,Any>
        return dictJSON!
    }
    
    //MARK:- Array
    
    static func convertArrayToJson(array:Array<AnyObject>) -> String {
        let jsonData = try? JSONSerialization.data(withJSONObject: array, options: JSONSerialization.WritingOptions.prettyPrinted)
        return String(data: jsonData!, encoding: String.Encoding.utf8)!
    }
    
    static func convertStringToArray(inStr:String) -> Array<AnyObject> {
        let arrayData = inStr.data(using: String.Encoding.utf8, allowLossyConversion: false)
        if (arrayData?.count)! <= 0 {return []}
        let arrJSON = try? JSONSerialization.jsonObject(with: arrayData!, options: JSONSerialization.ReadingOptions.allowFragments) as! Array<AnyObject>
        if arrJSON == nil{
            var insteadData = [AnyObject]()
            return insteadData as Array<AnyObject>
        }
        return arrJSON!
    }
}
