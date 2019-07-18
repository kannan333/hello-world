//
//  PrescriptionLayer.swift
//  MediTimeDoctor
//
//  Created by BLT0002-MACBK on 29/03/17.
//  Copyright © 2017 BlisslogixTechnologySolutions. All rights reserved.
//

import UIKit
import Alamofire

class PrescriptionLayer: NSObject {
    
    //Mark AddReferral
    
    class func getReferralList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_REFERRAL)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_REFERRAL)")
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
    
    class func addReferral(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_REFERRAL)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_REFERRAL)")
//            print(headerParameters)
//            print(parameters)
//            print(response)
//
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                    //print(response.result.value)
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
    
    class func addDoctorReferral(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_REFERRALDOCTOR)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_REFERRALDOCTOR)")
//            print(headerParameters)
//            print(parameters)
//            print(response)
//
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                    //print(response.result.value)
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
    
    class func savePrescriptionTemplate(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SAVE_TEMPLATE)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_PRESCRIPTIONSUMMARY)")
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
    class func loadPrescriptionTemplate(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.LOAD_TEMPLATE)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_PRESCRIPTIONSUMMARY)")
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
    
//    class func confirmPrescriptionTemplate(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.CONFIRM_TEMPLATE)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_PRESCRIPTIONSUMMARY)")
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
    
    
    class func addReferralDocNew(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_REFERRALNEW)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_REFERRALNEW)")
//            print(headerParameters)
//            print(parameters)
//            print(response)
//
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                    //print(response.result.value)
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
    class func delReferralDoc(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DEL_REFFERAL)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { response in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.DEL_REFFERAL)")
//            print(headerParameters)
//            print(parameters)
//            print(response)
//
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                    //print(response.result.value)
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
    
    
    class func editNewReferral(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.EDIT_REFERRALDOCTOR)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.EDIT_REFERRALDOCTOR)")
//            print(headerParameters)
//            print(parameters)
//            print(response)
//
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                    //print(response.result.value)
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
    
    class func editMediDoctorReferral(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.EDIT_MEDIREFERRALDOCTOR)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.EDIT_MEDIREFERRALDOCTOR)")
//            print(headerParameters)
//            print(parameters)
//            print(response)
//
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                    //print(response.result.value)
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
    
    class func searchReferral(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SEARCH_REFERRAL)", method: .post, parameters: parameters as? Parameters, encoding:URLEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.SEARCH_REFERRAL)")
//            print(parameters)
//            print(response)
//
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                    //print(response.result.value)
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
    
    class func getFollowupSlot(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_FOLLOWUPSLOT)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_FOLLOWUPSLOT)")
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
    class func loadTemplate(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_LOADTEMPLATE)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_LOADTEMPLATE)")
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
    class func getAdviceList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_ADVICELIST)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_ADVICELIST)")
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
    class func getFollowUp(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_FOLLOWUPLIST)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_FOLLOWUPLIST)")
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
    class func getReferTo(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_REFERTOLIST)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_REFERTOLIST)")
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
    class func bookAppointment(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_BOOKAPPOINTMENT)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_BOOKAPPOINTMENT)")
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
    
    //MARK:- P1
    
    class func getPatientInformation(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_PATIENTINFORMATION)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_PATIENTINFORMATION)")
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
    
    class func getPatientHistory(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_PATIENTHISTORY)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_PATIENTHISTORY)")
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
    
//    class func getSpecialCode(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SPECIALCODE)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SPECIALCODE)")
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
    
    
    // Changes
    class func getHistoryRiskAutofill(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_HISTORYRISKAUTOFILL)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_HISTORYRISKAUTOFILL)")
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
    class func getSymtoms(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SYMTOMS)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SYMTOMS)")
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
    class func getSymtomsDefault(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SYMTOMSDEFAULT)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SYMTOMSDEFAULT)")
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
//    class func getFollowUpAutoFill(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_FOLLOWUPAUTOFILL)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { response in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_FOLLOWUPAUTOFILL)")
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
//    class func getNatures(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_NATURES)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_NATURES)")
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
    
    class func getSeverity(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SEVERITY)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SEVERITY)")
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
    
    class func getDuration(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DURATION)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DURATION)")
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
    
//    class func getRisks(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_RISKS)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_RISKS)")
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
    
//    class func getClinicalExamination(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINICALEXAMINATION)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINICALEXAMINATION)")
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
//
    class func postFamilyMembers(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
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
//    class func getAllergy(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_ALLERGY)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_ALLERGY)")
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
    
    class func getVitals(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_VITALS)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_VITALS)")
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
    
    class func insertPrescriptionOne(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_PRESCRIPTION1)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_PRESCRIPTION1)")
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
    class func insertPrescriptionTwo(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_PRESCRIPTION2)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_PRESCRIPTION2)")
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
    class func getLabAndDiagnostic(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_PREDATAFORDISEASE)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.ADD_PREDATAFORDISEASE)")
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
   
    
    
    class func getNotes(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_NOTES)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_NOTES)")
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
    class func getChoice(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CHOICELIST)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CHOICELIST)")
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
    class func getTreatmentPlan(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_TREATMENTS)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_TREATMENTS)")
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
    //MARK:- P2
    
    class func postDoctorQuestion(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_DOCTORQUESTION)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_DOCTORQUESTION)")
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
    
    class func searchQuestion(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SEARCHQUESTION)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON{ response in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_SEARCHQUESTION)")
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
    
    class func postPrimaryDiseases(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_PRIMARYDISEASES)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { response in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_PRIMARYDISEASES)")
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
    
    class func getDiseasesList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DISEASELIST)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DISEASELIST)")
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
    
    class func postDrugsLabs(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.CONFIRM_PRESCRIPTION)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.CONFIRM_PRESCRIPTION)")
            print(headerParameters)
            print(parameters)
            print(response)
            "P2 Json Val\(Utils.convertDictionaryToJson(dictionary: parameters as! Dictionary<String, Any>))"
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
    
    class func getLabList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_LABLIST)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_LABLIST)")
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
    
    class func getDiagnosisList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DIAGNOSISLIST)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DIAGNOSISLIST)")
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
    
    class func getDrugList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DRUGLIST)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_DRUGLIST)")
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
    
//    class func getDrugComboLong(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL1)"+"\(ConfigDoctor.GET_COMBODRUGLONG)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//            
//            print("\(ConfigDoctor.BASE_URL1)"+"\(ConfigDoctor.GET_COMBODRUGLONG)")
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
    
    class func getFrequency(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_FREQUENCYLIST)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_FREQUENCYLIST)")
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
    
    class func getRoute(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_ROUTELIST)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_ROUTELIST)")
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
    
    class func postSponsoredDrugs(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_ALTERNATESPONSOREDDRUGS)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_ALTERNATESPONSOREDDRUGS)")
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
    class func postStrength(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_BRANDDRUGS)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_BRANDDRUGS)")
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
    class func getGenericList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_GENERICLIST)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_GENERICLIST)")
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
    class func getManufacturerList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_MANUFACTURERLIST)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_MANUFACTURERLIST)")
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
    class func getManufacturerBrandList(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_MANUFACTURERBRANDLIST)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_MANUFACTURERBRANDLIST)")
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
                    completionHandler(temp as AnyObject, UserInstance.userInstace.noNetworkConnectionMesg)
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
    //MARK:- Summary
    
//    class func getClinicTemplate(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINICTEMPLARTE)", method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_CLINICTEMPLARTE)")
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
    
    class func getPrescriptionSummary(parameters:NSDictionary, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_PRESCRIPTIONSUMMARY)", method: .post, parameters: parameters as? Parameters, encoding: JSONEncoding.default, headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.GET_PRESCRIPTIONSUMMARY)")
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
    
//    class func bookingClosePdf(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
//    {
//        
//        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_CLOSEPDF)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
//            
//            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_CLOSEPDF)")
//            print(headerParameters)
//            print(parameters)
//            print(response)
//            
//            switch(response.result) {
//            case .success(_):
//                if response.result.value != nil{
//                    completionHandler(response.result.value as AnyObject, "")
//                    //print(response.result.value)
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
    class func getTemplateAPI(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_GETTEMPLATE)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_GETTEMPLATE)")
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
    class func saveTemplateAPI(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_SAVETEMPLATE)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_SAVETEMPLATE)")
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
    class func prescriptionChoice(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_CHOICE)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_CHOICE)")
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
    
    class func updatePrescriptionSetting(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_UPDATEPRESCRIPTIONSETTINGS)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_UPDATEPRESCRIPTIONSETTINGS)")
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
    
    class func getPrescriptionSetting(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_GETPRESCRIPTIONSETTINGS)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_GETPRESCRIPTIONSETTINGS)")
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
    
    //MARK:- Comments
    
    class func postComments(parameters:AnyObject, headerParameters:NSDictionary, completionHandler: @escaping (_ response:AnyObject, _ error:String) -> Void)
    {
        
        Alamofire.request("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_PRESCRIPTIONCMDS)", method: .post, parameters: parameters as? Parameters, encoding:JSONEncoding.default , headers: headerParameters as? HTTPHeaders).responseJSON { (response:DataResponse<Any>) in
            
            print("\(ConfigDoctor.BASE_URL)"+"\(ConfigDoctor.POST_PRESCRIPTIONCMDS)")
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
