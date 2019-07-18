//
//  ClinicAndAssistantLayer.swift
//  MediTimeDoctor
//
//  Created by Administrator on 24/01/17.
//  Copyright © 2017 BlisslogixTechnologySolutions. All rights reserved.
//

import UIKit
import Alamofire

class ClinicAndAssistantLayer: NSObject {
    
    //MARK:- Home View
    
    class func homeMenuList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_MENU)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//            
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_MENU)")
//            print(parameters)
//            print(response)
//            
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                }
//                break
//                
//            case .failure(let error):
//                
//                let temp:[AnyObject] = []
//                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
//                {
//                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
//                    break
//                }
//                else
//                {
//                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
//                    break
//                }
//            }
//        }
    }
    
    //MARK:- Set Availability
    
    class func getCountryList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_COUNTRIES)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_COUNTRIES)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getStateList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_STATES)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_STATES)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getCityList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CITIES)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CITIES)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getInttervalList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_INTERVAL)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_INTERVAL)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    class func getAvailabilityList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_AVAILABILITY)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_AVAILABILITY)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    class func addNonAvailability(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_NONAVAILABILITY)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_NONAVAILABILITY)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    class func addAvailability(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_AVAILABILITY)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_AVAILABILITY)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    class func updateAvailabilityNew(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.UPDATE_AVAILABILITY)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.UPDATE_AVAILABILITY)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    class func updateNonAvailabilityNew(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.UPDATE_NONAVAILABILITY)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.UPDATE_NONAVAILABILITY)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    class func getWeekDays(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_WEEKDAYS)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_WEEKDAYS)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getClinicName(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINICNAME)", method: .post, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINICNAME)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getSessionName(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SESSION)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SESSION)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func addSession(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_SESSION)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_SESSION)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getAvailability(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
        
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_BOOKINGSLOT)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_BOOKINGSLOT)")
            
            print(parameters)
            
            print(response)
            
            
            
            switch(response.result) {
                
            case .success(_):
                
                if response.result.value != nil{
                    
                    completionHandler(response.result.value as AnyObject, "")
                    
                }
                
                break
                
                
                
            case .failure(let error):
                
                
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
            
        }
        
    }
    
    
    
    class func updateAvailability(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.EDIT_BOOKINGSLOT)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.EDIT_BOOKINGSLOT)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    
    class func deleteAvailableSlot(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DELETE_BOOKINGSLOT)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DELETE_BOOKINGSLOT)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
        }
    }
    
    class func getSlotList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
        
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_BOOKEDSLOT)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_BOOKEDSLOT)")
            
            print(parameters)
            
            print(response)
            
            
            
            switch(response.result) {
                
            case .success(_):
                
                if response.result.value != nil{
                    
                    completionHandler(response.result.value as AnyObject, "")
                    
                }
                
                break
                
                
                
            case .failure(let error):
                
                
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
            
        }
        
    }
    
    class func deletePatientAppt(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
        
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.CANCEL_BOOKEDSLOT)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.CANCEL_BOOKEDSLOT)")
            
            print(parameters)
            
            print(response)
            
            
            
            switch(response.result) {
                
            case .success(_):
                
                if response.result.value != nil{
                    
                    completionHandler(response.result.value as AnyObject, "")
                    
                }
                
                break
                
                
                
            case .failure(let error):
                
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
            
        }
        
    }
    
    //MARK:- Appointment
    
    class func DocotorBookingView(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
        
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DOCTORBOOKINGVIEW)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DOCTORBOOKINGVIEW)")
            
            print(parameters)
            
            print(response)
            
            
            
            switch(response.result) {
                
            case .success(_):
                
                if response.result.value != nil{
                    
                    completionHandler(response.result.value as AnyObject, "")
                    
                }
                
                break
                
                
                
            case .failure(let error):
                
                
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
            
        }
        
    }
    
    class func getInTime(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
        
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_INTIME)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_INTIME)")
            
            print(parameters)
            
            print(response)
            
            
            
            switch(response.result) {
                
            case .success(_):
                
                if response.result.value != nil{
                    
                    completionHandler(response.result.value as AnyObject, "")
                    
                }
                
                break
                
                
                
            case .failure(let error):
                
                
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
                
            }
            
        }
        
    }
    
    //MARK:- MULTI CLINIC
    
    class func getClinicDetails(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINICDETAILS)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINICDETAILS)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    class func getClinicList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINIC)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINIC)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func addClinic(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_CLINIC)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_CLINIC)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func updateClinic(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.EDIT_CLINIC)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.EDIT_CLINIC)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func removeClinic(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.REMOVE_CLINIC)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.REMOVE_CLINIC)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getWalkinCount(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_WALKINCOUNT)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_WALKINCOUNT)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    

   
//MARK:- ASSISTANT
    
    class func getASsistantName(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINICNAME)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINICNAME)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getAssistantList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINIC)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINIC)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func addAssistant(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_CLINIC)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_REGISTER_API)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func getReportCount(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_REPORT_COUNT)", method: .get, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_REPORT_COUNT)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
//    class func getQueriesCount(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_QUERY_COUNT)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_QUERY_COUNT)")
//            print(parameters)
//            print(response)
//
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                }
//                break
//
//            case .failure(let error):
//
//                let temp:[AnyObject] = []
//                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
//                {
//                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
//                    break
//                }
//                else
//                {
//                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
//                    break
//                }
//            }
//        }
//    }

    class func getWalkinAndCompletedCount(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_WALKINCOMPLETED_COUNT)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_WALKINCOMPLETED_COUNT)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    class func searchPatient(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SEARCH_PATIENT)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SEARCH_PATIENT)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    class func searchPatientName(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SEARCH_PATIENTNAME)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SEARCH_PATIENTNAME)")
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    class func addWalkInUser(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_WALKIN)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_WALKIN)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    class func addFamilyUser(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_FAMILY)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_FAMILY)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func addWalkInAppointment(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_WALKINAPPOINTMENT)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_WALKINAPPOINTMENT)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
//    class func WalkDocotorBookingView(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_WALKINAPPOINTMENT)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_WALKINAPPOINTMENT)")
//            print(parameters)
//            print(response)
//
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                }
//                break
//
//            case .failure(let error):
//
//                let temp:[AnyObject] = []
//                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
//                {
//                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
//                    break
//                }
//                else
//                {
//                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
//                    break
//                }
//            }
//        }
//    }
    
    class func getAD(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_AD)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_AD)")
            print(parameters)
            print(headerParameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func postAdCount(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_AD_COUNT)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_AD_COUNT)")
            print(parameters)
            print(headerParameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }
    
    class func checkAccess(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.CHECk_ACCESS_TOKEN)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.CHECk_ACCESS_TOKEN)")
            print(headerParameters)
            print(parameters)
            print(response)
            
            switch(response.result) {
            case .success(_):
                if response.result.value != nil{
                    completionHandler(response.result.value as AnyObject, "")
                    //print(response.result.value)
                }
                break
                
            case .failure(let error):
                
                let temp:[AnyObject] = []
                if let err = error as? URLError, err.code  == URLError.Code.notConnectedToInternet
                {
                    completionHandler( temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
                    break
                }
                else
                {
                    completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                    break
                }
            }
        }
    }

    
}



