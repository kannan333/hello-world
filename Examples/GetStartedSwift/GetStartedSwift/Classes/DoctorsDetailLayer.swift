//
//  DoctorsDetailLayer.swift
//  MediTimeDoctor
//
//  Created by BLT0010-MACMINI on 28/12/16.
//  Copyright © 2016 BlisslogixTechnologySolutions. All rights reserved.
//

import Foundation
import Alamofire

class DoctorsDetailLayer: NSObject {
    
    class func getCountries(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_COUNTRIES)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
           // print(parameters)
           // print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_COUNTRIES)")
           // print(headerParameters)
           // print(response)
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
    
    class func getCities(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CITIES)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CITIES)")
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
    
    class func getStates(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_STATES)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print(parameters)
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_STATES)")
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
    
//    class func saveDoctorDetails(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SAVE_DOCTORDETAILS)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SAVE_DOCTORDETAILS)")
//            print(parameters)
//            print(headerParameters)
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                }
//                break
//
//            case .failure(let error):
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
//
//            }
//        }
//    }

    //MARK:- GET SPECIALITY API
    
    class func getSpecility(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SPECIALIZATION)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print(parameters)
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SPECIALIZATION)")
            print(headerParameters)
            //print(response)
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
    
    
//    class func getSubSpecility(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SUB_SPECIALITY)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print(parameters)
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SPECIALITY)")
//            print(headerParameters)
//            //print(response)
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//
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
//
//            }
//        }
//    }
    
//    class func saveMCIDetails(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_MCI_DETAILS)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print(parameters)
//
//             print(response)
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                }
//                break
//
//            case .failure(let error):
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
//
//            }
//        }
//    }
    
//
//    class func saveDoctorExperience(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SAVE_EXPERIENCE)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print(parameters)
//             print(response)
//            print(headerParameters)
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SAVE_EXPERIENCE)")
//
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                }
//                break
//
//            case .failure(let error):
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
//
//            }
//        }
//    }
    
    
    class func personaldetails(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_PERSONAL)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
           
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_PERSONAL)")
            print(parameters)
            print(response)
            print(headerParameters)
            
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

        
    class func professionaldetails(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_PROFESSIONAL)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DOCTOR_PROFESSIONAL)")
            print(parameters)
            print(response)
            print(headerParameters)
            
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
    
    class func getProfessionalDetail(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DOCTOR_PROFESSIONAL)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print(parameters)
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DOCTOR_PROFESSIONAL)")
            print(headerParameters)
            //print(response)
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



    
    
}
